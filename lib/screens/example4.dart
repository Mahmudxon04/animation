import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  const Example4({Key? key}) : super(key: key);

  @override
  State<Example4> createState() => _Example1State();
}

class _Example1State extends State<Example4>
    with SingleTickerProviderStateMixin {
  @override
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exapmle 4'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: isFirst ? Colors.orange : Colors.green,
            child: Text('This is ${isFirst ? "First" : "Second"} widget'),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isFirst = !isFirst;
                });
              },
              child: Text('Click here'))
        ],
      ),
    );
  }
}
