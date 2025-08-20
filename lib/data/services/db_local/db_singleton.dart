import 'dart:io';

import 'package:drizzzle/utils/resource_string.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DbSingleton {
  static final DbSingleton _instance = DbSingleton._internal();
  factory DbSingleton() => _instance;
  DbSingleton._internal();

  Database? _db;
  static const String dbName = "weather.db";

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    String dbPath;
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      sqfliteFfiInit();
      final dbDir = Directory(path.join('.', 'db'));
      if (!await dbDir.exists()) await dbDir.create(recursive: true);
      dbPath = path.join(dbDir.path, DbSingleton.dbName);
      final db = await databaseFactoryFfi.openDatabase(dbPath,
          options: OpenDatabaseOptions(version: 1, onCreate: _onCreate));
      return db;
    } else {
      String dbDir = await getDatabasesPath();
      dbPath = path.join(dbDir, DbSingleton.dbName);
      final db = await openDatabase(dbPath, version: 1, onCreate: _onCreate);
      return db;
    }
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(createCurrentTableExecution);
    await db.execute(createHourlyTableExecution);
    await db.execute(createDailyTableExecution);
  }
}
