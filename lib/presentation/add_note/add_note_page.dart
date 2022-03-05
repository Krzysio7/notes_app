import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({Key? key}) : super(key: key);

  static void push(BuildContext context) => context.pushNamed(
        AddNotePage.name,
      );

  static const String path = '/note_add';
  static const String name = 'note_add';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add note'),
      ),
      body: Column(
        children: [
          TextFormField(),
          TextButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
