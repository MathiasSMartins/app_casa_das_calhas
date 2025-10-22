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
        children: [
          // Cabeçalho cinza com título e breadcrumb
          Container(
            width: double.infinity,
            color: Colors.grey.shade200,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sobre Nós',
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
                      ' / Sobre nós',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 30, right: 10, top: 20, bottom: 0),
            child: Text(
              'Sobre nós',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 30, right: 10, top: 10, bottom: 5),
            child: Text(
              'Desde 1997 nos destacamos no comércio e distribuição de perfis e chapas de alumínio, conquistando a confiança de nossos clientes com produtos de alta qualidade. Em 2010, expandimos nossas operações para o segmento de fabricação e instalação de calhas, rufos, pingadeiras e condutores, além de coifas, dutos e chaminés sob medida, atendendo a uma demanda crescente por soluções personalizadas e eficientes. Ao longo de nossa trajetória, temos investido continuamente no aperfeiçoamento de nossas técnicas de montagem e instalação, sempre com o objetivo de garantir a segurança e a durabilidade de nossos produtos. Nossa equipe é composta por profissionais altamente capacitados, comprometidos em oferecer um atendimento excepcional e soluções que atendam às necessidades específicas de cada cliente. Acreditamos que a qualidade e a inovação são fundamentais para o sucesso, e por isso, estamos sempre em busca das melhores práticas e materiais disponíveis no mercado. Com um olhar atento às tendências e inovações do setor, continuamos a evoluir, proporcionando aos nossos clientes não apenas produtos, mas também confiança e satisfação em cada projeto realizado.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.only(left: 30, right: 10, top: 10, bottom: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 120,
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
                    'Saiba Mais',
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

          Padding(
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/logoCalhas.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30),

        Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // centraliza e distribui igualmente
                children: [
                  _iconAboveText(Icons.bar_chart, 'Empresa especializada'),

                  const SizedBox(height: 40),

                  _iconAboveText(Icons.verified, 'Material de Qualidade'),

                  const SizedBox(height: 40),

                  _iconAboveText(Icons.build, 'Serviço especializado'),
                ],
              ),
            ]
          ),
        ),

          const Footer(),
        ],
      ),
    );
  }

  Widget _iconAboveText(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: const Color(0xFFDC193A), size: 60),
        const SizedBox(height: 12),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
