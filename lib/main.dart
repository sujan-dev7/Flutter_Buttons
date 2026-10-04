import 'package:flutter/material.dart';
import 'button_gallery.dart';
import 'add_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material Button',

      initialRoute: '/',

      routes: {
        '/': (context) => const ButtonGallery(),
        '/add': (context) => const AddScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}