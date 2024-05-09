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
    String text = '';

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Página 1 - Ejercicio 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                text = value;
              },
              decoration: InputDecoration(
                labelText: 'Ingresa un texto',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Ir a la página 2'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Routes.page2,
                  arguments: text,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String text = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Página 2 - Ejercicio 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Texto desde la página 1:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Volver'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
