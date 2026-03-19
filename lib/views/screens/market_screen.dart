import 'package:flutter/material.dart';
import 'package:q_lamansi_app/views/widgets/cards/stat_card.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Market',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Current calamansi market data',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF9CAF88),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: const [
                Expanded(
                  child: StatCard(
                    icon: '💰',
                    label: 'Price / kg',
                    value: '₱35',
                    change: '+5',
                    isPositive: true,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: StatCard(
                    icon: '📦',
                    label: 'Demand',
                    value: 'High',
                    change: '+12%',
                    isPositive: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Market Trend',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Calamansi prices are trending upward this season. '
                    'Fully ripe grades command premium pricing at local markets.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                      height: 1.5,
                    ),
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