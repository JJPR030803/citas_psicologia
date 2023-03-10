// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Mlogin.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class contrasenasAdapter extends TypeAdapter<contrasenas> {
  @override
  final int typeId = 0;

  @override
  contrasenas read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return contrasenas()
      ..contrasena1 = fields[0] as String
      ..contrasena2 = fields[1] as String;
  }

  @override
  void write(BinaryWriter writer, contrasenas obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.contrasena1)
      ..writeByte(1)
      ..write(obj.contrasena2);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is contrasenasAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
