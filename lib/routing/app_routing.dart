import 'package:go_router/go_router.dart';
import 'package:tarologo/screens/navigation_bar.dart';
import 'package:tarologo/screens/chat/messenger.dart';
import 'package:tarologo/screens/service/favorites.dart';
import 'package:tarologo/screens/other/profile.dart';
import 'package:tarologo/screens/service/tarot_list.dart';

final router = GoRouter(
  initialLocation: '/search',
  routes: [
    // BottomNavigationBar
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          Navigation(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/search',
              builder: (context, state) => const SearchPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorites',
              builder: (context, state) => const Favorites(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/chat',
              builder: (context, state) => const Messenger(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const UserProfile(),
            ),
          ],
        ),
      ],
    ),
  ],
);
