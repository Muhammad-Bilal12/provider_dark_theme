import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_tut3/addtocart/provider/cart_provider.dart';
import 'package:provider_practice_tut3/addtocart/view/cart_item.dart';

import 'custom_drawer.dart';

class AddCartView extends StatefulWidget {
  const AddCartView({Key? key}) : super(key: key);

  @override
  State<AddCartView> createState() => _AddCartViewState();
}

class _AddCartViewState extends State<AddCartView> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Addtocart'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const CartItem();
              }));
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item ${index}'),
              trailing: IconButton(
                onPressed: () {
                  cartProvider.addtoCart(index);
                  print(cartProvider.selectedCart);
                },
                icon: cartProvider.selectedCart.contains(index)
                    ? const Icon(Icons.shopping_cart)
                    : const Icon(Icons.shopping_cart_outlined),
              ),
            );
          }),
      drawer: CustomDrawer(),
    );
  }
}
