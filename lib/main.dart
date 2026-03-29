import 'package:flutter/material.dart';

void main() {
  runApp(const MidnightLinesApp());
}

class MidnightLinesApp extends StatelessWidget {
  const MidnightLinesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midnight Lines',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0D0D0D),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      home: const BerandaJurnal(),
    );
  }
}

class BerandaJurnal extends StatelessWidget {
  const BerandaJurnal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Midnight Lines',
          style: TextStyle(letterSpacing: 2.0),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Belum ada cerita malam ini...',
          style: TextStyle(
            color: Colors.white54,
            fontStyle: FontStyle.italic,
          ),
          ),
      ),
    );
  }
}
