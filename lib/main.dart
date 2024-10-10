import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var nome = "meu nome";
  var opac = 0.3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  nome = "Wallace";
                  opac = 1.0;
                });
              },
              child: const Text("Mudar"),
            ),
            Opacity(
              opacity: opac,
              child: Center(
                child: Text(nome),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
