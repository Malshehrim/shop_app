import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: GNav(
        tabBorderRadius: 16,
        // padding: const EdgeInsets.symmetric(vertical: 50),
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        color: Colors.grey[400],
        tabActiveBorder: Border.all(
          color: Colors.white,
        ),
        onTabChange: (value) => onTabChange!(value),
        tabBackgroundColor: Colors.grey.shade100,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
            gap: 8,
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Card',
            gap: 8,
          ),
        ],
      ),
    );
  }
}
