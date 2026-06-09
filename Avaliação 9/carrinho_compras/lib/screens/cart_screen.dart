import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
      ),

      body: Consumer<CartProvider>(
        builder: (context, cart, child) {

          return Column(
            children: [

              Expanded(
                child: ListView.builder(
                  itemCount: cart.items.length,

                  itemBuilder: (context, index) {

                    final product =
                        cart.items[index];

                    return ListTile(
                      title: Text(product.name),

                      subtitle: Text(
                        'R\$ ${product.price.toStringAsFixed(2)}',
                      ),

                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                        ),

                        onPressed: () {
                          cart.removeProduct(
                            product,
                          );
                        },
                      ),
                    );
                  },
                ),
              ),

              Container(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [

                    Text(
                      'Total: R\$ ${cart.totalPrice.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 16),

                    ElevatedButton(
                      onPressed: () {},

                      child: const Text(
                        'Finalizar Compra',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}