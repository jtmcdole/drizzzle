import 'package:drizzzle/app.dart';
import 'package:drizzzle/config/dependencies.dart';
import 'package:drizzzle/data/services/db_local/db_client.dart';
import 'package:drizzzle/data/services/db_local/db_singleton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dbSingleton = DbSingleton();
  final db = await dbSingleton.database;
  final DbClient dbClient = DbClient(db: db);
  final pref = await SharedPreferences.getInstance();

  runApp(
    MultiProvider(
      providers: providers(dbClient, pref),
      child: const App(),
    ),
  );
}
