import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Responsive UI',
      home: Responsive(),
    );
  }
}
class Responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    double ScreenW = MediaQuery.of(context).size.width;
    if(ScreenW<=600){
      return Mobile();
    }
    else if (ScreenW>600 && ScreenW<1200){
      return Tablet();
    }
    else {
      return Desktop();
    }
  }
}
class Mobile extends StatefulWidget {
  const Mobile({super.key});
  @override
  State<Mobile> createState() => _Mobile();
}

class _Mobile extends State<Mobile> {
  @override
  Widget build(BuildContext m) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobile'),),
      body: Center(
        child: Icon(Icons.mobile_friendly),
      ),
    );
  }
}
class Tablet extends StatefulWidget {
  const Tablet({super.key});
  @override
  State<Tablet> createState() => _Tablet();
}

class _Tablet extends State<Tablet> {
  @override
  Widget build(BuildContext m) {
    return Scaffold(
      appBar: AppBar(title: Text('Tablet'),),
      body: Center(
        child: Icon(Icons.tablet_android),
      ),
    );
  }
}

class Desktop extends StatefulWidget {
  const Desktop({super.key});
  @override
  State<Desktop> createState() => _Desktop();
}

class _Desktop extends State<Desktop> {
  @override
  Widget build(BuildContext m) {
    return Scaffold(
      appBar: AppBar(title: Text('Desktop'),),
      body: Center(
        child: Icon(Icons.desktop_mac),
      ),
    );
  }
}




