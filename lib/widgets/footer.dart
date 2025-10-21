import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade50,
      padding: const EdgeInsets.all(12),
      child: const Center(
        child: Text(
          '© 2025 Minha Empresa. Todos os direitos reservados.',
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
    );
  }
}
