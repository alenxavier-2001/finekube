import 'package:finekube/core/contants/constants.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 30,
          color: Colors.white,
        ),
        kWidth,
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        ),
        kWidth
      ],
    );
  }
}
