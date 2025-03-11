import 'package:flutter/material.dart';

class CustomMessengerAvatar extends StatelessWidget {
  const CustomMessengerAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.blue, width: 4),
          ),

          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: const NetworkImage(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
