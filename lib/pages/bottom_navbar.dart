import 'package:banking_app/pages/home_page.dart';
import 'package:banking_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavApp extends StatefulWidget {
  const BottomNavApp({super.key});

  @override
  State<BottomNavApp> createState() => _BottomNavAppState();
}

class _BottomNavAppState extends State<BottomNavApp> {
  int _currentIndex = 0; // Track selected tab

  // List of pages to show based on selected index
  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const Profile_Page(),
    const ProductsPage(),
    const CartPage(),
  ];

  // Update selected index
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Show selected page content
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black26),
              label: "Home",
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black26),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black26),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.black26),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black26),
            label: "Cart",
          ),
        ],
      ),
      // Add a Drawer
    );
  }
}

// Each page shows a unique text in the center

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Search Page",
        style: TextStyle(fontSize: 24, color: Colors.blue),
      ),
    );
  }
}

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Products Page",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Cart Page",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
