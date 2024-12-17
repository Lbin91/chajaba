import 'package:chajaba/core/db/databaseHelper.dart';
import 'package:chajaba/feature/main/model/main/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default([]) List<ParkingLocation> parkingLocations,
  }) = _MainState;
}

@riverpod
class MainViewModel extends _$MainViewModel {
  @override
  Future<MainState> build() async {
    // 내부 저장소
    final parkingLocations = await DatabaseHelper().getParkingLocations();
    return MainState(parkingLocations: parkingLocations);
  }
}
