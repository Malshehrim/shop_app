import 'package:flutter/material.dart';
import 'package:stor_app/components/bottom_nav.dart';
import 'package:stor_app/screens/cart_screen.dart';
import 'package:stor_app/screens/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
// the index is control for the bottom bar

  int _slextedIndex = 0;

// this method for  updating the selexted index or page
// when user taps on the bottom bar

  void navigateBar(int index) {
    setState(() {
      _slextedIndex = index;
    });
  }

// pages to navigate

  final List<Widget> _screens = [
    //shope screen
    const ShopScreen(),

    // card screen
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(
                    'lib/images/Nike-Logo.png',
                    color: Colors.white,
                  ),
                ),

                const Divider(
                  color: Colors.amber,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    'home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                //   const SizedBox(height: 29),
                const ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              // const Drawer();
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBar(index),
      ),
      body: _screens[_slextedIndex],
    );
  }
}
