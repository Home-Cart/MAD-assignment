import 'package:flutter/material.dart';
import 'screens/customer_signup_screen.dart';
import 'screens/items_screen.dart';

void main() {
  runApp(HomeCart());
}

class HomeCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ItemsScreen.id,
      routes: {
        CustomerSignupScreen.id: (context) => CustomerSignupScreen(),
        ItemsScreen.id: (context) => ItemsScreen(),
      },
    );
  }
}
