import 'package:flutter/material.dart';

import 'paleta.dart';

class MenuInferior extends StatelessWidget {
  const MenuInferior({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Paleta.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Paleta.navy.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, -3),
          ),
        ],
      ),

      child: SafeArea(
        top: false,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              botonMenu(Icons.home_rounded, 'Inicio', true),

              botonMenu(Icons.search_rounded, 'Buscar', false),

              botonMenu(Icons.favorite_border_rounded, 'Favoritos', false),

              botonMenu(Icons.chat_bubble_outline_rounded, 'Mensajes', false),

              botonMenu(Icons.person_outline_rounded, 'Perfil', false),
            ],
          ),
        ),
      ),
    );
  }

  Widget botonMenu(IconData icono, String texto, bool seleccionado) {
    return InkWell(
      onTap: () {},

      borderRadius: BorderRadius.circular(12),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icono,
              size: 23,
              color: seleccionado ? Paleta.teal : Paleta.textoSecundario,
            ),

            const SizedBox(height: 4),

            Text(
              texto,
              style: TextStyle(
                fontSize: 10,
                color: seleccionado ? Paleta.teal : Paleta.textoSecundario,
                fontWeight: seleccionado ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
