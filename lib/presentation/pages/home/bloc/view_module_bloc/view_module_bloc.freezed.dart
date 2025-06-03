// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_module_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ViewModuleState {

 Status get status; ErrorResponse get error; int get tabId; int get currentPage; bool get isEndOfPage; List<Widget> get viewModules;
/// Create a copy of ViewModuleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewModuleStateCopyWith<ViewModuleState> get copyWith => _$ViewModuleStateCopyWithImpl<ViewModuleState>(this as ViewModuleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewModuleState&&const DeepCollectionEquality().equals(other.status, status)&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.tabId, tabId) || other.tabId == tabId)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isEndOfPage, isEndOfPage) || other.isEndOfPage == isEndOfPage)&&const DeepCollectionEquality().equals(other.viewModules, viewModules));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(status),const DeepCollectionEquality().hash(error),tabId,currentPage,isEndOfPage,const DeepCollectionEquality().hash(viewModules));

@override
String toString() {
  return 'ViewModuleState(status: $status, error: $error, tabId: $tabId, currentPage: $currentPage, isEndOfPage: $isEndOfPage, viewModules: $viewModules)';
}


}

/// @nodoc
abstract mixin class $ViewModuleStateCopyWith<$Res>  {
  factory $ViewModuleStateCopyWith(ViewModuleState value, $Res Function(ViewModuleState) _then) = _$ViewModuleStateCopyWithImpl;
@useResult
$Res call({
 Status status, ErrorResponse error, int tabId, int currentPage, bool isEndOfPage, List<Widget> viewModules
});




}
/// @nodoc
class _$ViewModuleStateCopyWithImpl<$Res>
    implements $ViewModuleStateCopyWith<$Res> {
  _$ViewModuleStateCopyWithImpl(this._self, this._then);

  final ViewModuleState _self;
  final $Res Function(ViewModuleState) _then;

/// Create a copy of ViewModuleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? error = freezed,Object? tabId = null,Object? currentPage = null,Object? isEndOfPage = null,Object? viewModules = null,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,tabId: null == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isEndOfPage: null == isEndOfPage ? _self.isEndOfPage : isEndOfPage // ignore: cast_nullable_to_non_nullable
as bool,viewModules: null == viewModules ? _self.viewModules : viewModules // ignore: cast_nullable_to_non_nullable
as List<Widget>,
  ));
}

}


/// @nodoc


class _ViewModuleState implements ViewModuleState {
   _ViewModuleState({this.status = Status.initial, this.error = const ErrorResponse(), this.tabId = 0, this.currentPage = 1, this.isEndOfPage = false, final  List<Widget> viewModules = const <Widget>[]}): _viewModules = viewModules;
  

@override@JsonKey() final  Status status;
@override@JsonKey() final  ErrorResponse error;
@override@JsonKey() final  int tabId;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool isEndOfPage;
 final  List<Widget> _viewModules;
@override@JsonKey() List<Widget> get viewModules {
  if (_viewModules is EqualUnmodifiableListView) return _viewModules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_viewModules);
}


/// Create a copy of ViewModuleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewModuleStateCopyWith<_ViewModuleState> get copyWith => __$ViewModuleStateCopyWithImpl<_ViewModuleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewModuleState&&const DeepCollectionEquality().equals(other.status, status)&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.tabId, tabId) || other.tabId == tabId)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isEndOfPage, isEndOfPage) || other.isEndOfPage == isEndOfPage)&&const DeepCollectionEquality().equals(other._viewModules, _viewModules));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(status),const DeepCollectionEquality().hash(error),tabId,currentPage,isEndOfPage,const DeepCollectionEquality().hash(_viewModules));

@override
String toString() {
  return 'ViewModuleState(status: $status, error: $error, tabId: $tabId, currentPage: $currentPage, isEndOfPage: $isEndOfPage, viewModules: $viewModules)';
}


}

/// @nodoc
abstract mixin class _$ViewModuleStateCopyWith<$Res> implements $ViewModuleStateCopyWith<$Res> {
  factory _$ViewModuleStateCopyWith(_ViewModuleState value, $Res Function(_ViewModuleState) _then) = __$ViewModuleStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, ErrorResponse error, int tabId, int currentPage, bool isEndOfPage, List<Widget> viewModules
});




}
/// @nodoc
class __$ViewModuleStateCopyWithImpl<$Res>
    implements _$ViewModuleStateCopyWith<$Res> {
  __$ViewModuleStateCopyWithImpl(this._self, this._then);

  final _ViewModuleState _self;
  final $Res Function(_ViewModuleState) _then;

/// Create a copy of ViewModuleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? error = freezed,Object? tabId = null,Object? currentPage = null,Object? isEndOfPage = null,Object? viewModules = null,}) {
  return _then(_ViewModuleState(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,tabId: null == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isEndOfPage: null == isEndOfPage ? _self.isEndOfPage : isEndOfPage // ignore: cast_nullable_to_non_nullable
as bool,viewModules: null == viewModules ? _self._viewModules : viewModules // ignore: cast_nullable_to_non_nullable
as List<Widget>,
  ));
}


}

// dart format on
