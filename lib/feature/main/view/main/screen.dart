import 'package:chajaba/feature/main/viewModel/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'widget/01.top.dart';
part 'widget/02.list.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mainViewModelProvider);
    return state.when(
      data: (state) => _build(state),
      error: (error, stackTrace) => Container(),
      loading: () => Container(),
    );
  }

  Widget _build(MainState state) {
    return Scaffold(
      body: Column(
        children: [
          TopWidget(state: state),
          ParkingList(state: state),
        ],
      ),
    );
  }
}
