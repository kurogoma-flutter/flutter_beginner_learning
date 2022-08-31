import 'package:flutter/material.dart';
import 'package:flutter_beginner_learning/00_task_list/task_list.dart';
import 'package:flutter_beginner_learning/01_app_base/explain.dart';
import 'package:flutter_beginner_learning/02_widget_area/explain.dart';
import 'package:flutter_beginner_learning/03_line_up/explain.dart';
import 'package:flutter_beginner_learning/04_scroll/explain.dart';
import 'package:flutter_beginner_learning/05_style/explain.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const TaskListPage(),
      ),
    ),
    GoRoute(
      path: '/task1',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task1(),
      ),
    ),
    GoRoute(
      path: '/task2',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task2(),
      ),
    ),
    GoRoute(
      path: '/task3',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task3(),
      ),
    ),
    GoRoute(
      path: '/task4',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task4(),
      ),
    ),
    GoRoute(
      path: '/task5',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task5(),
      ),
    ),
  ],
);

/// 画面遷移アニメーションの排除
class NoAnimationTransition extends CustomTransitionPage {
  const NoAnimationTransition({
    required Widget child,
    String? name,
    Object? arguments,
    String? restorationId,
    LocalKey? key,
  }) : super(
          transitionsBuilder: _transitionsBuilder,
          transitionDuration: const Duration(milliseconds: 0),
          key: key,
          name: name,
          arguments: arguments,
          restorationId: restorationId,
          child: child,
        );

  static Widget _transitionsBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
