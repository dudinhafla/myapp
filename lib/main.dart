import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Primeiro App Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Responsividade com MediaQuery
    double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Responsivo'),
      ),
      body: Center(
        child: largura > 600  // Condição para layout responsivo
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,
                    child: Center(child: Text('Box 1')),
                  ),
                  SizedBox(width: 20),
                  Container(
                    color: Colors.green,
                    height: 200,
                    width: 200,
                    child: Center(child: Text('Box 2')),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,
                    child: Center(child: Text('Box 1')),
                  ),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.green,
                    height: 200,
                    width: 200,
                    child: Center(child: Text('Box 2')),
                  ),
                ],
              ),
      ),
    );
  }
}
