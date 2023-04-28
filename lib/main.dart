import 'package:api_assignment/controller/homeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        )
      ],
      child: const MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
