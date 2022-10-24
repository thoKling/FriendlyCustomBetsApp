import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:friendly_custom_bets_app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Set orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const FriendlyCustomBetsApp());
}
