import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            color: Colors.grey.shade200,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Serviços',
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
                      ' / Serviços',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Casa das Calhas',
                      style: TextStyle(
                        color: const Color(0xFFDC193A),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Serviços',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),

                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _customListItem(
                            'Calhas',
                            'Disponíveis em beiral, central e embutida, projetadas para garantir o escoamento eficiente da água.',
                          ),

                          SizedBox(height: 16),
                          _customListItem(
                            'Rufos',
                            'Fabricamos rufos comuns e de recorte, idealizados para proporcionar proteção e vedação perfeitas.',
                          ),

                          SizedBox(height: 16),
                          _customListItem(
                            'Pingadeiras',
                            'Essenciais para evitar a infiltração de água, desenvolvidas com precisão e durabilidade.',
                          ),

                          SizedBox(height: 16),
                          _customListItem(
                            'Condutores',
                            'Criados para facilitar o direcionamento da água, garantindo funcionalidade e estética.',
                          ),

                          SizedBox(height: 16),
                          _customListItem(
                            'Coifas',
                            'Projetadas para ventilação eficiente, combinando design e eficácia.',
                          ),

                          SizedBox(height: 16),
                          _customListItem(
                            'Dutos',
                            'Oferecemos dutos sob medida para diversas aplicações, sempre com atenção à qualidade.',
                          ),

                          SizedBox(height: 16),
                          _customListItem(
                            'Chaminés',
                            'Fabricadas para garantir segurança e desempenho em sistemas de aquecimento.',
                          ),

                          SizedBox(height: 16),
                          _customListItem(
                            'Colarinho para churrasqueira',
                            'Acessório indispensável, projetado para praticidade e eficiência.',
                          ),

                          SizedBox(height: 16),
                          _customListItem(
                            'Churrasqueiras',
                            'Elaboradas com materiais de alta qualidade para momentos especiais com família e amigos.',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 180,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/contact');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFDC193A),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Contratar Serviço',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    Image.asset(
                      'assets/images/fotosCalhas/calha1.jpg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ]),
          ),

          const Footer(),
        ],
      ),
    );
  }

  Widget _customListItem(String title, String subtitle) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 6),
          child: Icon(
            Icons.circle,
            size: 8,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}
