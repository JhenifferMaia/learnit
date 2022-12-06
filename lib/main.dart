import 'dart:developer';
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'dart:developer';
import 'package:learnit2/pages/splash/animation.dart';
import 'package:learnit2/pages/Previous/login_page.dart';

FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

Future<void> main() async {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimationPage(page: Loginpage()),
  ));

  WidgetsFlutterBinding.ensureInitialized();
  AndroidInitializationSettings androidSettings = AndroidInitializationSettings("@mipmap/ic_launcher");

  DarwinInitializationSettings iosSettings = DarwinInitializationSettings(
    requestSoundPermission: true,
    requestBadgePermission: true,
    requestCriticalPermission: true,
    requestAlertPermission: true,
  );

  InitializationSettings initializationSettings = InitializationSettings(
    android: androidSettings,
    iOS: iosSettings,
  );

  bool? initialized = await notificationsPlugin.initialize(initializationSettings);

  log("Notifications $initialized");
}
