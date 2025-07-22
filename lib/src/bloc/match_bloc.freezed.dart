// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatchEvent()';
}


}

/// @nodoc
class $MatchEventCopyWith<$Res>  {
$MatchEventCopyWith(MatchEvent _, $Res Function(MatchEvent) __);
}


/// Adds pattern-matching-related methods to [MatchEvent].
extension MatchEventPatterns on MatchEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadMatches value)?  loadMatches,TResult Function( FilterChanged value)?  filterChanged,TResult Function( OddSelected value)?  oddSelected,TResult Function( ManualOddsUpdateRequested value)?  manualOddsUpdateRequested,TResult Function( _OddsUpdated value)?  oddsUpdated,TResult Function( _HighlightExpired value)?  highlightExpired,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadMatches() when loadMatches != null:
return loadMatches(_that);case FilterChanged() when filterChanged != null:
return filterChanged(_that);case OddSelected() when oddSelected != null:
return oddSelected(_that);case ManualOddsUpdateRequested() when manualOddsUpdateRequested != null:
return manualOddsUpdateRequested(_that);case _OddsUpdated() when oddsUpdated != null:
return oddsUpdated(_that);case _HighlightExpired() when highlightExpired != null:
return highlightExpired(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadMatches value)  loadMatches,required TResult Function( FilterChanged value)  filterChanged,required TResult Function( OddSelected value)  oddSelected,required TResult Function( ManualOddsUpdateRequested value)  manualOddsUpdateRequested,required TResult Function( _OddsUpdated value)  oddsUpdated,required TResult Function( _HighlightExpired value)  highlightExpired,}){
final _that = this;
switch (_that) {
case LoadMatches():
return loadMatches(_that);case FilterChanged():
return filterChanged(_that);case OddSelected():
return oddSelected(_that);case ManualOddsUpdateRequested():
return manualOddsUpdateRequested(_that);case _OddsUpdated():
return oddsUpdated(_that);case _HighlightExpired():
return highlightExpired(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadMatches value)?  loadMatches,TResult? Function( FilterChanged value)?  filterChanged,TResult? Function( OddSelected value)?  oddSelected,TResult? Function( ManualOddsUpdateRequested value)?  manualOddsUpdateRequested,TResult? Function( _OddsUpdated value)?  oddsUpdated,TResult? Function( _HighlightExpired value)?  highlightExpired,}){
final _that = this;
switch (_that) {
case LoadMatches() when loadMatches != null:
return loadMatches(_that);case FilterChanged() when filterChanged != null:
return filterChanged(_that);case OddSelected() when oddSelected != null:
return oddSelected(_that);case ManualOddsUpdateRequested() when manualOddsUpdateRequested != null:
return manualOddsUpdateRequested(_that);case _OddsUpdated() when oddsUpdated != null:
return oddsUpdated(_that);case _HighlightExpired() when highlightExpired != null:
return highlightExpired(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool forceRefresh)?  loadMatches,TResult Function( SportType newFilter)?  filterChanged,TResult Function( int matchId,  String oddKey)?  oddSelected,TResult Function( int matchId)?  manualOddsUpdateRequested,TResult Function( OddsModel update)?  oddsUpdated,TResult Function( int matchId)?  highlightExpired,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadMatches() when loadMatches != null:
return loadMatches(_that.forceRefresh);case FilterChanged() when filterChanged != null:
return filterChanged(_that.newFilter);case OddSelected() when oddSelected != null:
return oddSelected(_that.matchId,_that.oddKey);case ManualOddsUpdateRequested() when manualOddsUpdateRequested != null:
return manualOddsUpdateRequested(_that.matchId);case _OddsUpdated() when oddsUpdated != null:
return oddsUpdated(_that.update);case _HighlightExpired() when highlightExpired != null:
return highlightExpired(_that.matchId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool forceRefresh)  loadMatches,required TResult Function( SportType newFilter)  filterChanged,required TResult Function( int matchId,  String oddKey)  oddSelected,required TResult Function( int matchId)  manualOddsUpdateRequested,required TResult Function( OddsModel update)  oddsUpdated,required TResult Function( int matchId)  highlightExpired,}) {final _that = this;
switch (_that) {
case LoadMatches():
return loadMatches(_that.forceRefresh);case FilterChanged():
return filterChanged(_that.newFilter);case OddSelected():
return oddSelected(_that.matchId,_that.oddKey);case ManualOddsUpdateRequested():
return manualOddsUpdateRequested(_that.matchId);case _OddsUpdated():
return oddsUpdated(_that.update);case _HighlightExpired():
return highlightExpired(_that.matchId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool forceRefresh)?  loadMatches,TResult? Function( SportType newFilter)?  filterChanged,TResult? Function( int matchId,  String oddKey)?  oddSelected,TResult? Function( int matchId)?  manualOddsUpdateRequested,TResult? Function( OddsModel update)?  oddsUpdated,TResult? Function( int matchId)?  highlightExpired,}) {final _that = this;
switch (_that) {
case LoadMatches() when loadMatches != null:
return loadMatches(_that.forceRefresh);case FilterChanged() when filterChanged != null:
return filterChanged(_that.newFilter);case OddSelected() when oddSelected != null:
return oddSelected(_that.matchId,_that.oddKey);case ManualOddsUpdateRequested() when manualOddsUpdateRequested != null:
return manualOddsUpdateRequested(_that.matchId);case _OddsUpdated() when oddsUpdated != null:
return oddsUpdated(_that.update);case _HighlightExpired() when highlightExpired != null:
return highlightExpired(_that.matchId);case _:
  return null;

}
}

}

