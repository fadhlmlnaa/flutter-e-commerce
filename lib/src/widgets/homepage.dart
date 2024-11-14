import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:heroicons/heroicons.dart';
import 'package:mylearningflutter/src/screens/beranda.dart';
import 'package:mylearningflutter/src/screens/cart_page.dart';
import 'package:mylearningflutter/src/screens/favorite_page.dart';
import 'package:mylearningflutter/src/screens/profile_page.dart';

class THomePage extends StatefulWidget {
  const THomePage({super.key});

  @override
  State<THomePage> createState() => _THomePageState();
}

class _THomePageState extends State<THomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const BerandaPage(),
    const CartPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  final List<String> _pageTitles = [
    'Home',
    'Cart',
    'Favorite',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_pageTitles[_selectedIndex])),
      ),

      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: GNav(
          tabBackgroundColor: Color(0xFFFF660E),
          activeColor: Colors.white,
          padding: EdgeInsets.all(16),
          gap: 8,
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
            _pageController.jumpToPage(index);
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Favorite',
            ),
            GButton(
              icon: Icons.account_circle_rounded,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}