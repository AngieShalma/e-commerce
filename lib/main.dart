import 'package:camp_code_project/screens/chat_support_screen.dart';
import 'package:camp_code_project/screens/list.dart';
import 'package:camp_code_project/screens/notification_screen.dart';
import 'package:camp_code_project/screens/payment_screen.dart';
import 'package:camp_code_project/screens/profile_screen.dart';
import 'package:camp_code_project/screens/rate_product_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home://chatSupportScreen()
      //notificationScreen()
   paymentScreen()
      // list(),
    );
  }
}

