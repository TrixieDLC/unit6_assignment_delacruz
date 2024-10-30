import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture and Navigation"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is supposed to be a Home Screen"),
          SizedBox(height: 20),
          
          // INSERT CODE BELOW
          TextButton(
            onPressed: () => Navigator.pushNamed(context, 'aboutme'),
            child: const Text('Go to About Me')
          ),
        ],
      ),
    );
  }
}