import 'package:flutter/material.dart';
import 'routes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initialRoute,
      routes: {
        Routes.initialRoute: (context) => Page1(),
        Routes.page2: (context) => Page2(),
      },
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Página 1 - Ejercicio 2'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir a la página 2'),
          onPressed: () {
            Navigator.pushNamed(context, Routes.page2);
          },
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Página 2 - Ejercicio 2'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Volver'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
