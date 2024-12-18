// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  int get parkingLocationId => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;
  ParkingLocation? get parkingLocation => throw _privateConstructorUsedError;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {int parkingLocationId, int step, ParkingLocation? parkingLocation});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parkingLocationId = null,
    Object? step = null,
    Object? parkingLocation = freezed,
  }) {
    return _then(_value.copyWith(
      parkingLocationId: null == parkingLocationId
          ? _value.parkingLocationId
          : parkingLocationId // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      parkingLocation: freezed == parkingLocation
          ? _value.parkingLocation
          : parkingLocation // ignore: cast_nullable_to_non_nullable
              as ParkingLocation?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int parkingLocationId, int step, ParkingLocation? parkingLocation});
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parkingLocationId = null,
    Object? step = null,
    Object? parkingLocation = freezed,
  }) {
    return _then(_$RegisterStateImpl(
      parkingLocationId: null == parkingLocationId
          ? _value.parkingLocationId
          : parkingLocationId // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      parkingLocation: freezed == parkingLocation
          ? _value.parkingLocation
          : parkingLocation // ignore: cast_nullable_to_non_nullable
              as ParkingLocation?,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl implements _RegisterState {
  const _$RegisterStateImpl(
      {this.parkingLocationId = 0, this.step = 0, this.parkingLocation = null});

  @override
  @JsonKey()
  final int parkingLocationId;
  @override
  @JsonKey()
  final int step;
  @override
  @JsonKey()
  final ParkingLocation? parkingLocation;

  @override
  String toString() {
    return 'RegisterState(parkingLocationId: $parkingLocationId, step: $step, parkingLocation: $parkingLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.parkingLocationId, parkingLocationId) ||
                other.parkingLocationId == parkingLocationId) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.parkingLocation, parkingLocation) ||
                other.parkingLocation == parkingLocation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, parkingLocationId, step, parkingLocation);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final int parkingLocationId,
      final int step,
      final ParkingLocation? parkingLocation}) = _$RegisterStateImpl;

  @override
  int get parkingLocationId;
  @override
  int get step;
  @override
  ParkingLocation? get parkingLocation;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
