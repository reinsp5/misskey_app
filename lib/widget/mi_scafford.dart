import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MiScaffold extends StatelessWidget {
  MiScaffold({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  String title;
  Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: body,
    );
  }
}
