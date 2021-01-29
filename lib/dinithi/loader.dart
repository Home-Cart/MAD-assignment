import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Loader extends StatefulWidget {
  static const String id = 'loader';

  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "image/loading/61925582-assortment-of-the-fresh-vegetables-on-wooden-background.jpg"),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightGreenAccent.withOpacity(0.9),
                Colors.lightGreen.withOpacity(0.9),
              ],
              stops: [0.0, 1],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(150.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 75.0,
                    backgroundImage:
                        AssetImage("image/loading/Screenshot (78).png"),
                  ),
                  Padding(padding: EdgeInsets.all(7)),
                  LinearPercentIndicator(
                    width: 110.0,
                    animation: true,
                    lineHeight: 5.0,
                    animationDuration: 5000,
                    percent: 1.0,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.white,
                  ),
                  Padding(padding: EdgeInsets.all(6)),
                  Text(
                    'Loading...',
                    style: new TextStyle(fontSize: 15, color: Colors.white),
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
