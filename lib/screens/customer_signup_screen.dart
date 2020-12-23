import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_cart/components/rounded_buttons.dart';
import 'package:home_cart/constants.dart';

class CustomerSignupScreen extends StatefulWidget {
  static const String id = 'customer_signup_screen';
  @override
  _CustomerSignupScreenState createState() => _CustomerSignupScreenState();
}

class _CustomerSignupScreenState extends State<CustomerSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
            child: Material(
              elevation: 30.0,
              borderRadius: BorderRadius.circular(50.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (value) {
                            //TODO: Connect to firebase.
                          },
                          cursorHeight: 25,
                          decoration: kTextFieldDecoration.copyWith(
                              hintText: 'First Name'),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          onChanged: (value) {
                            //TODO: Connect to firebase.
                          },
                          cursorHeight: 25,
                          decoration: kTextFieldDecoration.copyWith(
                              hintText: 'Last Name'),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          onChanged: (value) {
                            //TODO: Connect to firebase.
                          },
                          cursorHeight: 25,
                          decoration: kTextFieldDecoration.copyWith(
                              hintText: 'Email Address'),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          onChanged: (value) {
                            //TODO: Connect to firebase.
                          },
                          cursorHeight: 25,
                          decoration:
                              kTextFieldDecoration.copyWith(hintText: 'ID No'),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          onChanged: (value) {
                            //TODO: Connect to firebase.
                          },
                          cursorHeight: 25,
                          decoration:
                              kTextFieldDecoration.copyWith(hintText: 'City'),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          onChanged: (value) {
                            //TODO: Connect to firebase.
                          },
                          cursorHeight: 25,
                          decoration: kTextFieldDecoration.copyWith(
                              hintText: 'Favorite Supermarket'),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          onChanged: (value) {
                            //TODO: Connect to firebase.
                          },
                          cursorHeight: 25,
                          decoration: kTextFieldDecoration.copyWith(
                              hintText: 'Payment Method'),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          onChanged: (value) {
                            //TODO: Connect to firebase.
                          },
                          cursorHeight: 25,
                          decoration: kTextFieldDecoration.copyWith(
                              hintText: 'Password'),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          onChanged: (value) {
                            //TODO: Connect to firebase.
                          },
                          cursorHeight: 25,
                          decoration: kTextFieldDecoration.copyWith(
                              hintText: 'Confirm Password'),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        RoundedButton(
                          title: 'Sign Up',
                          buttonColor: Colors.green,
                          onPressed: null,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
