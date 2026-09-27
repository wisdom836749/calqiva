import 'package:sqflite/sqflite.dart';
import 'surds/surds_seed.dart';

class DatabaseSeed{
  static Future<void> seed (
    Database db,
  ) async {
    await SurdsSeed.seed(db);
  }
}