import 'package:flutter/material.dart';

class TechnologyItem extends StatelessWidget {
  final String techName;

  const TechnologyItem({Key? key, required this.techName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.circle, size: 5),
        const SizedBox(width: 16),
        Text(techName),
      ],
    );
  }
}
