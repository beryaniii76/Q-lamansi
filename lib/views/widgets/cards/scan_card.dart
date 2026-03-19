import 'package:flutter/material.dart';

class ScanCard extends StatelessWidget {
  final String sampleNumber;
  final String status;
  final String match;
  final String time;
  final Color color;
  final String fruitEmoji;

  const ScanCard({
    Key? key,
    required this.sampleNumber,
    required this.status,
    required this.match,
    required this.time,
    required this.color,
    required this.fruitEmoji,
  }) : super(key: key);

  Color get _statusBgColor {
    switch (status) {
      case 'HEALTHY':
        return const Color(0xFFE8F5E9);   // soft green
      case 'WILTING':
        return const Color(0xFFFFF3E0);   // soft orange
      case 'PEST/DAMAGED':
        return const Color(0xFFFFEBEE);   // soft red
      case 'YELLOWING':
        return const Color(0xFFFFFDE7);   // soft yellow
      default:
        return Colors.grey[100]!;
    }
  }

  Color get _statusTextColor {
    switch (status) {
      case 'HEALTHY':
        return const Color(0xFF2E7D32);   // dark green
      case 'WILTING':
        return const Color(0xFFE65100);   // dark orange
      case 'PEST/DAMAGED':
        return const Color(0xFFC62828);   // dark red
      case 'YELLOWING':
        return const Color(0xFFF9A825);   // dark amber
      default:
        return Colors.black87;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          // Fruit image placeholder
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(fruitEmoji, style: const TextStyle(fontSize: 40)),
            ),
          ),
          const SizedBox(width: 16),
          // Sample info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sample $sampleNumber',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: _statusBgColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        status,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: _statusTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      match,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xFF9CAF88),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
              const Icon(Icons.chevron_right, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}