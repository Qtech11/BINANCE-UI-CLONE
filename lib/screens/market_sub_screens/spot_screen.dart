import 'package:flutter/material.dart';

class SpotScreen extends StatelessWidget {
  const SpotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [Text('hfhfh')],
      ),
    );
  }
}
