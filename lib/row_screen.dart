import 'package:flutter/material.dart';

class RowSreen extends StatelessWidget {
  const RowSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row"),
      ),
      body: Container(
        color: Colors.amber,
        height: 40,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Text("S1 Sistem Informasi")),
            Expanded(child: Text("S1 Teknik Informatika"))
          ],
        ),
      ),
    );
  }
}