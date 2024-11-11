import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('그리드뷰 윗젯 연습'),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16
              ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blueGrey,
              child: Center(child: Text('index number : $index')),
            );
          },
        ),
      ),
    );
  }
}
