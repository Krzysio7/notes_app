import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/common/utils/hive_util.dart';

abstract class HiveLocalDataSourceProxy<TableType, DtoType> {
  HiveLocalDataSourceProxy({
    required this.boxName,
    required this.adapterToRegister,
  }) {
    registerAdapter<TableType>(adapterToRegister);
  }

  final TypeAdapter<TableType> adapterToRegister;
  final String boxName;
  late final Future<Box<TableType>> boxInstance;

  void _init() {
    boxInstance = Hive.openBox(boxName);
  }

  Future<Box<TableType>> get getBoxInstance async => _openBox();

  Future<List<DtoType>> getFormattedData();

  Future<void> insertOrUpdateAll(List<DtoType> data);

  Future<Box<TableType>> _openBox() async {
    final Box<TableType> box = await boxInstance;
    if (box == null || !box.isOpen) {
      _init();
      return boxInstance;
    }
    return box;
  }

  Future<TableType?> get(String key) async {
    final Box<TableType> box = await _openBox();
    return box.get(key);
  }

  Future<List<TableType>> getAll() async {
    final Box<TableType> box = await _openBox();
    return box.toMap().values.toList();
  }

  Future<void> put(String key, TableType value) async {
    final Box<TableType> box = await _openBox();
    await box.put(key, value);
  }

  Future<void> putAll(Map<String, TableType> items) async {
    final Box<TableType> box = await _openBox();
    await box.putAll(items);
  }

  Future<void> delete(String key) async {
    final Box<TableType> box = await _openBox();
    await box.delete(key);
  }

  Future<void> deleteAll() async {
    final Box<TableType> box = await _openBox();
    final List<String> boxKeys = await keys;
    await box.deleteAll(boxKeys);
  }

  Future<List<String>> get keys async {
    final Box<TableType> box = await _openBox();
    final List<String> result = box.keys.map((k) => k.toString()).toList();
    return result;
  }
}
