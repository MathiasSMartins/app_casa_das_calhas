import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // fundo preto
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Sobre nós',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),

          const Text(
            'Desde 1997 nos destacamos no comércio e distribuição de perfis e chapas de alumínio, conquistando a confiança de nossos clientes com produtos de alta qualidade.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFDC193A),
              foregroundColor: Colors.white,
              padding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Saiba Mais',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 40),

          const Text(
            'Endereço',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),

          const Text(
            'Rua dos Suíços, 4466 - Vila Nova, Joinville - SC. 89237-720',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          const Text(
            'Sac/Atendimento',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),

          const Text(
            '(47) 3417-6465',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),

          const Text(
            '(47) 3417-6464',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          const Text(
            'Conheça nossas Redes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialButton(
                icon: FontAwesomeIcons.facebook,
                url: 'https://www.facebook.com/share/9vLiaLtLfbVQ22BC/?mibextid=LQQJ4d',
              ),
              const SizedBox(width: 16),

              _socialButton(
                icon: FontAwesomeIcons.instagram,
                url: 'https://www.instagram.com/_casadascalhas_?igsh=MWl3dDkzNGl6ZmJ5eQ%3D%3D',
              ),
            ],
          ),

          const SizedBox(height: 30),

          const Divider(color: Colors.white24, thickness: 0.5),
          const SizedBox(height: 12),
          const Text(
            '© 2025 Calhas Joinville. Active. Todos os direitos reservados.',
            style: TextStyle(fontSize: 12, color: Colors.white38),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _socialButton({required IconData icon, required String url}) {
    return GestureDetector(
      onTap: () async {
        // abre o link no navegador
        // adicione o package url_launcher no pubspec.yaml
        // e importe: import 'package:url_launcher/url_launcher.dart';
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      },
      child: Container(
        width: 40,
        height: 40,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: const Color(0xFF222222),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 17,
          ),
        ),
      ),
    );
  }
}
