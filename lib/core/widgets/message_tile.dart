import 'package:flutter/material.dart';
import 'package:tests/core/widgets/avatar.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(width: 60, height: 450, child: CustomMessengerAvatar()),

      title: const Text('User Name'),
      subtitle: const Text(
        'Message',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
      ),
      trailing: const Text('12:00'),
    );
  }
}
