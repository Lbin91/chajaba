part of '../screen.dart';

class TopWidget extends ConsumerWidget {
  const TopWidget({super.key, required this.state});

  final MainState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
      height: 80,
      color: Colors.white,
      child: Row(
        children: [
          Text(
            '차자바',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(),
          Icon(
            Icons.car_rental,
            size: 24,
          ),
        ],
      ),
    );
  }
}
