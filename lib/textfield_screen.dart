import 'package:flutter/material.dart';

class FieldScreen extends StatelessWidget {
  const FieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Field Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: const Column(children: [TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), prefixIcon: Icon(Icons.email, color: Colors.green,),
              labelText: 'Enter Your email',
              hintText: 'nandaadisaputra18@gmail.com',
              suffixIcon: Icon(Icons.safety_check)
          ),
        )]),
      ),
    );
  }
}