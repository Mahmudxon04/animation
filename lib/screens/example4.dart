import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  const Example4({Key? key}) : super(key: key);

  @override
  State<Example4> createState() => _Example1State();
}

class _Example1State extends State<Example4>
    with SingleTickerProviderStateMixin {
  @override
  double opacity = 1;
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('example 4'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              alignment: Alignment.center,
              height: 200,
              width: 200,
              color: isFirst ? Colors.orange : Colors.green,
              child: isFirst
                  ? AnimatedOpacity(
                      opacity: opacity == 0 ? 0 : 1,
                      duration: Duration(milliseconds: 500),
                      child: Text('This is First widget'))
                  : AnimatedOpacity(
                      opacity: opacity == 1 ? 1 : 0,
                      duration: Duration(milliseconds: 500),
                      child: Text('This is Second widget')),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isFirst = !isFirst;
                  });
                },
                child: Text('Click here'))
          ],
        ),
      ),
    );
  }
}
