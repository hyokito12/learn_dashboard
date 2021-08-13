import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 300,
          color: Colors.red,
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
