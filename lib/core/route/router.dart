// Package imports:
import 'dart:async';

import 'package:chajaba/feature/main/view/main/screen.dart';
import 'package:chajaba/feature/main/view/register/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

enum AppRoute {
  main,
  register,
}

final rootNavigatorKey = GlobalKey<NavigatorState>();

final currentRouteProvider = StateProvider<String>((ref) => '/');

@riverpod
GoRouter goRouter(Ref ref) {
  final currentRoute = ref.watch(currentRouteProvider);

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: currentRoute,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: AppRoute.main.name,
        path: '/',
        builder: (context, state) => MainScreen(),
      ),
      GoRoute(
        name: AppRoute.register.name,
        path: '/register/:parkingLocationId',
        builder: (context, state) => RigsterView(parkingLocationId: int.parse(state.pathParameters['parkingLocationId'] ?? '0')),
      ),
    ],
    observers: [
      GoRouterObserver(ref),
    ],
    redirect: (context, state) => null,
  );
}

class GoRouterObserver extends NavigatorObserver {
  final Ref ref;
  GoRouterObserver(this.ref);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    ref.read(currentRouteProvider.notifier).update((_) => route.settings.name ?? '/');
  }
}
