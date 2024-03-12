import 'package:flutter/material.dart';
import 'package:introduction/carousel_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:introduction/pages/page_1.dart';
import 'package:introduction/pages/page_2.dart';
import 'package:introduction/pages/page_3.dart';
import 'package:introduction/pages/page_4.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 157, 189, 219),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          Expanded(
            child: Center(
              child: SizedBox(
                height: 600,
                child: PageView(
                  controller: _controller,
                  children: const [
                    Page1(),
                    Page2(),
                    Page3(),
                    Page4(),
                  ],
                ),
              ),
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Color.fromARGB(255, 34, 42, 150),
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 20,
              dotWidth: 20,
              spacing: 16,
              jumpScale: 3,
            ),
          ),

          // Button to navigate to CarouselPage
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarouselPage()),
              );
            },
            child: Text('Ver Carrusel'),
          ),
        ],
      ),
    );
  }
}
