import 'package:flutter/material.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/business.avif'),
        ),
      ),
      child: Center(
        child: Text('businsses', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
