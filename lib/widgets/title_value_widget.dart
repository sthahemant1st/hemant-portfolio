import 'package:flutter/material.dart';

class TitleValueWidget extends StatelessWidget {
  final String title, value;

  const TitleValueWidget({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title + ": ", style: const TextStyle(color: Colors.white)),
        // const Spacer(),
        Expanded(child: Text(value, textAlign: TextAlign.end,))
      ],
    );
  }
}
