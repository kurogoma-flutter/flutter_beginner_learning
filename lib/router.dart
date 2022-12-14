import 'package:flutter/material.dart';
import 'package:flutter_beginner_learning/00_task_list/task_list.dart';
import 'package:flutter_beginner_learning/01_app_base/explain.dart';
import 'package:flutter_beginner_learning/02_widget_area/explain.dart';
import 'package:flutter_beginner_learning/03_line_up/explain.dart';
import 'package:flutter_beginner_learning/04_scroll/explain.dart';
import 'package:flutter_beginner_learning/05_style/explain.dart';
import 'package:flutter_beginner_learning/06_image/explain.dart';
import 'package:flutter_beginner_learning/07_button/explain.dart';
import 'package:flutter_beginner_learning/08_params/explain.dart';
import 'package:flutter_beginner_learning/09_state/explain.dart';
import 'package:flutter_beginner_learning/10_navigator/explain.dart';
import 'package:flutter_beginner_learning/11_form/explain.dart';
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
    GoRoute(
      path: '/task6',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task6(),
      ),
    ),
    GoRoute(
      path: '/task7',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task7(),
      ),
    ),
    GoRoute(
      path: '/task8',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task8(),
      ),
    ),
    GoRoute(
      path: '/task9',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task9(),
      ),
    ),
    GoRoute(
      path: '/task10',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task10(),
      ),
    ),
    GoRoute(
      path: '/task11',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const Task11(),
      ),
    ),
  ],
);

/// ??????????????????????????????????????????
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
