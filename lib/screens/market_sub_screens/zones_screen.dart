import 'package:flutter/material.dart';

class ZonesScreen extends StatelessWidget {
  const ZonesScreen({Key? key}) : super(key: key);

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
        children: [Text('ggfh')],
      ),
    );
  }
}
