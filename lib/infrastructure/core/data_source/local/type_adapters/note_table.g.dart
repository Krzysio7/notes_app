// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteTableAdapter extends TypeAdapter<NoteTable> {
  @override
  final int typeId = 0;

  @override
  NoteTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteTable(
      id: fields[0] as String,
      content: fields[1] as String,
      creationDate: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, NoteTable obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.creationDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
