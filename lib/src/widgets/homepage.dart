import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mylearningflutter/src/screens/beranda.dart';
import 'package:mylearningflutter/src/screens/cart_page.dart';
import 'package:mylearningflutter/src/screens/favorite_page.dart';
import 'package:mylearningflutter/src/constant/product.dart';

class THomePage extends StatefulWidget {
  const THomePage({super.key});

  @override
  State<THomePage> createState() => _THomePageState();
}

class _THomePageState extends State<THomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  List<Product> cartProducts = [];
  List<Product> favoriteProducts = [];

  void addToCart(Product product) {
    setState(() {
      cartProducts.add(product);
    });
  }

  void addToFavorite(Product product) {
    setState(() {
      favoriteProducts.add(product);
    });
  }

  void removeFromCart(Product product) {
    setState(() {
      cartProducts.remove(product);
    });
  }

  void removeFromFavorite(Product product) {
    setState(() {
      favoriteProducts.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
            Center(child: Text(['Home', 'Cart', 'Favorite'][_selectedIndex])),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          BerandaPage(
            addToCart: addToCart,
            addToFavorite: addToFavorite,
            cartProducts: cartProducts,
            favoriteProducts: favoriteProducts,
          ),
          CartPage(
            cartProducts: cartProducts,
            removeFromCart: removeFromCart,
          ),
          FavoritePage(
            favoriteProducts: favoriteProducts,
            removeFromFavorite: removeFromFavorite,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
        child: GNav(
          tabBackgroundColor: const Color(0xFFFF660E),
          activeColor: Colors.white,
          padding: const EdgeInsets.all(16),
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
          ],
        ),
      ),
    );
  }
}
