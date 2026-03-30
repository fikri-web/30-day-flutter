import 'package:flutter/material.dart';

class JournalCard extends StatelessWidget {
  final String tanggal;
  final String mood;
  final String cerita;

  const JournalCard({
    super.key,
    required this.tanggal,
    required this.mood,
    required this.cerita,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tanggal,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                mood,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            cerita,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.5, // Jarak antar baris teks biar nyaman dibaca
            ),
            maxLines: 3, // Maksimal 3 baris
            overflow: TextOverflow.ellipsis, // Kalau kepanjangan jadi "..."
          ),
        ],
      ),
    );
  }
}