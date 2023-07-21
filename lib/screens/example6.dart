import 'dart:math';

import 'package:flutter/material.dart';

class Example6 extends StatefulWidget {
  const Example6({Key? key}) : super(key: key);

  @override
  State<Example6> createState() => _Example6State();
}

class _Example6State extends State<Example6>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> _scaleAnimation;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _scaleAnimation = Tween<double>(begin: 1, end: 20)
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 6'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.forward();
            controller.reverse();
          },
          child: AnimatedScale(
              scale: 1,
              duration: Duration(seconds: 1),
              child: ScaleTransition(
                  scale: _scaleAnimation, child: Icon(Icons.reddit)))),
      body: Center(
        child: TweenAnimationBuilder(
          builder: (context, value, child) => Transform.rotate(
            angle: value,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterLogo(
                      size: 150,
                    ),
                    FlutterLogo(
                      size: 150,
                    ),
                  ],
                ),
                FlutterLogo(
                  size: 150,
                ),
              ],
            ),
          ),
          tween: Tween<double>(begin: 0, end: 2 * pi),
          curve: Curves.linear,
          duration: Duration(seconds: 2),
        ),
      ),
    );
  }
}
