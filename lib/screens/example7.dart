import 'package:flutter/material.dart';

class Example7 extends StatefulWidget {
  const Example7({Key? key}) : super(key: key);

  @override
  State<Example7> createState() => _Example7State();
}

class _Example7State extends State<Example7> {
  double size = 150;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("example 7"),
      ),
      body: Center(
        child: AnimatedPadding(
          duration: const Duration(seconds: 2),
          curve: Curves.linear,
          padding: EdgeInsets.symmetric(horizontal: size),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  size = size==150?10:150;
                });
              },
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
