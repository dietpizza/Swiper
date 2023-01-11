import 'package:isar/isar.dart';
import 'package:swiper/models/refill.dart';

Isar? isar;

IsarCollection<Refill>? refills;

initDatabase() async {
  isar = await Isar.open([RefillSchema]);
  refills = isar?.collection<Refill>();
}
