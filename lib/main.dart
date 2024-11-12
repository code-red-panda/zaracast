import 'package:flutter/material.dart';
import 'package:zaracast/src/app.dart';
import 'package:zaracast/src/core/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  setupServiceLocator();
  
  runApp(const MyApp());
}
