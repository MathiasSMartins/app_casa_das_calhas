import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _firestore = FirebaseFirestore.instance;

  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final assuntoController = TextEditingController();
  final mensagemController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _isSending = false;

  Future<void> enviarMensagem() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSending = true);

    try {
      await _firestore.collection('contato').add({
        'nome': nomeController.text,
        'email': emailController.text,
        'assunto': assuntoController.text,
        'mensagem': mensagemController.text,
        'data_envio': Timestamp.now(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Mensagem enviada com sucesso!'),
          backgroundColor: Colors.green,
        ),
      );

      _formKey.currentState?.reset();
      nomeController.clear();
      emailController.clear();
      assuntoController.clear();
      mensagemController.clear();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao enviar: $e'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() => _isSending = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final redColor = const Color(0xFFDC193A);

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
            child: const Text(
              'Contato',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: nomeController,
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                    value == null || value.isEmpty ? 'Informe o nome' : null,
                  ),
                  const SizedBox(height: 20),

                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                    value == null || value.isEmpty ? 'Informe o e-mail' : null,
                  ),
                  const SizedBox(height: 20),

                  TextFormField(
                    controller: assuntoController,
                    decoration: const InputDecoration(
                      labelText: 'Assunto',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                    value == null || value.isEmpty ? 'Informe o assunto' : null,
                  ),
                  const SizedBox(height: 20),

                  TextFormField(
                    controller: mensagemController,
                    decoration: const InputDecoration(
                      labelText: 'Mensagem',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 5,
                    validator: (value) =>
                    value == null || value.isEmpty ? 'Informe a mensagem' : null,
                  ),
                  const SizedBox(height: 30),

                  SizedBox(
                    width: 220,
                    child: ElevatedButton(
                      onPressed: _isSending ? null : enviarMensagem,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: redColor,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: _isSending
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                        'Enviar Mensagem',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 50),
          const Footer(),
        ],
      ),
    );
  }
}
