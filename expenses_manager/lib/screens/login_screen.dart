import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        // Tamaño
        width: 250,
        height: 600,

        // Decoración

        decoration: BoxDecoration(
            color: Colors.yellow
        ),
        // margen
        margin: EdgeInsets.all(15),

        // padding
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),

        // Alineación
        alignment: Alignment.center,

        child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/home_screen');
            },
            child: Text("Hola")
        ),
      )
    );
  }
}