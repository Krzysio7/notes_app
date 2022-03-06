import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/common/custom_hooks/use_cubit.dart';
import 'package:notes_app/common/custom_hooks/use_cubit_listener.dart';
import 'package:notes_app/presentation/add_note/add_note_cubit.dart';
import 'package:notes_app/presentation/core/form_validators.dart';
import 'package:notes_app/presentation/core/shared.dart';
import 'package:notes_app/presentation/home/home_page.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({Key? key}) : super(key: key);

  static void push(BuildContext context) => context.goNamed(
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
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: _Content(),
      ),
    );
  }
}

class _Content extends HookWidget {
  const _Content({Key? key}) : super(key: key);

  void _cubitStateListener(AddNoteState state, BuildContext context) {
    state.maybeWhen(
      error: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error),
          ),
        );
      },
      success: () => HomePage.go(context),
      orElse: () {},
    );
  }

  bool _shouldBuild(AddNoteState state) {
    return state is AddNoteStateLoading || state is AddNoteStateIdle;
  }

  bool _shouldListen(AddNoteState state) {
    return state is AddNoteStateError || state is AddNoteStateSuccess;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<AddNoteCubit>();
    final state = useCubitBuilder(cubit, buildWhen: _shouldBuild);
    useCubitListener(cubit, _cubitStateListener, listenWhen: _shouldListen);

    final tec = useTextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            validator: minLength(5),
            minLines: 3,
            maxLines: null,
            controller: tec,
            decoration: InputDecoration(
                labelText: local.noteField,
                border: const OutlineInputBorder(),
                errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5))),
          ),
          ButtonOrLoader(
            isLoading: state is AddNoteStateLoading,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                cubit.saveNote(tec.text);
              }
            },
          )
        ],
      ),
    );
  }
}

class ButtonOrLoader extends StatelessWidget {
  const ButtonOrLoader({required this.isLoading, this.onPressed, Key? key})
      : super(key: key);

  final bool isLoading;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : TextButton(
            onPressed: onPressed,
            child: Text(local.saveButton),
          );
  }
}
