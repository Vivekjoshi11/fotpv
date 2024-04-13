import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fotpv/MyHome.dart';
import 'package:fotpv/camera.dart';
import 'package:fotpv/facebookauth.dart';
import 'package:fotpv/log_in.dart';
import 'package:fotpv/otp.dart';
import 'package:fotpv/phone.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const log_in(),
      // initialRoute: "/home",
      routes: {
        "/phone": (context) => const Phone(),
        "/otp": (context) => const Otp(),
        "/home": (context) => const MyHome(),
        "/camera":(context) => const CameraPage(),
        "/fauth": (context) => const Fauth(),
      },
    );
  }
  
}
