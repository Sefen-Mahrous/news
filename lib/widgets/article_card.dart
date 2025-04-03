import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('assets/Ferreira.jpeg'),
        ),
        Text(
          'this is a very long text does not have mean but i put it for test the code that i will write here thak you for your will reading iam sorry for lost your time',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          'this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here this is a very long text does not have mean but i put it for test the code that i will write here',
          style: TextStyle(fontSize: 12, color: Colors.grey[850]),
          maxLines: 2,
        ),
      ],
    );
  }
}
