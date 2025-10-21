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
        padding: const EdgeInsets.all(20),
        children: const [
          Text(
            'Nossos Serviços',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Consultoria em Segurança da Informação'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('Desenvolvimento de Sites e Aplicativos'),
          ),
          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text('Suporte Técnico e Monitoramento'),
          ),
          Footer(),
        ],
      ),
    );
  }
}
