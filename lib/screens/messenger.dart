import 'package:flutter/material.dart';
import 'package:tests/core/widgets/avatar.dart';
import 'package:tests/core/widgets/message_tile.dart';

class Messenger extends StatelessWidget {
  const Messenger({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Messenger')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Active Now',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  // color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.separated(
                  separatorBuilder:
                      (context, index) => const SizedBox(width: 10),

                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomMessengerAvatar();
                  },
                ),
              ),
              Divider(),
              Text(
                'Messages',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),

                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MessageTile();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
