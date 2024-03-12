import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart'; 

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
                 Container(
  width: 200, // Tamaño deseado en anchura
  height: 200, // Tamaño deseado en altura
  child: Lottie.asset(
    'assets/cat2.json', // Ruta de la animación de Lottie en tu proyecto
    fit: BoxFit.cover,
  ),
),
               
                SizedBox(height: 10), // Espacio entre el título y el texto
                Text(
                  '¡Adoptar un gato es darle una segunda oportunidad y recibir en retorno una amistad para toda la vida!"',
                  textAlign: TextAlign.center, // Alinea el texto al centro
                  style: GoogleFonts.mooli(
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
