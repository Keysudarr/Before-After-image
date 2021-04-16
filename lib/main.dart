import 'package:before_after/before_after.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Before After'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: BeforeAfter(
                beforeImage: Image.asset('images/after.jpg'),
                afterImage: Image.asset('images/before.jpg'),
              ),
            ),
            Expanded(
              flex: 1,
              child: BeforeAfter(
                beforeImage: Image.asset('images/after2.jpg'),
                afterImage: Image.asset('images/before2.jpg'),
                isVertical: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
