// 주차 위치
import 'package:chajaba/feature/main/viewModel/register.dart';

class ParkingLocation {
  final int id; // 주차장 아이디(고유값)
  final String name; // 주차장 이름
  final String address; // 주차장 주소
  final String parkingImage; // 주차장 이미지
  final String parkingType; // 주차장 종류
  final bool isRepeat; // 반복 주차 여부

  final String? floor; // 주차장 층
  final String? section; // 주차장 구역
  final List<DayOfWeek>? days; // 주차 요일
  final String? startTime; // 주차 시작 시간
  final String? endTime; // 주차 종료 시간

  ParkingLocation({
    required this.id,
    required this.name,
    required this.address,
    required this.parkingImage,
    required this.parkingType,
    required this.isRepeat,
    required this.floor,
    required this.section,
    required this.days,
    required this.startTime,
    required this.endTime,
  });

  // 데이터베이스에 저장할 때 사용하는 메서드
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'parking_image': parkingImage,
      'parking_type': parkingType,
      'is_repeat': isRepeat,
      'floor': floor,
      'section': section,
      'days': days?.map((day) => day.shortName).toList(),
      'start_time': startTime,
      'end_time': endTime,
    };
  }

  static fromMap(Map<String, dynamic> map) {
    var parkingLocation = ParkingLocation(
      id: map['id'],
      name: map['name'],
      address: map['address'],
      parkingImage: map['parking_image'],
      parkingType: map['parking_type'],
      isRepeat: map['is_repeat'],
      floor: map['floor'],
      section: map['section'],
      days: map['days'] != null ? List.generate(map['days'].length, (i) => DayOfWeek.values.firstWhere((e) => e.shortName == map['days'][i])) : [],
      startTime: map['start_time'],
      endTime: map['end_time'],
    );
    return parkingLocation;
  }

  ParkingLocation copyWith({
    int? id,
    String? name,
    String? address,
    String? parkingImage,
    String? parkingType,
    bool? isRepeat,
    String? floor,
    String? section,
    List<DayOfWeek>? days,
    String? startTime,
    String? endTime,
  }) {
    return ParkingLocation(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      parkingImage: parkingImage ?? this.parkingImage,
      parkingType: parkingType ?? this.parkingType,
      isRepeat: isRepeat ?? this.isRepeat,
      floor: floor ?? this.floor,
      section: section ?? this.section,
      days: days ?? this.days,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }
}

enum DayOfWeek {
  monday('mon'),
  tuesday('tue'),
  wednesday('wed'),
  thursday('thu'),
  friday('fri'),
  saturday('sat'),
  sunday('sun');

  final String shortName;

  const DayOfWeek(this.shortName);
}
