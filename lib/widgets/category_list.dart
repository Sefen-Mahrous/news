import 'package:flutter/material.dart';
import 'package:news/widgets/category_card.dart';

class CategaroyList extends StatelessWidget {
  const CategaroyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CatagoryCard();
        },
      ),
    );
  }
}
