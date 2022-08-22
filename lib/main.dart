import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:emergency_app/screens/home_screen.dart';
import 'package:emergency_app/providers/custom_button_provider.dart';
import 'package:emergency_app/providers/sizes_provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => SizesProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => CustomButtonProvider()),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
