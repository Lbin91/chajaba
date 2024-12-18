part of '../screen.dart';

class TopWidget extends ConsumerWidget {
  const TopWidget({super.key, required this.state});

  final MainState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        _buildTopView(context, ref),
      ],
    );
  }

  Widget _buildTopView(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '어따댐(ParkWhere)',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(),
          GestureDetector(
            onTap: () {
              // 주차장 등록 페이지로 이동
              context.pushNamed(
                AppRoute.register.name,
                pathParameters: {'parkingLocationId': '0'},
              );
            },
            child: Icon(
              Icons.add,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
