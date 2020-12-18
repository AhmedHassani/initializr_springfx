import 'package:flutter/material.dart';
import 'package:giesse_app/infrastructure/models/database.dart';

List<Database> databases = [
  Database(
    color: Color.fromRGBO(239, 252, 234, 100),
    name: 'Database 1',
    colorIcon: Color.fromRGBO(67, 202, 91, 1),
  ),
  Database(
    color: Color.fromRGBO(255, 248, 232, 1),
    name: 'Database 2',
    colorIcon: Color.fromRGBO(254, 190, 79, 1),
  ),
  Database(
    color: Color.fromRGBO(250, 242, 255, 1),
    name: 'Database 3',
    colorIcon: Color.fromRGBO(206, 127, 255, 1),
  ),
  Database(
    color: Color.fromRGBO(255, 215, 215, 1),
    name: 'Database 4',
    colorIcon: Color.fromRGBO(254, 58, 59, 1),
  ),
];
