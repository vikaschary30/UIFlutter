import 'package:flutter/material.dart';
import 'package:navigation/Page1.dart';
import 'package:navigation/Page2.dart';

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
      home: Index(),
    );
  }
}

class Index extends StatefulWidget{
  const Index({super.key});
  @override
  State<Index> createState() => _Index();
}

class _Index extends State<Index> {
  @override
  Widget build(BuildContext i){
    return Scaffold(
      appBar: AppBar(title: Text('INDEX PAGE'),),
      body: Center(
        child: SizedBox(
          height: 600.0,
          width: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Page1()),
                  );

                }, child: Text('Button 1')),
              ),
              SizedBox(
                child: ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Page2()),
                  );
                }, child: Text('Button 2')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



