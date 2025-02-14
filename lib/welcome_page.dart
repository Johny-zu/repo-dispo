import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int c = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primera App"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          "Has presionado el botón $c veces",
          style: TextStyle(
              fontSize: 30,
              color: Colors.pink
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          c++;
          setState(() {

          });
          print("valor = $c");
        },
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
    );
  }
}