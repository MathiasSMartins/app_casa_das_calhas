import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, // Define altura fixa
      color: Colors.white, // Cor do header
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Espaço à esquerda (mantém o logo centralizado visualmente)
            const SizedBox(width: 40),

            // Logo central
            Center(
              child: Image.asset(
                'assets/images/logoCalhas.png',
                height: 80,
                fit: BoxFit.contain,
              ),
            ),

            // Menu hambúrguer à direita
            PopupMenuButton<String>(
              icon: const Icon(Icons.menu, color: Colors.black),
              onSelected: (value) {
                Navigator.pushNamed(context, value);
              },
              itemBuilder: (context) => [
                const PopupMenuItem(value: '/', child: Text('Inicial')),
                const PopupMenuItem(value: '/about', child: Text('Sobre Nós')),
                const PopupMenuItem(value: '/services', child: Text('Serviços')),
                const PopupMenuItem(value: '/works', child: Text('Nossos Trabalhos')),
                const PopupMenuItem(value: '/contact', child: Text('Contato')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
