import 'package:flutter/material.dart';

import 'paleta.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),

      decoration: BoxDecoration(
        color: Paleta.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Paleta.navy.withValues(alpha: 0.06),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        children: [
          // FOTO DE PERFIL
          Container(
            padding: const EdgeInsets.all(4),

            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Paleta.skyBlue,
            ),

            child: ClipOval(
              child: Image.network(
                'https://i.pinimg.com/1200x/10/c1/a2/10c1a253f180a3b94400cd35ec12d0f3.jpg',
                width: 94,
                height: 94,
                fit: BoxFit.cover,

                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 94,
                    height: 94,
                    color: Paleta.skyBlue,
                    child: const Icon(
                      Icons.person,
                      size: 45,
                      color: Paleta.navy,
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 12),

          // NOMBRE
          const Text(
            'lindarys',
            style: TextStyle(
              color: Paleta.navy,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          // AMIGOS EN COMUN
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.people_outline, size: 17, color: Paleta.teal),
              SizedBox(width: 5),
              Text(
                '7 amigos en común',
                style: TextStyle(color: Paleta.textoSecundario, fontSize: 13),
              ),
            ],
          ),

          const SizedBox(height: 18),

          // BOTONES
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},

                  icon: const Icon(Icons.person_add_alt_1, size: 17),

                  label: const Text('Seguir'),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Paleta.teal,
                    foregroundColor: Paleta.white,
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 10),

              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {},

                  icon: const Icon(Icons.chat_bubble_outline, size: 17),

                  label: const Text('Mensaje'),

                  style: OutlinedButton.styleFrom(
                    foregroundColor: Paleta.navy,
                    side: const BorderSide(color: Paleta.skyBlue, width: 1.5),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
