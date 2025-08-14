import 'package:drizzzle/utils/resource_string.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

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
    String dbDir = await getDatabasesPath();
    String dbPath = path.join(dbDir, DbSingleton.dbName);

    final db = await openDatabase(dbPath, version: 1, onCreate: _onCreate);

    return db;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(createCurrentTableExecution);
    await db.execute(createHourlyTableExecution);
    await db.execute(createDailyTableExecution);
  }
}
