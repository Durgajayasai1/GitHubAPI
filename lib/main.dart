import 'package:flutter/material.dart';
import 'package:githubapi/Screens/connect_screen.dart';
import 'package:githubapi/Screens/source_code_viewer.dart';
import 'package:githubapi/Screens/user_repo.dart';
import 'package:githubapi/Screens/user_repositories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub API',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: ConnectScreen(),
      routes: {
        '/user_repositories': (context) => const UserRepositories(),
        '/user_repo': (context) => const UserRepo(),
        '/source_code': (context) => const SourceCodeViewer(),
      },
    );
  }
}
