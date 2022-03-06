import 'package:flutter/material.dart';
import 'package:notes_app/presentation/widgets/custom_progress_indicator.dart';

class PageLoader extends StatelessWidget {
  const PageLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: CustomProgressIndicator(),
      ),
    );
  }
}
