import 'package:flutter/material.dart';
import 'package:mylearningflutter/src/constant/product.dart';

class CartPage extends StatelessWidget {
  final List<Product> cartProducts;
  final Function(Product) removeFromCart;

  const CartPage({
    super.key,
    required this.cartProducts,
    required this.removeFromCart,
  });

  @override
  Widget build(BuildContext context) {
    return cartProducts.isEmpty
        ? const Center(child: Text('Your cart is empty'))
        : ListView.builder(
      itemCount: cartProducts.length,
      itemBuilder: (context, index) {
        final product = cartProducts[index];
        return ListTile(
          leading: Image.network(
            product.foto,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(product.namaProduk),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () => removeFromCart(product),
          ),
        );
      },
    );
  }
}
