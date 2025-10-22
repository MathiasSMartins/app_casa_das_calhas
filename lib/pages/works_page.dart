import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';

class WorksPage extends StatefulWidget {
  const WorksPage({super.key});

  @override
  State<WorksPage> createState() => _WorksPageState();
}

class _WorksPageState extends State<WorksPage> {
  String selectedCategory = 'Todos';

  final List<Map<String, String>> images = [
    {'path': 'assets/images/fotosCalhas/calha1.jpg', 'category': 'Calhas'},
    {'path': 'assets/images/fotosCalhas/calha3.jpg', 'category': 'Calhas'},
    {'path': 'assets/images/fotosCalhas/calha2.jpg', 'category': 'Calhas'},
    {'path': 'assets/images/fotosCalhas/calha11.jpg', 'category': 'Chaminés'},
    {'path': 'assets/images/fotosCalhas/calha10.jpg', 'category': 'Chaminés'},
    {'path': 'assets/images/fotosCalhas/calha14.jpg', 'category': 'Chaminés'},
  ];

  @override
  Widget build(BuildContext context) {
    final filteredImages = selectedCategory == 'Todos'
        ? images
        : images.where((img) => img['category'] == selectedCategory).toList();

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(),
      ),
      body: ListView(
        children: [
          // Cabeçalho cinza com breadcrumb
          Container(
            width: double.infinity,
            color: Colors.grey.shade200,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nossos Trabalhos',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/'),
                      child: const Text(
                        'Início',
                        style: TextStyle(
                          color: Color(0xFFDC193A),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const Text(
                      ' / Nossos Trabalhos',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Botões de filtro
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _filterButton('Todos'),
                const SizedBox(width: 10),
                _filterButton('Calhas'),
                const SizedBox(width: 10),
                _filterButton('Chaminés'),
              ],
            ),
          ),

          // Galeria de fotos
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(), // evita conflito com o ListView
              shrinkWrap: true,
              itemCount: filteredImages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // 3 imagens por linha
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    filteredImages[index]['path']!,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 40),

          const Footer(),
        ],
      ),
    );
  }

  Widget _filterButton(String category) {
    final isSelected = selectedCategory == category;
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedCategory = category;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? const Color(0xFFDC193A) : Colors.grey[800],
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(category),
    );
  }
}
