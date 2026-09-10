import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'database_schema.dart';

class DatabaseHelper{
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase;
    return _database!;
  }

  static Future<Database> get _initDatabase async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'calqiva.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _getDatabase,
    );
  }

  static Future<void> _getDatabase(
    Database db,
    int version
  ) async {

    await db.execute(
      DatabaseSchema.createTopicsTable
    );

    await db.execute(
      DatabaseSchema.createSubTopicsTable
    );

    await db.execute(
      DatabaseSchema.createLessonsTable
    );

    await db.execute(
      DatabaseSchema.createLessonBlocksTable
    );

    await db.execute(
      DatabaseSchema.createHeadingBlocksTable
    );

    await db.execute(
      DatabaseSchema.createParagraphBlocKsTable
    );

    await db.execute(
      DatabaseSchema.createParagraphBlockLinksTable
    );

    await db.execute(
      DatabaseSchema.createTextPartsTable
    );

    await db.execute(
      DatabaseSchema.createExampleBlocksTable
    );

    await db.execute(
      DatabaseSchema.createExampleSolutionsTable
    );

    await db.execute(
      DatabaseSchema.createMessageBlocksTable
    );

    await db.execute(
      DatabaseSchema.createQuizsTable
    );

    await db.execute(
      DatabaseSchema.createQuizSolutionTable
    );
  }
}