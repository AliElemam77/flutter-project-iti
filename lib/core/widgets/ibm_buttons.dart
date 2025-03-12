import 'package:flutter/material.dart';

class IbmButton extends StatelessWidget {
  final Widget text;
  final Color color;
  const IbmButton({
    super.key,
    required this.text,
    this.color = const Color.fromRGBO(191, 49, 49, 1),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Center(child: text),
    );
  }
}
