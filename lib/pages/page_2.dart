import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
                  'Estos gatitos tienen mucho amor por dar',
                  textAlign: TextAlign.center, // Alinea el texto al centro
                  style: GoogleFonts.mooli(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
  width: 200, // Tamaño deseado en anchura
  height: 200, // Tamaño deseado en altura
  child: Lottie.asset(
    'assets/loading.json', // Ruta de la animación de Lottie en tu proyecto
    fit: BoxFit.cover,
  ),
),
               
                SizedBox(height: 10), // Espacio entre el título y el texto
                Text(
                  'Este es tu gran momento si buscas compañia!!!!',
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
