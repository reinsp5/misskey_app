import 'package:flutter/material.dart';
import 'package:misskey_client/widget/drawer_widget.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.surface,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: body,
      drawer: const AppDrawer(),
    );
  }
}
