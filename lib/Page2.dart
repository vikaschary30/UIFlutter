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
      home: Page2(),
    );
  }
}

class Page2 extends StatefulWidget{
  const Page2({super.key});
  @override
  State<Page2> createState() => _Page2();
}

class _Page2 extends State<Page2> {
  @override
  Widget build(BuildContext i){
    return Scaffold(
      appBar: AppBar(title: Text('PAGE2'),),
      body: Center(
        child: SizedBox(
          height: 600.0,
          width: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Text('Navigated to second page'),
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