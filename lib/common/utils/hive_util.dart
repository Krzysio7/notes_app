import 'package:hive_flutter/hive_flutter.dart';

Future<void> initDatabase() async {
  Hive.initFlutter();
}

void registerAdapter<Type>(TypeAdapter<Type> adapter) {
  if (!Hive.isAdapterRegistered(adapter.typeId)) {
    Hive.registerAdapter(adapter);
  }
}
