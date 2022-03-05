import 'package:go_router/go_router.dart';
import 'package:notes_app/presentation/add_note/add_note_page.dart';
import 'package:notes_app/presentation/home/home_page.dart';

final GoRouter router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: HomePage.path,
  routes: [
    GoRoute(
      name: HomePage.name,
      path: HomePage.path,
      builder: (_, state) => HomePage(key: state.pageKey),
    ),
    GoRoute(
      name: AddNotePage.name,
      path: AddNotePage.path,
      builder: (_, state) => AddNotePage(key: state.pageKey),
    ),
  ],
);
