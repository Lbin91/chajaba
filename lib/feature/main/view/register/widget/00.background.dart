part of '../screen.dart';

class BackgroundView extends StatelessWidget {
  const BackgroundView({super.key});

  // 검정색의 0.8 투명도
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(0.8),
    );
  }
}
