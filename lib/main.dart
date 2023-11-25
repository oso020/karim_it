import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karim_it/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    home:const SplashView() ,
    );
  }
}

const kPrimaryColor = Color(0xff100B20);

