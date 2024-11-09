import 'package:flutter/material.dart';

class CardViewScreen extends StatelessWidget {

  const CardViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Card View Screen'),
    backgroundColor: Colors.blue,
    ),
    body: ListView.separated(
    separatorBuilder: (context, index) => const Divider(),
    itemCount: 5,
    itemBuilder: (context, index) {
    return Card(elevation: 5, child: ListTile(title: const Text('Title'),
        trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete)))
    );
    },
    ),
    );
  }
}