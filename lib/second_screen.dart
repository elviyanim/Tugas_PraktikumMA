import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String message;
  const SecondScreen(this.message,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(message, style: const TextStyle(fontFamily: 'Helvetica', fontSize: 24, color: Colors.blue),),
              const SizedBox(height: 16,),
           OutlinedButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("Kembali", style: TextStyle(color: Colors.blue),)),
          ],)),
      ),
    );
  }
}