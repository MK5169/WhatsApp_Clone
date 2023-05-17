import 'package:flutter/material.dart';
import 'package:whatsapp_cloned/common/theme/dark_theme.dart';
import 'package:whatsapp_cloned/common/theme/light_theme.dart';
import 'package:whatsapp_cloned/feature/welcome/pages/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Messenger',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const WelcomeScreen(),
    );
  }
}
