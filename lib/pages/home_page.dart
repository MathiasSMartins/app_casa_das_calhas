import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'SERVIÇO DE CALHAS COM MÃO DE OBRA QUALIFICADA',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          ),

          const SizedBox(height: 15),

          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Fale com quem entende do assunto',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, height: 1.5),
            ),
          ),

          const SizedBox(height: 30),

          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDC193A),
                  // cor de fundo em hexadecimal
                  foregroundColor: Colors.white,
                  // cor do texto
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'ENTRE EM CONTATO CONOSCO',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/fotosCalhas/calha5.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 30),

          // 2 - Sessão com fundo preto e card branco semitransparente
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              children: [
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
                        'Desde 1997',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Nos destacamos no comércio e distribuição de perfis e chapas de alumínio, conquistando a confiança de nossos clientes com produtos de alta qualidade. Em 2010, expandimos nossas operações para o segmento de fabricação e instalação de calhas, rufos, pingadeiras e condutores, além de coifas, dutos e chaminés sob medida, atendendo a uma demanda crescente por soluções personalizadas e eficientes. Ao longo de nossa trajetória, temos investido continuamente no aperfeiçoamento de nossas técnicas de montagem e instalação, sempre com o objetivo de garantir a segurança e a durabilidade de nossos produtos.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/contact');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFDC193A),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
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

                      const SizedBox(height: 30),

                      // 3 - Imagem full width
                      Image.asset(
                        'assets/images/fotosCalhas/calha1.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

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

                const SizedBox(height: 40),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/fotosCalhas/calha12.jpg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    const SizedBox(height: 30),
                    const Text(
                      'Encontre as melhores Calhas, Rufos e Pingadeiras de Alumínio.',
                      style: TextStyle(
                        color: const Color(0xFFDC193A),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),
                    const Text(
                      'Fabricação e Instalação',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),
                    const Text(
                      'Garantimos a qualidade em cada detalhe do nosso processo, assegurando que cada produto atenda aos mais altos padrões. Especializados no trabalho com chapas de alumínio, oferecemos uma ampla gama de soluções personalizadas. Acreditamos que a qualidade e a inovação são fundamentais para o sucesso, e por isso, estamos sempre em busca das melhores práticas e materiais disponíveis no mercado.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Qualidade Garantida',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/fotosCalhas/calha15.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  // ajusta o valor conforme quiser
                  child: Image.asset(
                    'assets/images/fotosCalhas/calha16.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  // ajusta o valor conforme quiser
                  child: Image.asset(
                    'assets/images/fotosCalhas/calha17.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),

          Container(
            width: double.infinity,
            color: Colors.black, // fundo preto
            child: const Footer(),
          ),
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
