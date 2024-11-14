import 'package:flutter/material.dart';
import 'package:mylearningflutter/src/constant/product.dart';

class FavoritePage extends StatelessWidget {
  final List<Product> favoriteProducts;
  final Function(Product) removeFromFavorite;

  const FavoritePage({
    super.key,
    required this.favoriteProducts,
    required this.removeFromFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return favoriteProducts.isEmpty
        ? const Center(child: Text('No favorites added'))
        : ListView.builder(
      itemCount: favoriteProducts.length,
      itemBuilder: (context, index) {
        final product = favoriteProducts[index];
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
            onPressed: () => removeFromFavorite(product),
          ),
        );
      },
    );
  }
}
