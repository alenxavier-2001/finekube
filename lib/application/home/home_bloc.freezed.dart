// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDataInHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadDataInHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDataInHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInHome value) loadDataInHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadDataInHome value)? loadDataInHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInHome value)? loadDataInHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$LoadDataInHomeCopyWith<$Res> {
  factory _$$LoadDataInHomeCopyWith(
          _$LoadDataInHome value, $Res Function(_$LoadDataInHome) then) =
      __$$LoadDataInHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDataInHomeCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$LoadDataInHomeCopyWith<$Res> {
  __$$LoadDataInHomeCopyWithImpl(
      _$LoadDataInHome _value, $Res Function(_$LoadDataInHome) _then)
      : super(_value, (v) => _then(v as _$LoadDataInHome));

  @override
  _$LoadDataInHome get _value => super._value as _$LoadDataInHome;
}

/// @nodoc

class _$LoadDataInHome implements LoadDataInHome {
  const _$LoadDataInHome();

  @override
  String toString() {
    return 'HomeEvent.loadDataInHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDataInHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDataInHome,
  }) {
    return loadDataInHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadDataInHome,
  }) {
    return loadDataInHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDataInHome,
    required TResult orElse(),
  }) {
    if (loadDataInHome != null) {
      return loadDataInHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInHome value) loadDataInHome,
  }) {
    return loadDataInHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadDataInHome value)? loadDataInHome,
  }) {
    return loadDataInHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInHome value)? loadDataInHome,
    required TResult orElse(),
  }) {
    if (loadDataInHome != null) {
      return loadDataInHome(this);
    }
    return orElse();
  }
}

abstract class LoadDataInHome implements HomeEvent {
  const factory LoadDataInHome() = _$LoadDataInHome;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<HomeResp> get dataList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool hasError, List<HomeResp> dataList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? dataList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      dataList: dataList == freezed
          ? _value.dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<HomeResp>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool hasError, List<HomeResp> dataList});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? dataList = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      dataList: dataList == freezed
          ? _value._dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<HomeResp>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.hasError,
      required final List<HomeResp> dataList})
      : _dataList = dataList;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<HomeResp> _dataList;
  @override
  List<HomeResp> get dataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataList);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, hasError: $hasError, dataList: $dataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other._dataList, _dataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(_dataList));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final List<HomeResp> dataList}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<HomeResp> get dataList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
