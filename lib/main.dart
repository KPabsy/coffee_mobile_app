import 'package:flutter/material.dart';
import 'package:flutter_application_2/Home.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class sandbox extends StatelessWidget {
  const sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sandbox'), backgroundColor: Colors.grey),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 100, color: Colors.blue, child: Text('child')),
          Container(height: 200, color: Colors.red, child: Text('child')),
          Container(height: 300, color: Colors.green, child: Text('child')),
        ],
      ),
    );
  }
}
