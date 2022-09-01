import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_tut3/addtocart/provider/cart_provider.dart';
import 'package:provider_practice_tut3/addtocart/provider/dark_mode.dart';

import 'addtocart/view/add_to_cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return CartProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return ThemeProvider();
          },
        ),
      ],
      child: Builder(builder: (BuildContext context) {
        final ThemeProvider themeChanger = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            appBarTheme: AppBarTheme(backgroundColor: Colors.purple),
            iconTheme: IconThemeData(color: Colors.orange),
          ),
          home: AddCartView(),
        );
      }),
      // child: MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   title: 'Flutter Demo',
      //   theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //   ),
      //   home: AddCartView(),
      // ),
    );
  }
}
