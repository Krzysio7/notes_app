import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/common/custom_hooks/use_cubit.dart';
import 'package:notes_app/common/custom_hooks/use_cubit_listener.dart';
import 'package:notes_app/domain/note/entities/note.dart';
import 'package:notes_app/presentation/add_note/add_note_page.dart';
import 'package:notes_app/presentation/core/shared.dart';
import 'package:notes_app/presentation/home/home_cubit.dart';
import 'package:notes_app/presentation/widgets/page_loader.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String path = '/notes';
  static const String name = 'notes';

  static void go(BuildContext context) => context.goNamed(
        HomePage.name,
      );

  void _addNote(BuildContext context) {
    AddNotePage.push(context);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<HomeCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text(local.homePageTitle),
      ),
      body: _NoteList(cubit: cubit),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNote(context),
        tooltip: local.addNoteFABTooltip,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _NoteList extends HookWidget {
  const _NoteList({
    required this.cubit,
    Key? key,
  }) : super(key: key);

  final HomeCubit cubit;

  void _cubitStateListener(HomeState state, BuildContext context) {
    state.maybeWhen(
      error: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error),
          ),
        );
      },
      orElse: () {},
    );
  }

  bool _shouldBuild(HomeState state) {
    return state is HomeStateLoaded || state is HomeStateLoading;
  }

  bool _shouldListen(HomeState state) {
    return state is HomeStatError;
  }

  @override
  Widget build(BuildContext context) {
    final state = useCubitBuilder(cubit, buildWhen: _shouldBuild);
    useCubitListener(cubit, _cubitStateListener, listenWhen: _shouldListen);

    useEffect(() {
      cubit.fetchNotes();
      return;
    }, [cubit]);

    return state!.whenOrNull(
          loading: () => const PageLoader(),
          loaded: (notes) => _Content(notes: notes),
        ) ??
        const SizedBox();
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required this.notes,
    Key? key,
  }) : super(key: key);

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    if (notes.isEmpty)
      return Center(
        child: Text(local.emptyList),
      );

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => NoteItem(
        note: notes[index],
      ),
      itemCount: notes.length,
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({required this.note, Key? key}) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(note.content),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(note.creationDate.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
