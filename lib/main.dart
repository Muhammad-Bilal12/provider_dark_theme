import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_tut3/addtocart/provider/cart_provider.dart';

import 'addtocart/view/add_to_cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return CartProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AddCartView(),
      ),
    );
  }
}
