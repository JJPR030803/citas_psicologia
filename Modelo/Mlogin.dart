// ignore: duplicate_ignore
import 'package:hive/hive.dart';

part 'mlogin.g.dart';

// ignore: camel_case_types,
@HiveType(typeId: 0)
class contrasenas extends HiveObject {
  @HiveField(0)
  late String contrasena1;
  @HiveField(1)
  late String contrasena2;
}
