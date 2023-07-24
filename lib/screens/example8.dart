import 'package:flutter/material.dart';

class Example8 extends StatefulWidget {
  const Example8({Key? key}) : super(key: key);

  @override
  State<Example8> createState() => _Example8State();
}

class _Example8State extends State<Example8> {
  bool isTop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('example 8'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: 200,
              width: 200,
              alignment: isTop ? Alignment.topLeft : Alignment.bottomRight,
              color: Colors.cyan,
              duration: const Duration(milliseconds: 1500),
              curve: Curves.bounceInOut,
              child: const Text('Text'),
            ),
            TextButton(
              onPressed: () {
                isTop = !isTop;
                setState(() {});
              },
              child: const Text('Change text align'),
            )
          ],
        ),
      ),
    );
  }
}