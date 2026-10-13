import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.wb_sunny_outlined),
          selectedIcon: const Icon(Icons.wb_sunny, color: AppTheme.primaryColor),
          label: 'Reflect',
        ),
        NavigationDestination(
          icon: const Icon(Icons.favorite_outline),
          selectedIcon: const Icon(Icons.favorite, color: AppTheme.primaryColor),
          label: 'Gratitude',
        ),
        NavigationDestination(
          icon: const Icon(Icons.history_edu_outlined),
          selectedIcon: const Icon(Icons.history_edu, color: AppTheme.primaryColor),
          label: 'Timeline',
        ),
        NavigationDestination(
          icon: const Icon(Icons.calendar_today_outlined),
          selectedIcon: const Icon(Icons.calendar_today, color: AppTheme.primaryColor),
          label: 'Calendar',
        ),

        ],
      ),
    );
  }
}
