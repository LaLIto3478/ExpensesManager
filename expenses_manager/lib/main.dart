import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'config/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Color nuPurple = const Color(0xFF820AD1);

    return MaterialApp(
      title: 'Expense Manager',
      theme: ThemeData(
        brightness: Brightness.dark,

        colorScheme: ColorScheme.fromSeed(
            seedColor: nuPurple,
            brightness: Brightness.dark,
            primary: nuPurple,
            surface: const Color(0xFF191919),
        ),
        useMaterial3: true,

        /*----------------------------------------------------------------------
        TEMAS PREDEFINIDOS PARA TODA LA APLICACIÓN
        ----------------------------------------------------------------------*/

        // Tema predefinido para líneas de input
        inputDecorationTheme: InputDecorationTheme(
          // Las siguientes dos líneas van a hacer que se vea una caja rellena de color.
          filled: true,
          fillColor: const Color(0xFF262626),

          // Las siguientes líneas hacen que en vez de una línea, sea un cuadrado de input
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none
          ),

          // Las siguientes líneas de código indican cómo debe verse el input line cuando
          // está enfocado.
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xFF820AD1),
              width: 2
            )
          ),

          // Estas líneas indican cómo debe de verse el input line cuando marca un error.
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.redAccent,
              width: 2
            )
          ),

          // Las siguientes dos líneas indican los colores de los íconos que pongamos.
          prefixIconColor: Color(0xFF820AD1),
          suffixIconColor: Colors.white70,

          labelStyle: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w500,
            fontSize: 16
          ),

          hintStyle: TextStyle(
            color: Colors.white38,
          ),

        ),

        // Tema predefinido para botones
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            // Colores del botón
            backgroundColor: Color(0xFF820AD1),
            foregroundColor: Colors.white,

            // Formas de los botones
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15)
            ),

            // Estilo de texto de los botones
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),

            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24)
          )
        ),

        // Tema predefinido para outlined buttons
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            // Estilo del texto
            foregroundColor: Colors.white70,
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),

            // Color y  tamaño del borde
            side: BorderSide(
              color: Color(0xFF820AD1),
              width: 2
            ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15)
            ),
            
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24)
          )
        )

      ),
      debugShowCheckedModeBanner: false,

      initialRoute: '/login_screen',

      routes: {
        '/login_screen': (context) => const LoginScreen(),
        '/home_screen': (context) => const HomeScreen(),
      },
    );
  }
}



