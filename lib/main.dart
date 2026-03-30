import 'package:flutter/material.dart';
import 'widgets/journal_card.dart';

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
          backgroundColor: Colors.transparent,
          elevation: 0,
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
          style: TextStyle(letterSpacing: 2.0,),
        ),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          SizedBox(height: 10),
          JournalCard(
            tanggal: '28 MARET 2026', 
            mood: '🌧️', 
            cerita: 'Hujan deras malam ini. Ngerjain tugas sambil dengerin lagu lo-fi lumayan bikin tenang, walaupun banyak bug di kode.'
            ),
            JournalCard(tanggal: '27 MARET 2026', 
            mood: '🍵', 
            cerita: 'Mulai tantangan 30 hari belajar Flutter. Setup awal berjalan lancar, semoga bisa konsisten hijaukan GitHub tiap hari.'
            ),
            JournalCard(tanggal: '26 MARET 2026', 
            mood: '🎧', 
            cerita: 'Terlalu banyak pikiran. Memutuskan untuk keluar sebentar cari angin malam. Besok harus lebih produktif.')
        ],
      ),
    );
  }
}
