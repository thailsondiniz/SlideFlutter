import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 400,
              child: Lottie.network(
                  'https://assets9.lottiefiles.com/packages/lf20_shtu48j0.json'),
              color: Colors.deepPurple[400],
            ),
          ),
        ));
  }
}