/// @nodoc


class LoadMatches implements MatchEvent {
  const LoadMatches({this.forceRefresh = false});
  

@JsonKey() final  bool forceRefresh;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMatchesCopyWith<LoadMatches> get copyWith => _$LoadMatchesCopyWithImpl<LoadMatches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMatches&&(identical(other.forceRefresh, forceRefresh) || other.forceRefresh == forceRefresh));
}


@override
int get hashCode => Object.hash(runtimeType,forceRefresh);

@override
String toString() {
  return 'MatchEvent.loadMatches(forceRefresh: $forceRefresh)';
}


}

/// @nodoc
abstract mixin class $LoadMatchesCopyWith<$Res> implements $MatchEventCopyWith<$Res> {
  factory $LoadMatchesCopyWith(LoadMatches value, $Res Function(LoadMatches) _then) = _$LoadMatchesCopyWithImpl;
@useResult
$Res call({
 bool forceRefresh
});




}
/// @nodoc
class _$LoadMatchesCopyWithImpl<$Res>
    implements $LoadMatchesCopyWith<$Res> {
  _$LoadMatchesCopyWithImpl(this._self, this._then);

  final LoadMatches _self;
  final $Res Function(LoadMatches) _then;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? forceRefresh = null,}) {
  return _then(LoadMatches(
forceRefresh: null == forceRefresh ? _self.forceRefresh : forceRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class FilterChanged implements MatchEvent {
  const FilterChanged({required this.newFilter});
  

 final  SportType newFilter;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterChangedCopyWith<FilterChanged> get copyWith => _$FilterChangedCopyWithImpl<FilterChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterChanged&&(identical(other.newFilter, newFilter) || other.newFilter == newFilter));
}


@override
int get hashCode => Object.hash(runtimeType,newFilter);

@override
String toString() {
  return 'MatchEvent.filterChanged(newFilter: $newFilter)';
}


}

/// @nodoc
abstract mixin class $FilterChangedCopyWith<$Res> implements $MatchEventCopyWith<$Res> {
  factory $FilterChangedCopyWith(FilterChanged value, $Res Function(FilterChanged) _then) = _$FilterChangedCopyWithImpl;
@useResult
$Res call({
 SportType newFilter
});




}
/// @nodoc
class _$FilterChangedCopyWithImpl<$Res>
    implements $FilterChangedCopyWith<$Res> {
  _$FilterChangedCopyWithImpl(this._self, this._then);

  final FilterChanged _self;
  final $Res Function(FilterChanged) _then;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newFilter = null,}) {
  return _then(FilterChanged(
newFilter: null == newFilter ? _self.newFilter : newFilter // ignore: cast_nullable_to_non_nullable
as SportType,
  ));
}


}

