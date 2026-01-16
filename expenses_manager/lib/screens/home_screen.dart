import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        body: Center(
            child: Container(
              // TAMAÑO DEL CONTENEDOR
                width: 300,
                height: 500,

                // MARGEN
                margin: const EdgeInsets.all(60),

                // PADDING con respecto a los demás hijos
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),

                decoration: BoxDecoration(
                    color: theme.primaryColorLight,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: theme.shadowColor,
                        width: 2
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: theme.shadowColor.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3)
                      )
                    ]
                ),

                // Alineación
                alignment: Alignment.center,

                // Child (el widget real)
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login_screen');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.canvasColor,
                        foregroundColor: theme.primaryColor
                    ),
                    child: const Text(
                      "Botón Víctor",
                      style: TextStyle(
                          color: Colors.black
                      ),
                    )
                )
            )
        )
    );
  }
}