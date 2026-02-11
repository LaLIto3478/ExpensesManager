import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Card(
                    elevation: 9,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    margin: const EdgeInsets.all(20),

                    child: Padding(
                        padding: const EdgeInsets.all(20),

                        child: Column(
                            children: [
                            const FlutterLogo(
                            size: 150,
                          ),

                          Text(
                            "Money Manager",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                            ),
                          ),

                          const SizedBox(height: 30),

                          TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: "Ingresa tu Correo Electrónico",
                              prefixIcon: Icon(Icons.mail)
                            ),
                          ),

                          // WIDGET QUE SIRVE SOLO PARA SEPARAR
                          const SizedBox(height: 15),

                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Ingresa tu Contraseña",
                              prefixIcon: Icon(Icons.lock)
                            ),
                          ),

                          const SizedBox(height: 30),

                          ElevatedButton(
                              onPressed: (){},
                              child: Text(
                                "Ingresar",
                              )
                          ),

                          ElevatedButton(
                              onPressed: (){},
                              child: Text("Hola")
                          ),
                          // Widget para espacear
                          const SizedBox(height: 200),

                          // Botón de Registro
                          OutlinedButton(
                              onPressed: (){print("Botón para ir la sign in page");},

                              child: Text("¿No tienes cuenta? Regístrate aquí.")
                          )
                        ]
                      )
                    )
                )
            )
        )
    );
  }
}