/// @nodoc


class OddSelected implements MatchEvent {
  const OddSelected({required this.matchId, required this.oddKey});
  

 final  int matchId;
 final  String oddKey;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OddSelectedCopyWith<OddSelected> get copyWith => _$OddSelectedCopyWithImpl<OddSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OddSelected&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.oddKey, oddKey) || other.oddKey == oddKey));
}


@override
int get hashCode => Object.hash(runtimeType,matchId,oddKey);

@override
String toString() {
  return 'MatchEvent.oddSelected(matchId: $matchId, oddKey: $oddKey)';
}


}

/// @nodoc
abstract mixin class $OddSelectedCopyWith<$Res> implements $MatchEventCopyWith<$Res> {
  factory $OddSelectedCopyWith(OddSelected value, $Res Function(OddSelected) _then) = _$OddSelectedCopyWithImpl;
@useResult
$Res call({
 int matchId, String oddKey
});




}
/// @nodoc
class _$OddSelectedCopyWithImpl<$Res>
    implements $OddSelectedCopyWith<$Res> {
  _$OddSelectedCopyWithImpl(this._self, this._then);

  final OddSelected _self;
  final $Res Function(OddSelected) _then;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? oddKey = null,}) {
  return _then(OddSelected(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,oddKey: null == oddKey ? _self.oddKey : oddKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ManualOddsUpdateRequested implements MatchEvent {
  const ManualOddsUpdateRequested({required this.matchId});
  

 final  int matchId;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManualOddsUpdateRequestedCopyWith<ManualOddsUpdateRequested> get copyWith => _$ManualOddsUpdateRequestedCopyWithImpl<ManualOddsUpdateRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualOddsUpdateRequested&&(identical(other.matchId, matchId) || other.matchId == matchId));
}


@override
int get hashCode => Object.hash(runtimeType,matchId);

@override
String toString() {
  return 'MatchEvent.manualOddsUpdateRequested(matchId: $matchId)';
}


}

/// @nodoc
abstract mixin class $ManualOddsUpdateRequestedCopyWith<$Res> implements $MatchEventCopyWith<$Res> {
  factory $ManualOddsUpdateRequestedCopyWith(ManualOddsUpdateRequested value, $Res Function(ManualOddsUpdateRequested) _then) = _$ManualOddsUpdateRequestedCopyWithImpl;
@useResult
$Res call({
 int matchId
});




}
/// @nodoc
class _$ManualOddsUpdateRequestedCopyWithImpl<$Res>
    implements $ManualOddsUpdateRequestedCopyWith<$Res> {
  _$ManualOddsUpdateRequestedCopyWithImpl(this._self, this._then);

  final ManualOddsUpdateRequested _self;
  final $Res Function(ManualOddsUpdateRequested) _then;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? matchId = null,}) {
  return _then(ManualOddsUpdateRequested(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _OddsUpdated implements MatchEvent {
  const _OddsUpdated(this.update);
  

 final  OddsModel update;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OddsUpdatedCopyWith<_OddsUpdated> get copyWith => __$OddsUpdatedCopyWithImpl<_OddsUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OddsUpdated&&(identical(other.update, update) || other.update == update));
}


@override
int get hashCode => Object.hash(runtimeType,update);

@override
String toString() {
  return 'MatchEvent.oddsUpdated(update: $update)';
}


}

/// @nodoc
abstract mixin class _$OddsUpdatedCopyWith<$Res> implements $MatchEventCopyWith<$Res> {
  factory _$OddsUpdatedCopyWith(_OddsUpdated value, $Res Function(_OddsUpdated) _then) = __$OddsUpdatedCopyWithImpl;
@useResult
$Res call({
 OddsModel update
});




}
/// @nodoc
class __$OddsUpdatedCopyWithImpl<$Res>
    implements _$OddsUpdatedCopyWith<$Res> {
  __$OddsUpdatedCopyWithImpl(this._self, this._then);

  final _OddsUpdated _self;
  final $Res Function(_OddsUpdated) _then;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? update = null,}) {
  return _then(_OddsUpdated(
null == update ? _self.update : update // ignore: cast_nullable_to_non_nullable
as OddsModel,
  ));
}


}

