part of '../screen.dart';

class ParkingList extends ConsumerWidget {
  const ParkingList({super.key, required this.state});

  final MainState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ListView.builder(
        itemCount: state.parkingLocations.isEmpty ? 1 : state.parkingLocations.length,
        itemBuilder: (context, index) {
          return state.parkingLocations.isEmpty
              ? _buildParkingItemEmpty(context, ref)
              : _buildParkingItem(context, ref, state.parkingLocations[index]);
        },
      ),
    );
  }

  Widget _buildParkingItem(BuildContext context, WidgetRef ref, ParkingLocation parkingLocation) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.white,
    );
  }

  // 둥글게 깎기와 그림자 처리 추가
  Widget _buildParkingItemEmpty(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        width: 328,
        height: 328 * (0.75),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Text(
            '주차장 데이터를 등록하세요',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
