import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Somos uma empresa comprometida com qualidade, inovação e resultados. '
                  'Nossa missão é entregar soluções que fazem a diferença no dia a dia dos nossos clientes.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
