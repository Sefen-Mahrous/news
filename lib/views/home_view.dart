import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(fontWeight: FontWeight.w600)),
            Text(
              'Cloud',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
