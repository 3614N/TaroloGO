import 'package:go_router/go_router.dart';
import 'package:tarologo/screens/navigation_bar.dart';
import 'package:tarologo/screens/chat/messenger.dart';
import 'package:tarologo/screens/service/favorites.dart';
import 'package:tarologo/screens/other/profile.dart';
import 'package:tarologo/screens/service/tarot_list.dart';
import 'package:tarologo/screens/chat/chat.dart' as screen_chat;

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
              path: '/messenger',
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
    // Separate route for Chat screen without navigation bar
    GoRoute(
      path: '/chat/:chatId',
      builder: (context, state) {
        final chatId = int.parse(state.pathParameters['chatId']!);
        return screen_chat.Chat(chatId: chatId);
      },
    ),
  ],
);
