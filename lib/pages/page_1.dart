import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart'; 
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Color.fromARGB(47, 187, 91, 216),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(height: 20), // Espacio entre la animación y el título
                Text(
                  'Bienvenido a PurfectAdopt',
                  textAlign: TextAlign.center, // Alinea el texto al centro
                  style: GoogleFonts.mooli(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
                 Container(
  width: 600, // Tamaño deseado en anchura
  height: 300, // Tamaño deseado en altura
  child: Lottie.asset(
    'assets/cat.json', // Ruta de la animación de Lottie en tu proyecto
    fit: BoxFit.cover,
  ),
),
               
                SizedBox(height: 10), // Espacio entre el título y el texto
                Text(
                  'Donde podrás adoptar un Gatito necesitado de un hogar',
                  textAlign: TextAlign.center, // Alinea el texto al centro
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
