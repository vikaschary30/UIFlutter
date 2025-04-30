import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyHomePage homePage=MyHomePage(title: 'CALCULATOR');
    return MaterialApp(
      title: 'Calculator',
      color: Colors.white,
      home: homePage,

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String result = '';
  void add() {
    double n1 = double.tryParse(num1.text) ?? 0.0;
    double n2 = double.tryParse(num2.text) ?? 0.0;
    setState(() {
      result = (n1 + n2).toString();
    });
  }
  void subtract() {
    double n1 = double.tryParse(num1.text) ?? 0.0;
    double n2 = double.tryParse(num2.text) ?? 0.0;
    setState(() {
      result = (n1 - n2).toString();
    });
  }
  void multiply() {
    double n1 = double.tryParse(num1.text) ?? 0.0;
    double n2 = double.tryParse(num2.text) ?? 0.0;
    setState(() {
      result = (n1 * n2).toString();
    });
  }
  void division() {
    double n1 = double.tryParse(num1.text) ?? 0.0;
    double n2 = double.tryParse(num2.text) ?? 0.0;
    setState(() {
      result = (n1 / n2).toString();
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATOR'),
        backgroundColor: Colors.black45,
      ),
      body: Center(
        child: Container(

          color: Colors.black54,
          width: 500.0,
          height: 550.0,
          child: GridView.count(
            crossAxisCount: 1,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text('CALCULATOR',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0, color: Colors.white)),
                    ),
                    Container(
                      width: 200.0,
                      height: 50.0,
                      child: TextField(
                        controller: num1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(labelText: 'Enter value of a', border: OutlineInputBorder()),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      height: 50.0,
                      child: TextField(
                        controller: num2,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(labelText: 'Enter value of b', border: OutlineInputBorder()),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 40.0,
                      child: Center(
                        child: Text(result, style: TextStyle(fontSize: 25.0, color: Colors.white)),
                      ),
                    ),
                    Container(
                        width: 250.0,
                        height: 50.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: ElevatedButton(onPressed: add, child: Text('+')),
                            ),
                            Container(
                              child: ElevatedButton(onPressed: subtract, child: Text('-')),
                            ),
                            Container(
                              child: ElevatedButton(onPressed: multiply, child: Text('*')),
                            ),
                            Container(
                              child: ElevatedButton(onPressed: division, child: Text('/')),
                            ),
                          ],
                        ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
