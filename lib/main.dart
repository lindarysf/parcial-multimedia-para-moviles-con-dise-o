import 'package:flutter/material.dart';

import 'paleta.dart';
import 'perfil.dart';
import 'card1.dart';
import 'menu_inferior.dart';

void main() {
  runApp(const BloomApp());
}

class BloomApp extends StatelessWidget {
  const BloomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BLOOM',

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Paleta.beige,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Paleta.teal,
          primary: Paleta.teal,
          surface: Paleta.white,
        ),
      ),

      home: const PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.beige,

      // BARRA SUPERIOR
      appBar: AppBar(
        backgroundColor: Paleta.beige,
        surfaceTintColor: Colors.transparent,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Paleta.navy,
            size: 20,
          ),
          onPressed: () {},
        ),

        title: const Text(
          'BLOOM',
          style: TextStyle(
            color: Paleta.navy,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),

        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none, color: Paleta.navy),
          ),
        ],
      ),

      // CONTENIDO PRINCIPAL
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8),

              // PERFIL DE LINDARYS
              const Perfil(),

              const SizedBox(height: 24),

              // TITULO DE PUBLICACIONES
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Descubre',
                  style: TextStyle(
                    color: Paleta.navy,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(20, 4, 20, 16),
                child: Text(
                  'Un pequeño mundo lleno de aventuras',
                  style: TextStyle(color: Paleta.textoSecundario, fontSize: 13),
                ),
              ),

              // PUBLICACION 1
              const Card1(
                imagen: 'https://i.pinimg.com/736x/26/09/f2/2609f2f660f30bb7dfd560edbce59295.jpg',
                titulo: 'lindarys',
                subtitulo: 'Amante de perro salchicha',
                descripcion: 'Vaquero salchicha suelto en la ciudad.',
              ),

              // PUBLICACION 2
              const Card1(
                imagen: 'https://i.pinimg.com/1200x/85/3a/5a/853a5a86d949b4ddbbccbcce5a5795e5.jpg',
                titulo: 'wendy',
                subtitulo: 'Bienvenidos a Halloween',
                descripcion: '¡Trae a tu perro con su mejor disfraz!',
              ),

              // PUBLICACION 3
              const Card1(
                imagen: 'https://i.pinimg.com/736x/26/f8/54/26f854ce668294b55ed68e191a66aabd.jpg',
                titulo: 'natalia',
                subtitulo: 'Perro salchicha en París',
                descripcion: 'El salchicha viste a la moda.',
              ),

              const SizedBox(height: 24),

              // CAJA DECORATIVA
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 18),
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: Paleta.skyBlue,
                  borderRadius: BorderRadius.circular(18),
                ),

                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '¡Florece a tu manera!',
                            style: TextStyle(
                              color: Paleta.navy,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            'Descubre nuevas personas y comparte tus momentos.',
                            style: TextStyle(
                              color: Paleta.navy,
                              fontSize: 12,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Paleta.navy,
                        foregroundColor: Paleta.white,
                      ),

                      child: const Text('Empezar'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // SUGERENCIAS DE AMIGOS
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Quizás te interesen',
                  style: TextStyle(
                    color: Paleta.navy,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // LAURA
              usuarioSugerido(
                'Laura',
                'https://i.pinimg.com/736x/a2/ae/80/a2ae80270767e6628d2da4a793fb234f.jpg',
              ),

              // DULCE
              usuarioSugerido(
                'Dulce',
                'https://i.pinimg.com/736x/53/ac/fe/53acfe3fdc22b3efc95982015de00225.jpg',
              ),

              // DANNA
              usuarioSugerido(
                'Danna',
                'https://i.pinimg.com/736x/99/d9/5d/99d95d6d7a7978406b6951cacf6df66f.jpg',
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      // MENU INFERIOR
      bottomNavigationBar: const MenuInferior(),
    );
  }

  // WIDGET PARA MOSTRAR CADA PERSONA
  Widget usuarioSugerido(String nombre, String imagen) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),

      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: Paleta.white,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Row(
        children: [
          // FOTO REDONDA
          ClipOval(
            child: Image.network(
              imagen,
              width: 42,
              height: 42,
              fit: BoxFit.cover,

              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 42,
                  height: 42,
                  color: Paleta.skyBlue,

                  child: const Icon(Icons.person_outline, color: Paleta.navy),
                );
              },
            ),
          ),

          const SizedBox(width: 12),

          // NOMBRE
          Expanded(
            child: Text(
              nombre,
              style: const TextStyle(
                color: Paleta.navy,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // BOTON SEGUIR
          OutlinedButton(
            onPressed: () {},

            style: OutlinedButton.styleFrom(
              foregroundColor: Paleta.teal,

              side: const BorderSide(color: Paleta.teal),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),

              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            ),

            child: const Text('Seguir'),
          ),
        ],
      ),
    );
  }
}
