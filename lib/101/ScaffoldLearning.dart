import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold Deneeme Ekranı"),
      ),
      body: const Text("Merhaba"),
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        tooltip: "Demeöe",
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add_box),label: "A"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box),label: "B"),
        ],
      ),
    );
  }
}
