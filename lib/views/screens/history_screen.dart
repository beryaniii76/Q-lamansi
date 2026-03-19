import 'package:flutter/material.dart';
import 'package:q_lamansi_app/views/widgets/cards/scan_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Scan History',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'All your previous scans',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF9CAF88),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView(
                children: const [
                  ScanCard(
                    sampleNumber: '#1024',
                    status: 'HEALTHY',
                    match: '98% Match',
                    time: '10:45 AM',
                    color: Color(0xFF2E7D32),
                    fruitEmoji: '🌿',
                  ),
                  SizedBox(height: 12),
                  ScanCard(
                    sampleNumber: '#1023',
                    status: 'WILTING',
                    match: '82% Match',
                    time: '09:12 AM',
                    color: Color(0xFFE65100),
                    fruitEmoji: '🍂',
                  ),
                  SizedBox(height: 12),
                  ScanCard(
                    sampleNumber: '#1022',
                    status: 'YELLOWING',
                    match: '94% Match',
                    time: 'Yesterday',
                    color: Color(0xFFF9A825),
                    fruitEmoji: '🍋',
                  ),
                  SizedBox(height: 12),
                  ScanCard(
                    sampleNumber: '#1021',
                    status: 'PEST/DAMAGED',
                    match: '96% Match',
                    time: 'Yesterday',
                    color: Color(0xFFC62828),
                    fruitEmoji: '🐛',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}