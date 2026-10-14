import 'package:flutter/material.dart';

import 'paleta.dart';

class Card1 extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String subtitulo;
  final String descripcion;

  const Card1({
    super.key,
    required this.imagen,
    required this.titulo,
    required this.subtitulo,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 18),

      decoration: BoxDecoration(
        color: Paleta.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Paleta.navy.withValues(alpha: 0.07),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // FOTO DE LA PUBLICACION
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),

            child: Image.network(
              imagen,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,

              loadingBuilder: (context, child, progress) {
                if (progress == null) {
                  return child;
                }

                return Container(
                  height: 220,
                  width: double.infinity,
                  color: Paleta.skyBlue,
                  child: const Center(
                    child: CircularProgressIndicator(color: Paleta.teal),
                  ),
                );
              },

              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 220,
                  width: double.infinity,
                  color: Paleta.skyBlue,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image_not_supported_outlined,
                        color: Paleta.navy,
                        size: 38,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'No se pudo cargar la imagen',
                        style: TextStyle(color: Paleta.navy, fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // INFORMACION DE LA PUBLICACION
          Padding(
            padding: const EdgeInsets.all(16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOMBRE
                Text(
                  titulo,
                  style: const TextStyle(
                    color: Paleta.navy,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                // SUBTITULO
                Text(
                  subtitulo,
                  style: const TextStyle(
                    color: Paleta.teal,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 9),

                // DESCRIPCION
                Text(
                  descripcion,
                  style: const TextStyle(
                    color: Paleta.textoSecundario,
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 12),

                const Divider(color: Paleta.beige, height: 1),

                const SizedBox(height: 8),

                // ACCIONES
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Paleta.teal,
                      ),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chat_bubble_outline,
                        color: Paleta.navy,
                      ),
                    ),

                    const Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share_outlined,
                        color: Paleta.navy,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
