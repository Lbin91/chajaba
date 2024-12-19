// Flutter imports:
import 'package:chajaba/core/route/router.dart';
import 'package:chajaba/feature/main/viewModel/main.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
// part 'app.g.dart';

class AppStartupWidget extends ConsumerStatefulWidget {
  const AppStartupWidget({super.key});

  @override
  ConsumerState<AppStartupWidget> createState() {
    return _AppStartupWidgetState();
  }
}

class _AppStartupWidgetState extends ConsumerState<AppStartupWidget> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    final goRouter = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      designSize: const Size(360, 781),
      child: MaterialApp.router(
        routerConfig: goRouter,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return child!;
        },
      ),
    );
  }
}
