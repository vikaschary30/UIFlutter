import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyHomePage homePage=MyHomePage(title: 'Login page');
    return MaterialApp(
      title: 'SLSF2',
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN PAGE'),
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
                        child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0, decoration: TextDecoration.underline)),
                      ),
                      Container(
                        width: 200.0,
                        height: 50.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(labelText: 'Enter Username', icon: Icon(Icons.email), border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 50.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(labelText: 'Enter Password',icon: Icon(Icons.password), border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 50.0,
                        child: ElevatedButton(onPressed: ()=>{}, child: Text('Submit'))
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
