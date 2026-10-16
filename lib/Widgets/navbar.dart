import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;

  const CustomNavbar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        NavigationDestination(icon: Icon(Icons.details), label: 'Detail'),
      ],
    );
  }
}