import 'package:isar/isar.dart';

part 'refill.g.dart';

@collection
class Refill {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  @Index(type: IndexType.value)
  DateTime? date;
  int? volume;
  int? odo;
}
