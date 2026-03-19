import 'package:flutter/material.dart';
import 'package:q_lamansi_app/views/widgets/cards/scan_card.dart';
import 'package:q_lamansi_app/views/widgets/cards/stat_card.dart';
import 'package:q_lamansi_app/views/services/notification_service.dart';
import 'camera_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with logo and notification
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFD4E157),
                        ),
                        child: Center(
                          child: Text(
                            '👨‍🌾',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Q-Lamansi',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => NotificationService.openNotifications(context),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Icon(Icons.notifications, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Greeting and location
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good morning, Nadnad!',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color(0xFF8BC34A),
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Jaro, Leyte • Monday, Oct 23',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color(0xFF9CAF88),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Stats cards
              Row(
                children: const [
                  Expanded(
                    child: StatCard(
                      icon: '📊',
                      label: 'Scans Today',
                      value: '24',
                      change: '+3',
                      isPositive: true,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: StatCard(
                      icon: '🍃',
                      label: 'Avg. Maturity',
                      value: '88%',
                      change: '+2%',
                      isPositive: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Start scanning button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CameraScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xBFD4E157),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.camera_alt, color: Colors.black, size: 24),
                      const SizedBox(width: 12),
                      Text(
                        'START SCANNING',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Recent Scans header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Scans',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'View All',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF9CAF88),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Recent scans list
              const ScanCard(
                sampleNumber: '#1024',
                status: 'HEALTHY',
                match: '98% Match',
                time: '10:45 AM',
                color: Color(0xFF2E7D32),
                fruitEmoji: '🌿',
              ),
              const SizedBox(height: 12),
              const ScanCard(
                sampleNumber: '#1023',
                status: 'WILTING',
                match: '82% Match',
                time: '09:12 AM',
                color: Color(0xFFBF360C),
                fruitEmoji: '🍂',
              ),
              const SizedBox(height: 12),
              const ScanCard(
                sampleNumber: '#1022',
                status: 'YELLOWING',
                match: '91% Match',
                time: 'Yesterday',
                color: Color(0xFFF9A825),
                fruitEmoji: '🍋',
              ),
            ],
          ),
        ),
      ),
    );
  }
}