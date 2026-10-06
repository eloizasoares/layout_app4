import 'package0:flutter/material.dart';

class BlocoEstatistica extends StatelessWidget {
  final IconData icon;
  final String valor;
  final String titulo;
  final Color corFundo;

  const BlocoEstatistica({
    super.key,
    required this.icon,
    required this.valor,
    required this.titulo,
    required this.corFundo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: corFundo,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 36, color: Colors.teal),
          const SizedBox(height: 8),
          Text(valor, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text(titulo, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
