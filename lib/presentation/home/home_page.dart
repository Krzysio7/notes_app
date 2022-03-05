import 'package:flutter/material.dart';
import 'package:notes_app/presentation/add_note/add_note_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String path = '/notes';
  static const String name = 'notes';

  void _addNote(BuildContext context) {
    AddNotePage.push(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNote(context),
        tooltip: 'Add Note',
        child: const Icon(Icons.add),
      ),
    );
  }
}
