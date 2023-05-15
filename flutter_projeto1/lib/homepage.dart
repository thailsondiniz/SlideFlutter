import 'package:flutter/material.dart';
import 'package:flutter_projeto1/pages/pages_1.dart';
import 'package:flutter_projeto1/pages/pages_2.dart';
import 'package:flutter_projeto1/pages/pages_3.dart';
import 'package:flutter_projeto1/pages/pages_4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
 final _controller = PageController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor:Colors.deepPurple[200],
        elevation: 0,
        centerTitle: true,
        title:const Text(
          'S L I D E'
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height:500,
            child:PageView(
              controller: _controller,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),

          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
              //verticalOffset:50,
              jumpScale:3,
            ),
            ),
        ],
      ),
    );
  }
}

