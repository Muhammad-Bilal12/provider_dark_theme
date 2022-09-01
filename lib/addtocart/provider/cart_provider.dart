import 'package:flutter/foundation.dart';

class CartProvider extends ChangeNotifier {
  List<int> _selectedCart = [];
  List<int> get selectedCart => _selectedCart;

  void addtoCart(val) {
    if (selectedCart.contains(val)) {
      selectedCart.remove(val);
      notifyListeners();
    } else {
      selectedCart.add(val);
      notifyListeners();
    }

    // if (isSelected == true) {
    //   selectedCart.add(val);
    //   notifyListeners();
    // } else {
    //   selectedCart.remove(val);
    //   notifyListeners();
    // }
    // print(selectedCart);
  }
}
