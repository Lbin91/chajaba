import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'widget/00.background.dart';
part 'widget/01.info.dart';

class RigsterView extends ConsumerWidget {
  const RigsterView({super.key, required this.parkingLocationId});

  final int parkingLocationId; // 0 이면 신규 등록 이고 1 이상이면 수정 페이지 이다.

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
