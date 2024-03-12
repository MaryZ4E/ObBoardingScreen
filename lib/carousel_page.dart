import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class CarouselPage extends StatelessWidget {
  final List<Map<String, String>> catsInfo = [
    {
      'name': 'Teodoro',
      'description': 'Le gusta jugar con juguetes y explorar su entorno. Es un gato curioso y amigable que se adapta fácilmente a nuevos entornos.',
    },
    {
      'name': 'Chispita',
      'description': 'Es muy cariñoso y le encanta recibir atención de las personas. Es activo y le gusta explorar su entorno, pero también disfruta de largas siestas al sol.',
    },
    {
      'name': 'Yuumi',
      'description': 'Fue rescatada de las calles y ha sido rehabilitada en un refugio de animales. Está esterilizada, vacunada y desparasitada.',
    },
    // Agrega más información sobre los gatos aquí
  ];

  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
      'https://images.ecestaticos.com/DiJ6Fx5gUleSR6P1IBGPELVncIQ=/0x0:2121x1414/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F4d0%2F68f%2Fb04%2F4d068fb04ec4ef3950da1cb9ed696747.jpg',
      'https://puppis.blog/wp-content/uploads/2022/02/abc-cuidado-de-los-gatos-min.jpg',
      'https://media.es.wired.com/photos/657cb5b81e17b099f8f9e15c/16:9/w_3008,h_1692,c_limit/gatos%20172050389.jpg',
      // Agrega aquí las URL de tus imágenes
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Page'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: imageUrls.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(185, 87, 99, 165),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          textAlign: TextAlign.center,
                          catsInfo[imageUrls.indexOf(imageUrl)]['name']!,
                          style: TextStyle(
                             color: Colors.white,
                            fontSize: 30, 
                            fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          textAlign: TextAlign.center,
                          catsInfo[imageUrls.indexOf(imageUrl)]['description']!,
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 400.0,
              autoPlay: true,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
            ),
          ),
          SizedBox(height: 20),
          // Espacio entre el título y el texto
                Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    SizedBox(height: 20),
    Text(
      'Dirección:',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      'Calle Gato Feliz #123, Colonia Centro,\nCortazar, Guanajuato, México',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    SizedBox(height: 10),
    Text(
      'Teléfono:',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      '+52 (473) 123 4567',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    SizedBox(height: 10),
    Text(
      'Correo electrónico:',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      'purfectadoptcortazar@gmail.com',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    SizedBox(height: 10),
    Text(
      'Sitio web:',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      'www.purfectadoptcortazar.com',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    SizedBox(height: 10),
    Text(
      'Horario de atención:',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      'Lunes a viernes de 9:00 a.m. a 5:00 p.m.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
      ),
    ),
  ],
)

        ],
      ),
    );
  }
}
