import 'package:flutter/material.dart';
import 'widgets/bloco_estatistica.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estatísticas'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                BlocoEstatistica(
                  icon: Icons.people,
                  valor: '1,250',
                  titulo: 'Utilizadores',
                  corFundo: Color(0xFFE3F2FD),
                ),
                BlocoEstatistica(
                  icon: Icons.shopping_cart,
                  valor: '320',
                  titulo: 'Vendas',
                  corFundo: Color(0xFFE8F5E9),
                ),
                BlocoEstatistica(
                  icon: Icons.attach_money,
                  valor: '€4,500',
                  titulo: 'Receita',
                  corFundo: Color(0xFFFFF3E0),
                ),
                BlocoEstatistica(
                  icon: Icons.star,
                  valor: '4.9',
                  titulo: 'Avaliação',
                  corFundo: Color(0xFFF3E5F5),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Outros Conteúdos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
