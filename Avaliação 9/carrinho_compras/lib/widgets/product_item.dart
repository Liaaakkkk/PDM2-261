import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../providers/cart_provider.dart';

class ProductItem extends StatelessWidget {

  final Product product;

  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(8),

      child: ListTile(
        title: Text(product.name),

        subtitle: Text(
          'R\$ ${product.price.toStringAsFixed(2)}',
        ),

        trailing: ElevatedButton(
          child: const Text('Adicionar'),

          onPressed: () {
            context
                .read<CartProvider>()
                .addProduct(product);
          },
        ),
      ),
    );
  }
}