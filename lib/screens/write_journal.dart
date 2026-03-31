import 'package:flutter/material.dart';

class WriteJournalPage extends StatelessWidget {
  const WriteJournalPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title:  const Text(
          'Tulis Jurnal',
          style: TextStyle(letterSpacing: 1.5, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                maxLines: null,
                expands: true,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
                decoration: const InputDecoration(
                  hintText: 'Apa yang kamu rasakan hari ini? Tulis ceritamu di sini...',
                  hintStyle: TextStyle(color: Colors.white38, fontStyle: FontStyle.italic),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2A2A2A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Simpan Catattan',
                  style: TextStyle(
                    color: Colors.white70,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],      
        ),
      ),
     );
  }
}