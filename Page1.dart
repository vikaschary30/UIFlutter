import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Index Page',
      home: Page1(),
    );
  }
}

class Page1 extends StatefulWidget{
  const Page1({super.key});
  @override
  State<Page1> createState() => _Page1();
}

class _Page1 extends State<Page1> {
  @override
  Widget build(BuildContext i){
    return Scaffold(
      appBar: AppBar(title: Text('PAGE1'),),
      body: Center(
        child: SizedBox(
          height: 600.0,
          width: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Text('Navigated to first page'),
              ),
              SizedBox(
                child: ElevatedButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: Text('Back to index page')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}