/// @nodoc


class _HighlightExpired implements MatchEvent {
  const _HighlightExpired(this.matchId);
  

 final  int matchId;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HighlightExpiredCopyWith<_HighlightExpired> get copyWith => __$HighlightExpiredCopyWithImpl<_HighlightExpired>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HighlightExpired&&(identical(other.matchId, matchId) || other.matchId == matchId));
}


@override
int get hashCode => Object.hash(runtimeType,matchId);

@override
String toString() {
  return 'MatchEvent.highlightExpired(matchId: $matchId)';
}


}

/// @nodoc
abstract mixin class _$HighlightExpiredCopyWith<$Res> implements $MatchEventCopyWith<$Res> {
  factory _$HighlightExpiredCopyWith(_HighlightExpired value, $Res Function(_HighlightExpired) _then) = __$HighlightExpiredCopyWithImpl;
@useResult
$Res call({
 int matchId
});




}
/// @nodoc
class __$HighlightExpiredCopyWithImpl<$Res>
    implements _$HighlightExpiredCopyWith<$Res> {
  __$HighlightExpiredCopyWithImpl(this._self, this._then);

  final _HighlightExpired _self;
  final $Res Function(_HighlightExpired) _then;

/// Create a copy of MatchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? matchId = null,}) {
  return _then(_HighlightExpired(
null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MatchState {

 MatchStatus get status; List<MatchModel> get allMatches; List<MatchModel> get filteredMatches; SportType? get selectedFilter; Map<int, String> get selectedOdds; Object? get error;
/// Create a copy of MatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchStateCopyWith<MatchState> get copyWith => _$MatchStateCopyWithImpl<MatchState>(this as MatchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.allMatches, allMatches)&&const DeepCollectionEquality().equals(other.filteredMatches, filteredMatches)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&const DeepCollectionEquality().equals(other.selectedOdds, selectedOdds)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(allMatches),const DeepCollectionEquality().hash(filteredMatches),selectedFilter,const DeepCollectionEquality().hash(selectedOdds),const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'MatchState(status: $status, allMatches: $allMatches, filteredMatches: $filteredMatches, selectedFilter: $selectedFilter, selectedOdds: $selectedOdds, error: $error)';
}


}

/// @nodoc
abstract mixin class $MatchStateCopyWith<$Res>  {
  factory $MatchStateCopyWith(MatchState value, $Res Function(MatchState) _then) = _$MatchStateCopyWithImpl;
@useResult
$Res call({
 MatchStatus status, List<MatchModel> allMatches, List<MatchModel> filteredMatches, SportType? selectedFilter, Map<int, String> selectedOdds, Object? error
});




}
/// @nodoc
class _$MatchStateCopyWithImpl<$Res>
    implements $MatchStateCopyWith<$Res> {
  _$MatchStateCopyWithImpl(this._self, this._then);

  final MatchState _self;
  final $Res Function(MatchState) _then;

/// Create a copy of MatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? allMatches = null,Object? filteredMatches = null,Object? selectedFilter = freezed,Object? selectedOdds = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MatchStatus,allMatches: null == allMatches ? _self.allMatches : allMatches // ignore: cast_nullable_to_non_nullable
as List<MatchModel>,filteredMatches: null == filteredMatches ? _self.filteredMatches : filteredMatches // ignore: cast_nullable_to_non_nullable
as List<MatchModel>,selectedFilter: freezed == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as SportType?,selectedOdds: null == selectedOdds ? _self.selectedOdds : selectedOdds // ignore: cast_nullable_to_non_nullable
as Map<int, String>,error: freezed == error ? _self.error : error ,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchState].
extension MatchStatePatterns on MatchState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchState value)  $default,){
final _that = this;
switch (_that) {
case _MatchState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchState value)?  $default,){
final _that = this;
switch (_that) {
case _MatchState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MatchStatus status,  List<MatchModel> allMatches,  List<MatchModel> filteredMatches,  SportType? selectedFilter,  Map<int, String> selectedOdds,  Object? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchState() when $default != null:
return $default(_that.status,_that.allMatches,_that.filteredMatches,_that.selectedFilter,_that.selectedOdds,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MatchStatus status,  List<MatchModel> allMatches,  List<MatchModel> filteredMatches,  SportType? selectedFilter,  Map<int, String> selectedOdds,  Object? error)  $default,) {final _that = this;
switch (_that) {
case _MatchState():
return $default(_that.status,_that.allMatches,_that.filteredMatches,_that.selectedFilter,_that.selectedOdds,_that.error);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MatchStatus status,  List<MatchModel> allMatches,  List<MatchModel> filteredMatches,  SportType? selectedFilter,  Map<int, String> selectedOdds,  Object? error)?  $default,) {final _that = this;
switch (_that) {
case _MatchState() when $default != null:
return $default(_that.status,_that.allMatches,_that.filteredMatches,_that.selectedFilter,_that.selectedOdds,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MatchState implements MatchState {
  const _MatchState({this.status = MatchStatus.initial, final  List<MatchModel> allMatches = const [], final  List<MatchModel> filteredMatches = const [], this.selectedFilter = SportType.all, final  Map<int, String> selectedOdds = const {}, this.error}): _allMatches = allMatches,_filteredMatches = filteredMatches,_selectedOdds = selectedOdds;
  

@override@JsonKey() final  MatchStatus status;
 final  List<MatchModel> _allMatches;
@override@JsonKey() List<MatchModel> get allMatches {
  if (_allMatches is EqualUnmodifiableListView) return _allMatches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allMatches);
}

 final  List<MatchModel> _filteredMatches;
@override@JsonKey() List<MatchModel> get filteredMatches {
  if (_filteredMatches is EqualUnmodifiableListView) return _filteredMatches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredMatches);
}

@override@JsonKey() final  SportType? selectedFilter;
 final  Map<int, String> _selectedOdds;
@override@JsonKey() Map<int, String> get selectedOdds {
  if (_selectedOdds is EqualUnmodifiableMapView) return _selectedOdds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedOdds);
}

@override final  Object? error;

/// Create a copy of MatchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchStateCopyWith<_MatchState> get copyWith => __$MatchStateCopyWithImpl<_MatchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._allMatches, _allMatches)&&const DeepCollectionEquality().equals(other._filteredMatches, _filteredMatches)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&const DeepCollectionEquality().equals(other._selectedOdds, _selectedOdds)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_allMatches),const DeepCollectionEquality().hash(_filteredMatches),selectedFilter,const DeepCollectionEquality().hash(_selectedOdds),const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'MatchState(status: $status, allMatches: $allMatches, filteredMatches: $filteredMatches, selectedFilter: $selectedFilter, selectedOdds: $selectedOdds, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MatchStateCopyWith<$Res> implements $MatchStateCopyWith<$Res> {
  factory _$MatchStateCopyWith(_MatchState value, $Res Function(_MatchState) _then) = __$MatchStateCopyWithImpl;
@override @useResult
$Res call({
 MatchStatus status, List<MatchModel> allMatches, List<MatchModel> filteredMatches, SportType? selectedFilter, Map<int, String> selectedOdds, Object? error
});




}
/// @nodoc
class __$MatchStateCopyWithImpl<$Res>
    implements _$MatchStateCopyWith<$Res> {
  __$MatchStateCopyWithImpl(this._self, this._then);

  final _MatchState _self;
  final $Res Function(_MatchState) _then;

/// Create a copy of MatchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? allMatches = null,Object? filteredMatches = null,Object? selectedFilter = freezed,Object? selectedOdds = null,Object? error = freezed,}) {
  return _then(_MatchState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MatchStatus,allMatches: null == allMatches ? _self._allMatches : allMatches // ignore: cast_nullable_to_non_nullable
as List<MatchModel>,filteredMatches: null == filteredMatches ? _self._filteredMatches : filteredMatches // ignore: cast_nullable_to_non_nullable
as List<MatchModel>,selectedFilter: freezed == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as SportType?,selectedOdds: null == selectedOdds ? _self._selectedOdds : selectedOdds // ignore: cast_nullable_to_non_nullable
as Map<int, String>,error: freezed == error ? _self.error : error ,
  ));
}


}

// dart format on
