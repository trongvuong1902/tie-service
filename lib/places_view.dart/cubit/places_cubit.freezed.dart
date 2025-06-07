// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlacesState {
  List<PlaceModel>? get places => throw _privateConstructorUsedError;

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlacesStateCopyWith<PlacesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesStateCopyWith<$Res> {
  factory $PlacesStateCopyWith(
          PlacesState value, $Res Function(PlacesState) then) =
      _$PlacesStateCopyWithImpl<$Res, PlacesState>;
  @useResult
  $Res call({List<PlaceModel>? places});
}

/// @nodoc
class _$PlacesStateCopyWithImpl<$Res, $Val extends PlacesState>
    implements $PlacesStateCopyWith<$Res> {
  _$PlacesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      places: freezed == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacesStateImplCopyWith<$Res>
    implements $PlacesStateCopyWith<$Res> {
  factory _$$PlacesStateImplCopyWith(
          _$PlacesStateImpl value, $Res Function(_$PlacesStateImpl) then) =
      __$$PlacesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlaceModel>? places});
}

/// @nodoc
class __$$PlacesStateImplCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res, _$PlacesStateImpl>
    implements _$$PlacesStateImplCopyWith<$Res> {
  __$$PlacesStateImplCopyWithImpl(
      _$PlacesStateImpl _value, $Res Function(_$PlacesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_$PlacesStateImpl(
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>?,
    ));
  }
}

/// @nodoc

class _$PlacesStateImpl implements _PlacesState {
  const _$PlacesStateImpl({final List<PlaceModel>? places}) : _places = places;

  final List<PlaceModel>? _places;
  @override
  List<PlaceModel>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlacesState(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesStateImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesStateImplCopyWith<_$PlacesStateImpl> get copyWith =>
      __$$PlacesStateImplCopyWithImpl<_$PlacesStateImpl>(this, _$identity);
}

abstract class _PlacesState implements PlacesState {
  const factory _PlacesState({final List<PlaceModel>? places}) =
      _$PlacesStateImpl;

  @override
  List<PlaceModel>? get places;

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlacesStateImplCopyWith<_$PlacesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
