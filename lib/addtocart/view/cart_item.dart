import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    final cartItem = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Item'),
      ),
      body: ListView.builder(
          itemCount: cartItem.selectedCart.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item ' + cartItem.selectedCart[index].toString()),
              trailing: IconButton(
                onPressed: () {
                  cartItem.addtoCart(cartItem.selectedCart[index]);
                },
                icon: Icon(Icons.shopping_cart),
              ),
            );
          }),
    );
  }
}
