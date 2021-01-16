import 'package:flutter/material.dart';
import 'screens/customer_signup_screen.dart';
import 'screens/items_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomeCart());
}

class HomeCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CustomerSignupScreen.id,
      routes: {
        CustomerSignupScreen.id: (context) => CustomerSignupScreen(),
        ItemsScreen.id: (context) => ItemsScreen(),
      },
    );
  }
}
