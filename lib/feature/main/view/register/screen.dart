import 'package:chajaba/feature/main/viewModel/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'widget/00.background.dart';
part 'widget/01.info.dart';

class RigsterView extends ConsumerWidget {
  const RigsterView({super.key, required this.parkingLocationId});

  final int parkingLocationId; // 0 이면 신규 등록 이고 1 이상이면 수정 페이지 이다.

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerViewModelProvider(parkingLocationId));
    return state.when(
      data: (state) => _build(state, ref),
      error: (error, stackTrace) => Container(),
      loading: () => Container(),
    );
  }

  Widget _build(RegisterState state, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('등록하기',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          GestureDetector(
            onTap: () {
              ref.read(registerViewModelProvider(parkingLocationId).notifier).done();
            },
            child: Center(
                child: Row(
              children: [
                Text('완료',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(width: 16),
              ],
            )),
          ),
        ],
      ),
      body: Center(
        child: InfoWidget(state: state, parkingLocationId: parkingLocationId),
      ),
    );
  }
}
