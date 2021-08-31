import 'package:flutter/material.dart';

class ConstrainedCenter extends StatelessWidget {
  final List<Widget> constrainedCenterChildren;

  const ConstrainedCenter({Key? key, required this.constrainedCenterChildren}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: Color(0xFF09334A),
        width: 640,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: this.constrainedCenterChildren,
        ),
      ),
    );
  }
}
