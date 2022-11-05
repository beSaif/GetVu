import 'package:flutter/material.dart';

class MessagesSection extends StatefulWidget {
  const MessagesSection({super.key});

  @override
  State<MessagesSection> createState() => _MessagesSectionState();
}

class _MessagesSectionState extends State<MessagesSection> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Messages'),
        ),
      ),
    );
  }
}
