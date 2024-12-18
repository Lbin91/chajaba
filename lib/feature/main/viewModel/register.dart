import 'package:chajaba/core/db/databaseHelper.dart';
import 'package:chajaba/feature/main/model/main/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register.freezed.dart';
part 'register.g.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(0) int parkingLocationId,
    @Default(0) int step,
    @Default(null) ParkingLocation? parkingLocation,
  }) = _RegisterState;
}

@riverpod
class RegisterViewModel extends _$RegisterViewModel {
  @override
  Future<RegisterState> build(int parkingLocationId) async {
    final parkingLocation = await getParkingLocation(parkingLocationId);
    return RegisterState(parkingLocationId: parkingLocationId, parkingLocation: parkingLocation);
  }

  /// id가 0이라면 빈 주차장 데이터를 가져오고 아니라면 데이터베이스에서 주차장 데이터를 가져옵니다.
  Future<ParkingLocation> getParkingLocation(int parkingLocationId) async {
    if (parkingLocationId == 0) {
      return ParkingLocation(
        id: 0,
        name: '',
        address: '',
        parkingType: '',
        isRepeat: false,
        floor: '',
        parkingImage: '',
        section: '',
        days: [],
        startTime: '',
        endTime: '',
      );
    } else {
      return await DatabaseHelper().getParkingLocation(parkingLocationId);
    }
  }

  void nextStep(String beforeValue) {
    state.whenData((value) {
      var parkingLocation = value.parkingLocation;
      // step이 0이면 ParkingLocation의 name을 업데이트, 1이면 floor를 업데이트, 2이면 section을 업데이트
      if (value.step == 0) {
        parkingLocation = parkingLocation?.copyWith(name: beforeValue);
      } else if (value.step == 1) {
        parkingLocation = parkingLocation?.copyWith(floor: beforeValue);
      } else if (value.step == 2) {
        parkingLocation = parkingLocation?.copyWith(section: beforeValue);
      }
      state = AsyncValue.data(value.copyWith(step: value.step + 1, parkingLocation: parkingLocation));
    });
  }

  void moveToTargetStep(int targetStep) {
    state.whenData((value) {
      state = AsyncValue.data(value.copyWith(step: targetStep));
    });
  }

  void updateRepeat(bool isRepeat) {
    state.whenData((value) {
      state = AsyncValue.data(value.copyWith(parkingLocation: value.parkingLocation?.copyWith(isRepeat: isRepeat)));
    });
  }

  void done() {
    state.whenData((value) {
      state = AsyncValue.data(value.copyWith(step: value.step + 1));
    });
  }
}
