// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) fetchGenres,
    required TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)
        addGame,
    required TResult Function(int limit, int offset) getFlaggedReviews,
    required TResult Function(String reviewId) deleteReview,
    required TResult Function() getAllRecentUnreviewedGames,
    required TResult Function(String reviewId) unFlagReview,
    required TResult Function(ReviewLocationDuration duration, int value)
        getReviewLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? fetchGenres,
    TResult? Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult? Function(int limit, int offset)? getFlaggedReviews,
    TResult? Function(String reviewId)? deleteReview,
    TResult? Function()? getAllRecentUnreviewedGames,
    TResult? Function(String reviewId)? unFlagReview,
    TResult? Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? fetchGenres,
    TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult Function(int limit, int offset)? getFlaggedReviews,
    TResult Function(String reviewId)? deleteReview,
    TResult Function()? getAllRecentUnreviewedGames,
    TResult Function(String reviewId)? unFlagReview,
    TResult Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchGenres value) fetchGenres,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_GetFlaggedReviews value) getFlaggedReviews,
    required TResult Function(_DeleteReview value) deleteReview,
    required TResult Function(_GetAllRecentUnreviewedGames value)
        getAllRecentUnreviewedGames,
    required TResult Function(_UnflagReview value) unFlagReview,
    required TResult Function(_GetReviewLocationsEvent value)
        getReviewLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchGenres value)? fetchGenres,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult? Function(_DeleteReview value)? deleteReview,
    TResult? Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult? Function(_UnflagReview value)? unFlagReview,
    TResult? Function(_GetReviewLocationsEvent value)? getReviewLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchGenres value)? fetchGenres,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult Function(_DeleteReview value)? deleteReview,
    TResult Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult Function(_UnflagReview value)? unFlagReview,
    TResult Function(_GetReviewLocationsEvent value)? getReviewLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminEventCopyWith<$Res> {
  factory $AdminEventCopyWith(
          AdminEvent value, $Res Function(AdminEvent) then) =
      _$AdminEventCopyWithImpl<$Res, AdminEvent>;
}

/// @nodoc
class _$AdminEventCopyWithImpl<$Res, $Val extends AdminEvent>
    implements $AdminEventCopyWith<$Res> {
  _$AdminEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AdminEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) fetchGenres,
    required TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)
        addGame,
    required TResult Function(int limit, int offset) getFlaggedReviews,
    required TResult Function(String reviewId) deleteReview,
    required TResult Function() getAllRecentUnreviewedGames,
    required TResult Function(String reviewId) unFlagReview,
    required TResult Function(ReviewLocationDuration duration, int value)
        getReviewLocations,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? fetchGenres,
    TResult? Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult? Function(int limit, int offset)? getFlaggedReviews,
    TResult? Function(String reviewId)? deleteReview,
    TResult? Function()? getAllRecentUnreviewedGames,
    TResult? Function(String reviewId)? unFlagReview,
    TResult? Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? fetchGenres,
    TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult Function(int limit, int offset)? getFlaggedReviews,
    TResult Function(String reviewId)? deleteReview,
    TResult Function()? getAllRecentUnreviewedGames,
    TResult Function(String reviewId)? unFlagReview,
    TResult Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchGenres value) fetchGenres,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_GetFlaggedReviews value) getFlaggedReviews,
    required TResult Function(_DeleteReview value) deleteReview,
    required TResult Function(_GetAllRecentUnreviewedGames value)
        getAllRecentUnreviewedGames,
    required TResult Function(_UnflagReview value) unFlagReview,
    required TResult Function(_GetReviewLocationsEvent value)
        getReviewLocations,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchGenres value)? fetchGenres,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult? Function(_DeleteReview value)? deleteReview,
    TResult? Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult? Function(_UnflagReview value)? unFlagReview,
    TResult? Function(_GetReviewLocationsEvent value)? getReviewLocations,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchGenres value)? fetchGenres,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult Function(_DeleteReview value)? deleteReview,
    TResult Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult Function(_UnflagReview value)? unFlagReview,
    TResult Function(_GetReviewLocationsEvent value)? getReviewLocations,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FetchGenresCopyWith<$Res> {
  factory _$$_FetchGenresCopyWith(
          _$_FetchGenres value, $Res Function(_$_FetchGenres) then) =
      __$$_FetchGenresCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class __$$_FetchGenresCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_FetchGenres>
    implements _$$_FetchGenresCopyWith<$Res> {
  __$$_FetchGenresCopyWithImpl(
      _$_FetchGenres _value, $Res Function(_$_FetchGenres) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$_FetchGenres(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchGenres implements _FetchGenres {
  const _$_FetchGenres({required this.limit, required this.offset});

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'AdminEvent.fetchGenres(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchGenres &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchGenresCopyWith<_$_FetchGenres> get copyWith =>
      __$$_FetchGenresCopyWithImpl<_$_FetchGenres>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) fetchGenres,
    required TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)
        addGame,
    required TResult Function(int limit, int offset) getFlaggedReviews,
    required TResult Function(String reviewId) deleteReview,
    required TResult Function() getAllRecentUnreviewedGames,
    required TResult Function(String reviewId) unFlagReview,
    required TResult Function(ReviewLocationDuration duration, int value)
        getReviewLocations,
  }) {
    return fetchGenres(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? fetchGenres,
    TResult? Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult? Function(int limit, int offset)? getFlaggedReviews,
    TResult? Function(String reviewId)? deleteReview,
    TResult? Function()? getAllRecentUnreviewedGames,
    TResult? Function(String reviewId)? unFlagReview,
    TResult? Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
  }) {
    return fetchGenres?.call(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? fetchGenres,
    TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult Function(int limit, int offset)? getFlaggedReviews,
    TResult Function(String reviewId)? deleteReview,
    TResult Function()? getAllRecentUnreviewedGames,
    TResult Function(String reviewId)? unFlagReview,
    TResult Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
    required TResult orElse(),
  }) {
    if (fetchGenres != null) {
      return fetchGenres(limit, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchGenres value) fetchGenres,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_GetFlaggedReviews value) getFlaggedReviews,
    required TResult Function(_DeleteReview value) deleteReview,
    required TResult Function(_GetAllRecentUnreviewedGames value)
        getAllRecentUnreviewedGames,
    required TResult Function(_UnflagReview value) unFlagReview,
    required TResult Function(_GetReviewLocationsEvent value)
        getReviewLocations,
  }) {
    return fetchGenres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchGenres value)? fetchGenres,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult? Function(_DeleteReview value)? deleteReview,
    TResult? Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult? Function(_UnflagReview value)? unFlagReview,
    TResult? Function(_GetReviewLocationsEvent value)? getReviewLocations,
  }) {
    return fetchGenres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchGenres value)? fetchGenres,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult Function(_DeleteReview value)? deleteReview,
    TResult Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult Function(_UnflagReview value)? unFlagReview,
    TResult Function(_GetReviewLocationsEvent value)? getReviewLocations,
    required TResult orElse(),
  }) {
    if (fetchGenres != null) {
      return fetchGenres(this);
    }
    return orElse();
  }
}

abstract class _FetchGenres implements AdminEvent {
  const factory _FetchGenres(
      {required final int limit, required final int offset}) = _$_FetchGenres;

  int get limit;
  int get offset;
  @JsonKey(ignore: true)
  _$$_FetchGenresCopyWith<_$_FetchGenres> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddGameCopyWith<$Res> {
  factory _$$_AddGameCopyWith(
          _$_AddGame value, $Res Function(_$_AddGame) then) =
      __$$_AddGameCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, String> fields, List<Genre> genres, XFile image});
}

/// @nodoc
class __$$_AddGameCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_AddGame>
    implements _$$_AddGameCopyWith<$Res> {
  __$$_AddGameCopyWithImpl(_$_AddGame _value, $Res Function(_$_AddGame) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
    Object? genres = null,
    Object? image = null,
  }) {
    return _then(_$_AddGame(
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$_AddGame implements _AddGame {
  const _$_AddGame(
      {required final Map<String, String> fields,
      required final List<Genre> genres,
      required this.image})
      : _fields = fields,
        _genres = genres;

  final Map<String, String> _fields;
  @override
  Map<String, String> get fields {
    if (_fields is EqualUnmodifiableMapView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fields);
  }

  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final XFile image;

  @override
  String toString() {
    return 'AdminEvent.addGame(fields: $fields, genres: $genres, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddGame &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_genres),
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddGameCopyWith<_$_AddGame> get copyWith =>
      __$$_AddGameCopyWithImpl<_$_AddGame>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) fetchGenres,
    required TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)
        addGame,
    required TResult Function(int limit, int offset) getFlaggedReviews,
    required TResult Function(String reviewId) deleteReview,
    required TResult Function() getAllRecentUnreviewedGames,
    required TResult Function(String reviewId) unFlagReview,
    required TResult Function(ReviewLocationDuration duration, int value)
        getReviewLocations,
  }) {
    return addGame(fields, genres, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? fetchGenres,
    TResult? Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult? Function(int limit, int offset)? getFlaggedReviews,
    TResult? Function(String reviewId)? deleteReview,
    TResult? Function()? getAllRecentUnreviewedGames,
    TResult? Function(String reviewId)? unFlagReview,
    TResult? Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
  }) {
    return addGame?.call(fields, genres, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? fetchGenres,
    TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult Function(int limit, int offset)? getFlaggedReviews,
    TResult Function(String reviewId)? deleteReview,
    TResult Function()? getAllRecentUnreviewedGames,
    TResult Function(String reviewId)? unFlagReview,
    TResult Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
    required TResult orElse(),
  }) {
    if (addGame != null) {
      return addGame(fields, genres, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchGenres value) fetchGenres,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_GetFlaggedReviews value) getFlaggedReviews,
    required TResult Function(_DeleteReview value) deleteReview,
    required TResult Function(_GetAllRecentUnreviewedGames value)
        getAllRecentUnreviewedGames,
    required TResult Function(_UnflagReview value) unFlagReview,
    required TResult Function(_GetReviewLocationsEvent value)
        getReviewLocations,
  }) {
    return addGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchGenres value)? fetchGenres,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult? Function(_DeleteReview value)? deleteReview,
    TResult? Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult? Function(_UnflagReview value)? unFlagReview,
    TResult? Function(_GetReviewLocationsEvent value)? getReviewLocations,
  }) {
    return addGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchGenres value)? fetchGenres,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult Function(_DeleteReview value)? deleteReview,
    TResult Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult Function(_UnflagReview value)? unFlagReview,
    TResult Function(_GetReviewLocationsEvent value)? getReviewLocations,
    required TResult orElse(),
  }) {
    if (addGame != null) {
      return addGame(this);
    }
    return orElse();
  }
}

abstract class _AddGame implements AdminEvent {
  const factory _AddGame(
      {required final Map<String, String> fields,
      required final List<Genre> genres,
      required final XFile image}) = _$_AddGame;

  Map<String, String> get fields;
  List<Genre> get genres;
  XFile get image;
  @JsonKey(ignore: true)
  _$$_AddGameCopyWith<_$_AddGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlaggedReviewsCopyWith<$Res> {
  factory _$$_GetFlaggedReviewsCopyWith(_$_GetFlaggedReviews value,
          $Res Function(_$_GetFlaggedReviews) then) =
      __$$_GetFlaggedReviewsCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class __$$_GetFlaggedReviewsCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_GetFlaggedReviews>
    implements _$$_GetFlaggedReviewsCopyWith<$Res> {
  __$$_GetFlaggedReviewsCopyWithImpl(
      _$_GetFlaggedReviews _value, $Res Function(_$_GetFlaggedReviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$_GetFlaggedReviews(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetFlaggedReviews implements _GetFlaggedReviews {
  const _$_GetFlaggedReviews({required this.limit, required this.offset});

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'AdminEvent.getFlaggedReviews(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlaggedReviews &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlaggedReviewsCopyWith<_$_GetFlaggedReviews> get copyWith =>
      __$$_GetFlaggedReviewsCopyWithImpl<_$_GetFlaggedReviews>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) fetchGenres,
    required TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)
        addGame,
    required TResult Function(int limit, int offset) getFlaggedReviews,
    required TResult Function(String reviewId) deleteReview,
    required TResult Function() getAllRecentUnreviewedGames,
    required TResult Function(String reviewId) unFlagReview,
    required TResult Function(ReviewLocationDuration duration, int value)
        getReviewLocations,
  }) {
    return getFlaggedReviews(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? fetchGenres,
    TResult? Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult? Function(int limit, int offset)? getFlaggedReviews,
    TResult? Function(String reviewId)? deleteReview,
    TResult? Function()? getAllRecentUnreviewedGames,
    TResult? Function(String reviewId)? unFlagReview,
    TResult? Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
  }) {
    return getFlaggedReviews?.call(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? fetchGenres,
    TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult Function(int limit, int offset)? getFlaggedReviews,
    TResult Function(String reviewId)? deleteReview,
    TResult Function()? getAllRecentUnreviewedGames,
    TResult Function(String reviewId)? unFlagReview,
    TResult Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
    required TResult orElse(),
  }) {
    if (getFlaggedReviews != null) {
      return getFlaggedReviews(limit, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchGenres value) fetchGenres,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_GetFlaggedReviews value) getFlaggedReviews,
    required TResult Function(_DeleteReview value) deleteReview,
    required TResult Function(_GetAllRecentUnreviewedGames value)
        getAllRecentUnreviewedGames,
    required TResult Function(_UnflagReview value) unFlagReview,
    required TResult Function(_GetReviewLocationsEvent value)
        getReviewLocations,
  }) {
    return getFlaggedReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchGenres value)? fetchGenres,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult? Function(_DeleteReview value)? deleteReview,
    TResult? Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult? Function(_UnflagReview value)? unFlagReview,
    TResult? Function(_GetReviewLocationsEvent value)? getReviewLocations,
  }) {
    return getFlaggedReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchGenres value)? fetchGenres,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult Function(_DeleteReview value)? deleteReview,
    TResult Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult Function(_UnflagReview value)? unFlagReview,
    TResult Function(_GetReviewLocationsEvent value)? getReviewLocations,
    required TResult orElse(),
  }) {
    if (getFlaggedReviews != null) {
      return getFlaggedReviews(this);
    }
    return orElse();
  }
}

abstract class _GetFlaggedReviews implements AdminEvent {
  const factory _GetFlaggedReviews(
      {required final int limit,
      required final int offset}) = _$_GetFlaggedReviews;

  int get limit;
  int get offset;
  @JsonKey(ignore: true)
  _$$_GetFlaggedReviewsCopyWith<_$_GetFlaggedReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteReviewCopyWith<$Res> {
  factory _$$_DeleteReviewCopyWith(
          _$_DeleteReview value, $Res Function(_$_DeleteReview) then) =
      __$$_DeleteReviewCopyWithImpl<$Res>;
  @useResult
  $Res call({String reviewId});
}

/// @nodoc
class __$$_DeleteReviewCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_DeleteReview>
    implements _$$_DeleteReviewCopyWith<$Res> {
  __$$_DeleteReviewCopyWithImpl(
      _$_DeleteReview _value, $Res Function(_$_DeleteReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
  }) {
    return _then(_$_DeleteReview(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteReview implements _DeleteReview {
  const _$_DeleteReview({required this.reviewId});

  @override
  final String reviewId;

  @override
  String toString() {
    return 'AdminEvent.deleteReview(reviewId: $reviewId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteReview &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteReviewCopyWith<_$_DeleteReview> get copyWith =>
      __$$_DeleteReviewCopyWithImpl<_$_DeleteReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) fetchGenres,
    required TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)
        addGame,
    required TResult Function(int limit, int offset) getFlaggedReviews,
    required TResult Function(String reviewId) deleteReview,
    required TResult Function() getAllRecentUnreviewedGames,
    required TResult Function(String reviewId) unFlagReview,
    required TResult Function(ReviewLocationDuration duration, int value)
        getReviewLocations,
  }) {
    return deleteReview(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? fetchGenres,
    TResult? Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult? Function(int limit, int offset)? getFlaggedReviews,
    TResult? Function(String reviewId)? deleteReview,
    TResult? Function()? getAllRecentUnreviewedGames,
    TResult? Function(String reviewId)? unFlagReview,
    TResult? Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
  }) {
    return deleteReview?.call(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? fetchGenres,
    TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult Function(int limit, int offset)? getFlaggedReviews,
    TResult Function(String reviewId)? deleteReview,
    TResult Function()? getAllRecentUnreviewedGames,
    TResult Function(String reviewId)? unFlagReview,
    TResult Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
    required TResult orElse(),
  }) {
    if (deleteReview != null) {
      return deleteReview(reviewId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchGenres value) fetchGenres,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_GetFlaggedReviews value) getFlaggedReviews,
    required TResult Function(_DeleteReview value) deleteReview,
    required TResult Function(_GetAllRecentUnreviewedGames value)
        getAllRecentUnreviewedGames,
    required TResult Function(_UnflagReview value) unFlagReview,
    required TResult Function(_GetReviewLocationsEvent value)
        getReviewLocations,
  }) {
    return deleteReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchGenres value)? fetchGenres,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult? Function(_DeleteReview value)? deleteReview,
    TResult? Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult? Function(_UnflagReview value)? unFlagReview,
    TResult? Function(_GetReviewLocationsEvent value)? getReviewLocations,
  }) {
    return deleteReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchGenres value)? fetchGenres,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult Function(_DeleteReview value)? deleteReview,
    TResult Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult Function(_UnflagReview value)? unFlagReview,
    TResult Function(_GetReviewLocationsEvent value)? getReviewLocations,
    required TResult orElse(),
  }) {
    if (deleteReview != null) {
      return deleteReview(this);
    }
    return orElse();
  }
}

abstract class _DeleteReview implements AdminEvent {
  const factory _DeleteReview({required final String reviewId}) =
      _$_DeleteReview;

  String get reviewId;
  @JsonKey(ignore: true)
  _$$_DeleteReviewCopyWith<_$_DeleteReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllRecentUnreviewedGamesCopyWith<$Res> {
  factory _$$_GetAllRecentUnreviewedGamesCopyWith(
          _$_GetAllRecentUnreviewedGames value,
          $Res Function(_$_GetAllRecentUnreviewedGames) then) =
      __$$_GetAllRecentUnreviewedGamesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllRecentUnreviewedGamesCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_GetAllRecentUnreviewedGames>
    implements _$$_GetAllRecentUnreviewedGamesCopyWith<$Res> {
  __$$_GetAllRecentUnreviewedGamesCopyWithImpl(
      _$_GetAllRecentUnreviewedGames _value,
      $Res Function(_$_GetAllRecentUnreviewedGames) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllRecentUnreviewedGames implements _GetAllRecentUnreviewedGames {
  const _$_GetAllRecentUnreviewedGames();

  @override
  String toString() {
    return 'AdminEvent.getAllRecentUnreviewedGames()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllRecentUnreviewedGames);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) fetchGenres,
    required TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)
        addGame,
    required TResult Function(int limit, int offset) getFlaggedReviews,
    required TResult Function(String reviewId) deleteReview,
    required TResult Function() getAllRecentUnreviewedGames,
    required TResult Function(String reviewId) unFlagReview,
    required TResult Function(ReviewLocationDuration duration, int value)
        getReviewLocations,
  }) {
    return getAllRecentUnreviewedGames();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? fetchGenres,
    TResult? Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult? Function(int limit, int offset)? getFlaggedReviews,
    TResult? Function(String reviewId)? deleteReview,
    TResult? Function()? getAllRecentUnreviewedGames,
    TResult? Function(String reviewId)? unFlagReview,
    TResult? Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
  }) {
    return getAllRecentUnreviewedGames?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? fetchGenres,
    TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult Function(int limit, int offset)? getFlaggedReviews,
    TResult Function(String reviewId)? deleteReview,
    TResult Function()? getAllRecentUnreviewedGames,
    TResult Function(String reviewId)? unFlagReview,
    TResult Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
    required TResult orElse(),
  }) {
    if (getAllRecentUnreviewedGames != null) {
      return getAllRecentUnreviewedGames();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchGenres value) fetchGenres,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_GetFlaggedReviews value) getFlaggedReviews,
    required TResult Function(_DeleteReview value) deleteReview,
    required TResult Function(_GetAllRecentUnreviewedGames value)
        getAllRecentUnreviewedGames,
    required TResult Function(_UnflagReview value) unFlagReview,
    required TResult Function(_GetReviewLocationsEvent value)
        getReviewLocations,
  }) {
    return getAllRecentUnreviewedGames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchGenres value)? fetchGenres,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult? Function(_DeleteReview value)? deleteReview,
    TResult? Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult? Function(_UnflagReview value)? unFlagReview,
    TResult? Function(_GetReviewLocationsEvent value)? getReviewLocations,
  }) {
    return getAllRecentUnreviewedGames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchGenres value)? fetchGenres,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult Function(_DeleteReview value)? deleteReview,
    TResult Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult Function(_UnflagReview value)? unFlagReview,
    TResult Function(_GetReviewLocationsEvent value)? getReviewLocations,
    required TResult orElse(),
  }) {
    if (getAllRecentUnreviewedGames != null) {
      return getAllRecentUnreviewedGames(this);
    }
    return orElse();
  }
}

abstract class _GetAllRecentUnreviewedGames implements AdminEvent {
  const factory _GetAllRecentUnreviewedGames() = _$_GetAllRecentUnreviewedGames;
}

/// @nodoc
abstract class _$$_UnflagReviewCopyWith<$Res> {
  factory _$$_UnflagReviewCopyWith(
          _$_UnflagReview value, $Res Function(_$_UnflagReview) then) =
      __$$_UnflagReviewCopyWithImpl<$Res>;
  @useResult
  $Res call({String reviewId});
}

/// @nodoc
class __$$_UnflagReviewCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_UnflagReview>
    implements _$$_UnflagReviewCopyWith<$Res> {
  __$$_UnflagReviewCopyWithImpl(
      _$_UnflagReview _value, $Res Function(_$_UnflagReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
  }) {
    return _then(_$_UnflagReview(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnflagReview implements _UnflagReview {
  const _$_UnflagReview({required this.reviewId});

  @override
  final String reviewId;

  @override
  String toString() {
    return 'AdminEvent.unFlagReview(reviewId: $reviewId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnflagReview &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnflagReviewCopyWith<_$_UnflagReview> get copyWith =>
      __$$_UnflagReviewCopyWithImpl<_$_UnflagReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) fetchGenres,
    required TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)
        addGame,
    required TResult Function(int limit, int offset) getFlaggedReviews,
    required TResult Function(String reviewId) deleteReview,
    required TResult Function() getAllRecentUnreviewedGames,
    required TResult Function(String reviewId) unFlagReview,
    required TResult Function(ReviewLocationDuration duration, int value)
        getReviewLocations,
  }) {
    return unFlagReview(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? fetchGenres,
    TResult? Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult? Function(int limit, int offset)? getFlaggedReviews,
    TResult? Function(String reviewId)? deleteReview,
    TResult? Function()? getAllRecentUnreviewedGames,
    TResult? Function(String reviewId)? unFlagReview,
    TResult? Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
  }) {
    return unFlagReview?.call(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? fetchGenres,
    TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult Function(int limit, int offset)? getFlaggedReviews,
    TResult Function(String reviewId)? deleteReview,
    TResult Function()? getAllRecentUnreviewedGames,
    TResult Function(String reviewId)? unFlagReview,
    TResult Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
    required TResult orElse(),
  }) {
    if (unFlagReview != null) {
      return unFlagReview(reviewId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchGenres value) fetchGenres,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_GetFlaggedReviews value) getFlaggedReviews,
    required TResult Function(_DeleteReview value) deleteReview,
    required TResult Function(_GetAllRecentUnreviewedGames value)
        getAllRecentUnreviewedGames,
    required TResult Function(_UnflagReview value) unFlagReview,
    required TResult Function(_GetReviewLocationsEvent value)
        getReviewLocations,
  }) {
    return unFlagReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchGenres value)? fetchGenres,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult? Function(_DeleteReview value)? deleteReview,
    TResult? Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult? Function(_UnflagReview value)? unFlagReview,
    TResult? Function(_GetReviewLocationsEvent value)? getReviewLocations,
  }) {
    return unFlagReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchGenres value)? fetchGenres,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult Function(_DeleteReview value)? deleteReview,
    TResult Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult Function(_UnflagReview value)? unFlagReview,
    TResult Function(_GetReviewLocationsEvent value)? getReviewLocations,
    required TResult orElse(),
  }) {
    if (unFlagReview != null) {
      return unFlagReview(this);
    }
    return orElse();
  }
}

abstract class _UnflagReview implements AdminEvent {
  const factory _UnflagReview({required final String reviewId}) =
      _$_UnflagReview;

  String get reviewId;
  @JsonKey(ignore: true)
  _$$_UnflagReviewCopyWith<_$_UnflagReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetReviewLocationsEventCopyWith<$Res> {
  factory _$$_GetReviewLocationsEventCopyWith(_$_GetReviewLocationsEvent value,
          $Res Function(_$_GetReviewLocationsEvent) then) =
      __$$_GetReviewLocationsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ReviewLocationDuration duration, int value});
}

/// @nodoc
class __$$_GetReviewLocationsEventCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_GetReviewLocationsEvent>
    implements _$$_GetReviewLocationsEventCopyWith<$Res> {
  __$$_GetReviewLocationsEventCopyWithImpl(_$_GetReviewLocationsEvent _value,
      $Res Function(_$_GetReviewLocationsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? value = null,
  }) {
    return _then(_$_GetReviewLocationsEvent(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as ReviewLocationDuration,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetReviewLocationsEvent implements _GetReviewLocationsEvent {
  const _$_GetReviewLocationsEvent(
      {required this.duration, required this.value});

  @override
  final ReviewLocationDuration duration;
  @override
  final int value;

  @override
  String toString() {
    return 'AdminEvent.getReviewLocations(duration: $duration, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetReviewLocationsEvent &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetReviewLocationsEventCopyWith<_$_GetReviewLocationsEvent>
      get copyWith =>
          __$$_GetReviewLocationsEventCopyWithImpl<_$_GetReviewLocationsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) fetchGenres,
    required TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)
        addGame,
    required TResult Function(int limit, int offset) getFlaggedReviews,
    required TResult Function(String reviewId) deleteReview,
    required TResult Function() getAllRecentUnreviewedGames,
    required TResult Function(String reviewId) unFlagReview,
    required TResult Function(ReviewLocationDuration duration, int value)
        getReviewLocations,
  }) {
    return getReviewLocations(duration, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? fetchGenres,
    TResult? Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult? Function(int limit, int offset)? getFlaggedReviews,
    TResult? Function(String reviewId)? deleteReview,
    TResult? Function()? getAllRecentUnreviewedGames,
    TResult? Function(String reviewId)? unFlagReview,
    TResult? Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
  }) {
    return getReviewLocations?.call(duration, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? fetchGenres,
    TResult Function(
            Map<String, String> fields, List<Genre> genres, XFile image)?
        addGame,
    TResult Function(int limit, int offset)? getFlaggedReviews,
    TResult Function(String reviewId)? deleteReview,
    TResult Function()? getAllRecentUnreviewedGames,
    TResult Function(String reviewId)? unFlagReview,
    TResult Function(ReviewLocationDuration duration, int value)?
        getReviewLocations,
    required TResult orElse(),
  }) {
    if (getReviewLocations != null) {
      return getReviewLocations(duration, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchGenres value) fetchGenres,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_GetFlaggedReviews value) getFlaggedReviews,
    required TResult Function(_DeleteReview value) deleteReview,
    required TResult Function(_GetAllRecentUnreviewedGames value)
        getAllRecentUnreviewedGames,
    required TResult Function(_UnflagReview value) unFlagReview,
    required TResult Function(_GetReviewLocationsEvent value)
        getReviewLocations,
  }) {
    return getReviewLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchGenres value)? fetchGenres,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult? Function(_DeleteReview value)? deleteReview,
    TResult? Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult? Function(_UnflagReview value)? unFlagReview,
    TResult? Function(_GetReviewLocationsEvent value)? getReviewLocations,
  }) {
    return getReviewLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchGenres value)? fetchGenres,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_GetFlaggedReviews value)? getFlaggedReviews,
    TResult Function(_DeleteReview value)? deleteReview,
    TResult Function(_GetAllRecentUnreviewedGames value)?
        getAllRecentUnreviewedGames,
    TResult Function(_UnflagReview value)? unFlagReview,
    TResult Function(_GetReviewLocationsEvent value)? getReviewLocations,
    required TResult orElse(),
  }) {
    if (getReviewLocations != null) {
      return getReviewLocations(this);
    }
    return orElse();
  }
}

abstract class _GetReviewLocationsEvent implements AdminEvent {
  const factory _GetReviewLocationsEvent(
      {required final ReviewLocationDuration duration,
      required final int value}) = _$_GetReviewLocationsEvent;

  ReviewLocationDuration get duration;
  int get value;
  @JsonKey(ignore: true)
  _$$_GetReviewLocationsEventCopyWith<_$_GetReviewLocationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStateCopyWith<$Res> {
  factory $AdminStateCopyWith(
          AdminState value, $Res Function(AdminState) then) =
      _$AdminStateCopyWithImpl<$Res, AdminState>;
}

/// @nodoc
class _$AdminStateCopyWithImpl<$Res, $Val extends AdminState>
    implements $AdminStateCopyWith<$Res> {
  _$AdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AdminState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdminState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FetchingGenresCopyWith<$Res> {
  factory _$$_FetchingGenresCopyWith(
          _$_FetchingGenres value, $Res Function(_$_FetchingGenres) then) =
      __$$_FetchingGenresCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchingGenresCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_FetchingGenres>
    implements _$$_FetchingGenresCopyWith<$Res> {
  __$$_FetchingGenresCopyWithImpl(
      _$_FetchingGenres _value, $Res Function(_$_FetchingGenres) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchingGenres implements _FetchingGenres {
  const _$_FetchingGenres();

  @override
  String toString() {
    return 'AdminState.fetchingGenres()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchingGenres);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return fetchingGenres();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return fetchingGenres?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingGenres != null) {
      return fetchingGenres();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return fetchingGenres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return fetchingGenres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingGenres != null) {
      return fetchingGenres(this);
    }
    return orElse();
  }
}

abstract class _FetchingGenres implements AdminState {
  const factory _FetchingGenres() = _$_FetchingGenres;
}

/// @nodoc
abstract class _$$_FetchingGenresSuccessCopyWith<$Res> {
  factory _$$_FetchingGenresSuccessCopyWith(_$_FetchingGenresSuccess value,
          $Res Function(_$_FetchingGenresSuccess) then) =
      __$$_FetchingGenresSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PaginatedResponse<Genre> genres});
}

/// @nodoc
class __$$_FetchingGenresSuccessCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_FetchingGenresSuccess>
    implements _$$_FetchingGenresSuccessCopyWith<$Res> {
  __$$_FetchingGenresSuccessCopyWithImpl(_$_FetchingGenresSuccess _value,
      $Res Function(_$_FetchingGenresSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$_FetchingGenresSuccess(
      null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as PaginatedResponse<Genre>,
    ));
  }
}

/// @nodoc

class _$_FetchingGenresSuccess implements _FetchingGenresSuccess {
  const _$_FetchingGenresSuccess(this.genres);

  @override
  final PaginatedResponse<Genre> genres;

  @override
  String toString() {
    return 'AdminState.fetchingGenresSuccess(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchingGenresSuccess &&
            (identical(other.genres, genres) || other.genres == genres));
  }

  @override
  int get hashCode => Object.hash(runtimeType, genres);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchingGenresSuccessCopyWith<_$_FetchingGenresSuccess> get copyWith =>
      __$$_FetchingGenresSuccessCopyWithImpl<_$_FetchingGenresSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return fetchingGenresSuccess(genres);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return fetchingGenresSuccess?.call(genres);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingGenresSuccess != null) {
      return fetchingGenresSuccess(genres);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return fetchingGenresSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return fetchingGenresSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingGenresSuccess != null) {
      return fetchingGenresSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchingGenresSuccess implements AdminState {
  const factory _FetchingGenresSuccess(final PaginatedResponse<Genre> genres) =
      _$_FetchingGenresSuccess;

  PaginatedResponse<Genre> get genres;
  @JsonKey(ignore: true)
  _$$_FetchingGenresSuccessCopyWith<_$_FetchingGenresSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Failure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AdminState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AdminState {
  const factory _Failure(final String message) = _$_Failure;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddingGameCopyWith<$Res> {
  factory _$$_AddingGameCopyWith(
          _$_AddingGame value, $Res Function(_$_AddingGame) then) =
      __$$_AddingGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddingGameCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_AddingGame>
    implements _$$_AddingGameCopyWith<$Res> {
  __$$_AddingGameCopyWithImpl(
      _$_AddingGame _value, $Res Function(_$_AddingGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddingGame implements _AddingGame {
  const _$_AddingGame();

  @override
  String toString() {
    return 'AdminState.addingGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddingGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return addingGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return addingGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (addingGame != null) {
      return addingGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return addingGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return addingGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (addingGame != null) {
      return addingGame(this);
    }
    return orElse();
  }
}

abstract class _AddingGame implements AdminState {
  const factory _AddingGame() = _$_AddingGame;
}

/// @nodoc
abstract class _$$_AddingGameSuccessCopyWith<$Res> {
  factory _$$_AddingGameSuccessCopyWith(_$_AddingGameSuccess value,
          $Res Function(_$_AddingGameSuccess) then) =
      __$$_AddingGameSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddingGameSuccessCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_AddingGameSuccess>
    implements _$$_AddingGameSuccessCopyWith<$Res> {
  __$$_AddingGameSuccessCopyWithImpl(
      _$_AddingGameSuccess _value, $Res Function(_$_AddingGameSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddingGameSuccess implements _AddingGameSuccess {
  const _$_AddingGameSuccess();

  @override
  String toString() {
    return 'AdminState.addingGameSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddingGameSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return addingGameSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return addingGameSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (addingGameSuccess != null) {
      return addingGameSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return addingGameSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return addingGameSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (addingGameSuccess != null) {
      return addingGameSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddingGameSuccess implements AdminState {
  const factory _AddingGameSuccess() = _$_AddingGameSuccess;
}

/// @nodoc
abstract class _$$_FetchingFlaggedReviewsCopyWith<$Res> {
  factory _$$_FetchingFlaggedReviewsCopyWith(_$_FetchingFlaggedReviews value,
          $Res Function(_$_FetchingFlaggedReviews) then) =
      __$$_FetchingFlaggedReviewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchingFlaggedReviewsCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_FetchingFlaggedReviews>
    implements _$$_FetchingFlaggedReviewsCopyWith<$Res> {
  __$$_FetchingFlaggedReviewsCopyWithImpl(_$_FetchingFlaggedReviews _value,
      $Res Function(_$_FetchingFlaggedReviews) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchingFlaggedReviews implements _FetchingFlaggedReviews {
  const _$_FetchingFlaggedReviews();

  @override
  String toString() {
    return 'AdminState.fetchingFlaggedReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchingFlaggedReviews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return fetchingFlaggedReviews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return fetchingFlaggedReviews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingFlaggedReviews != null) {
      return fetchingFlaggedReviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return fetchingFlaggedReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return fetchingFlaggedReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingFlaggedReviews != null) {
      return fetchingFlaggedReviews(this);
    }
    return orElse();
  }
}

abstract class _FetchingFlaggedReviews implements AdminState {
  const factory _FetchingFlaggedReviews() = _$_FetchingFlaggedReviews;
}

/// @nodoc
abstract class _$$_FetchingFlaggedReviewsSuccessCopyWith<$Res> {
  factory _$$_FetchingFlaggedReviewsSuccessCopyWith(
          _$_FetchingFlaggedReviewsSuccess value,
          $Res Function(_$_FetchingFlaggedReviewsSuccess) then) =
      __$$_FetchingFlaggedReviewsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PaginatedResponse<Review> reviews});
}

/// @nodoc
class __$$_FetchingFlaggedReviewsSuccessCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_FetchingFlaggedReviewsSuccess>
    implements _$$_FetchingFlaggedReviewsSuccessCopyWith<$Res> {
  __$$_FetchingFlaggedReviewsSuccessCopyWithImpl(
      _$_FetchingFlaggedReviewsSuccess _value,
      $Res Function(_$_FetchingFlaggedReviewsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
  }) {
    return _then(_$_FetchingFlaggedReviewsSuccess(
      null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as PaginatedResponse<Review>,
    ));
  }
}

/// @nodoc

class _$_FetchingFlaggedReviewsSuccess
    implements _FetchingFlaggedReviewsSuccess {
  const _$_FetchingFlaggedReviewsSuccess(this.reviews);

  @override
  final PaginatedResponse<Review> reviews;

  @override
  String toString() {
    return 'AdminState.flaggedReviewsFetched(reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchingFlaggedReviewsSuccess &&
            (identical(other.reviews, reviews) || other.reviews == reviews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchingFlaggedReviewsSuccessCopyWith<_$_FetchingFlaggedReviewsSuccess>
      get copyWith => __$$_FetchingFlaggedReviewsSuccessCopyWithImpl<
          _$_FetchingFlaggedReviewsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return flaggedReviewsFetched(reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return flaggedReviewsFetched?.call(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (flaggedReviewsFetched != null) {
      return flaggedReviewsFetched(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return flaggedReviewsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return flaggedReviewsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (flaggedReviewsFetched != null) {
      return flaggedReviewsFetched(this);
    }
    return orElse();
  }
}

abstract class _FetchingFlaggedReviewsSuccess implements AdminState {
  const factory _FetchingFlaggedReviewsSuccess(
          final PaginatedResponse<Review> reviews) =
      _$_FetchingFlaggedReviewsSuccess;

  PaginatedResponse<Review> get reviews;
  @JsonKey(ignore: true)
  _$$_FetchingFlaggedReviewsSuccessCopyWith<_$_FetchingFlaggedReviewsSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewDeletedCopyWith<$Res> {
  factory _$$_ReviewDeletedCopyWith(
          _$_ReviewDeleted value, $Res Function(_$_ReviewDeleted) then) =
      __$$_ReviewDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({String reviewId});
}

/// @nodoc
class __$$_ReviewDeletedCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_ReviewDeleted>
    implements _$$_ReviewDeletedCopyWith<$Res> {
  __$$_ReviewDeletedCopyWithImpl(
      _$_ReviewDeleted _value, $Res Function(_$_ReviewDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
  }) {
    return _then(_$_ReviewDeleted(
      null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReviewDeleted implements _ReviewDeleted {
  const _$_ReviewDeleted(this.reviewId);

  @override
  final String reviewId;

  @override
  String toString() {
    return 'AdminState.reviewDeleted(reviewId: $reviewId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDeleted &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewDeletedCopyWith<_$_ReviewDeleted> get copyWith =>
      __$$_ReviewDeletedCopyWithImpl<_$_ReviewDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return reviewDeleted(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return reviewDeleted?.call(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (reviewDeleted != null) {
      return reviewDeleted(reviewId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return reviewDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return reviewDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (reviewDeleted != null) {
      return reviewDeleted(this);
    }
    return orElse();
  }
}

abstract class _ReviewDeleted implements AdminState {
  const factory _ReviewDeleted(final String reviewId) = _$_ReviewDeleted;

  String get reviewId;
  @JsonKey(ignore: true)
  _$$_ReviewDeletedCopyWith<_$_ReviewDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewUnflaggedCopyWith<$Res> {
  factory _$$_ReviewUnflaggedCopyWith(
          _$_ReviewUnflagged value, $Res Function(_$_ReviewUnflagged) then) =
      __$$_ReviewUnflaggedCopyWithImpl<$Res>;
  @useResult
  $Res call({String reviewId});
}

/// @nodoc
class __$$_ReviewUnflaggedCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_ReviewUnflagged>
    implements _$$_ReviewUnflaggedCopyWith<$Res> {
  __$$_ReviewUnflaggedCopyWithImpl(
      _$_ReviewUnflagged _value, $Res Function(_$_ReviewUnflagged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
  }) {
    return _then(_$_ReviewUnflagged(
      null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReviewUnflagged implements _ReviewUnflagged {
  const _$_ReviewUnflagged(this.reviewId);

  @override
  final String reviewId;

  @override
  String toString() {
    return 'AdminState.reviewUnflagged(reviewId: $reviewId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewUnflagged &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewUnflaggedCopyWith<_$_ReviewUnflagged> get copyWith =>
      __$$_ReviewUnflaggedCopyWithImpl<_$_ReviewUnflagged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return reviewUnflagged(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return reviewUnflagged?.call(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (reviewUnflagged != null) {
      return reviewUnflagged(reviewId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return reviewUnflagged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return reviewUnflagged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (reviewUnflagged != null) {
      return reviewUnflagged(this);
    }
    return orElse();
  }
}

abstract class _ReviewUnflagged implements AdminState {
  const factory _ReviewUnflagged(final String reviewId) = _$_ReviewUnflagged;

  String get reviewId;
  @JsonKey(ignore: true)
  _$$_ReviewUnflaggedCopyWith<_$_ReviewUnflagged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchingReviewLocationsCopyWith<$Res> {
  factory _$$_FetchingReviewLocationsCopyWith(_$_FetchingReviewLocations value,
          $Res Function(_$_FetchingReviewLocations) then) =
      __$$_FetchingReviewLocationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchingReviewLocationsCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_FetchingReviewLocations>
    implements _$$_FetchingReviewLocationsCopyWith<$Res> {
  __$$_FetchingReviewLocationsCopyWithImpl(_$_FetchingReviewLocations _value,
      $Res Function(_$_FetchingReviewLocations) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchingReviewLocations implements _FetchingReviewLocations {
  const _$_FetchingReviewLocations();

  @override
  String toString() {
    return 'AdminState.fetchingReviewLocations()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchingReviewLocations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return fetchingReviewLocations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return fetchingReviewLocations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingReviewLocations != null) {
      return fetchingReviewLocations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return fetchingReviewLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return fetchingReviewLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingReviewLocations != null) {
      return fetchingReviewLocations(this);
    }
    return orElse();
  }
}

abstract class _FetchingReviewLocations implements AdminState {
  const factory _FetchingReviewLocations() = _$_FetchingReviewLocations;
}

/// @nodoc
abstract class _$$_FetchingReviewLocationsSuccessCopyWith<$Res> {
  factory _$$_FetchingReviewLocationsSuccessCopyWith(
          _$_FetchingReviewLocationsSuccess value,
          $Res Function(_$_FetchingReviewLocationsSuccess) then) =
      __$$_FetchingReviewLocationsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReviewLocation> success});
}

/// @nodoc
class __$$_FetchingReviewLocationsSuccessCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_FetchingReviewLocationsSuccess>
    implements _$$_FetchingReviewLocationsSuccessCopyWith<$Res> {
  __$$_FetchingReviewLocationsSuccessCopyWithImpl(
      _$_FetchingReviewLocationsSuccess _value,
      $Res Function(_$_FetchingReviewLocationsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$_FetchingReviewLocationsSuccess(
      null == success
          ? _value._success
          : success // ignore: cast_nullable_to_non_nullable
              as List<ReviewLocation>,
    ));
  }
}

/// @nodoc

class _$_FetchingReviewLocationsSuccess
    implements _FetchingReviewLocationsSuccess {
  const _$_FetchingReviewLocationsSuccess(final List<ReviewLocation> success)
      : _success = success;

  final List<ReviewLocation> _success;
  @override
  List<ReviewLocation> get success {
    if (_success is EqualUnmodifiableListView) return _success;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_success);
  }

  @override
  String toString() {
    return 'AdminState.reviewLocationsFetched(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchingReviewLocationsSuccess &&
            const DeepCollectionEquality().equals(other._success, _success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_success));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchingReviewLocationsSuccessCopyWith<_$_FetchingReviewLocationsSuccess>
      get copyWith => __$$_FetchingReviewLocationsSuccessCopyWithImpl<
          _$_FetchingReviewLocationsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return reviewLocationsFetched(success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return reviewLocationsFetched?.call(success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (reviewLocationsFetched != null) {
      return reviewLocationsFetched(success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return reviewLocationsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return reviewLocationsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (reviewLocationsFetched != null) {
      return reviewLocationsFetched(this);
    }
    return orElse();
  }
}

abstract class _FetchingReviewLocationsSuccess implements AdminState {
  const factory _FetchingReviewLocationsSuccess(
      final List<ReviewLocation> success) = _$_FetchingReviewLocationsSuccess;

  List<ReviewLocation> get success;
  @JsonKey(ignore: true)
  _$$_FetchingReviewLocationsSuccessCopyWith<_$_FetchingReviewLocationsSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchingReviewLocationsFailureCopyWith<$Res> {
  factory _$$_FetchingReviewLocationsFailureCopyWith(
          _$_FetchingReviewLocationsFailure value,
          $Res Function(_$_FetchingReviewLocationsFailure) then) =
      __$$_FetchingReviewLocationsFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FetchingReviewLocationsFailureCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$_FetchingReviewLocationsFailure>
    implements _$$_FetchingReviewLocationsFailureCopyWith<$Res> {
  __$$_FetchingReviewLocationsFailureCopyWithImpl(
      _$_FetchingReviewLocationsFailure _value,
      $Res Function(_$_FetchingReviewLocationsFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FetchingReviewLocationsFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchingReviewLocationsFailure
    implements _FetchingReviewLocationsFailure {
  const _$_FetchingReviewLocationsFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AdminState.fetchingReviewLocationsFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchingReviewLocationsFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchingReviewLocationsFailureCopyWith<_$_FetchingReviewLocationsFailure>
      get copyWith => __$$_FetchingReviewLocationsFailureCopyWithImpl<
          _$_FetchingReviewLocationsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingGenres,
    required TResult Function(PaginatedResponse<Genre> genres)
        fetchingGenresSuccess,
    required TResult Function(String message) failure,
    required TResult Function() addingGame,
    required TResult Function() addingGameSuccess,
    required TResult Function() fetchingFlaggedReviews,
    required TResult Function(PaginatedResponse<Review> reviews)
        flaggedReviewsFetched,
    required TResult Function(String reviewId) reviewDeleted,
    required TResult Function(String reviewId) reviewUnflagged,
    required TResult Function() fetchingReviewLocations,
    required TResult Function(List<ReviewLocation> success)
        reviewLocationsFetched,
    required TResult Function(String message) fetchingReviewLocationsFailure,
  }) {
    return fetchingReviewLocationsFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingGenres,
    TResult? Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? addingGame,
    TResult? Function()? addingGameSuccess,
    TResult? Function()? fetchingFlaggedReviews,
    TResult? Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult? Function(String reviewId)? reviewDeleted,
    TResult? Function(String reviewId)? reviewUnflagged,
    TResult? Function()? fetchingReviewLocations,
    TResult? Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult? Function(String message)? fetchingReviewLocationsFailure,
  }) {
    return fetchingReviewLocationsFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingGenres,
    TResult Function(PaginatedResponse<Genre> genres)? fetchingGenresSuccess,
    TResult Function(String message)? failure,
    TResult Function()? addingGame,
    TResult Function()? addingGameSuccess,
    TResult Function()? fetchingFlaggedReviews,
    TResult Function(PaginatedResponse<Review> reviews)? flaggedReviewsFetched,
    TResult Function(String reviewId)? reviewDeleted,
    TResult Function(String reviewId)? reviewUnflagged,
    TResult Function()? fetchingReviewLocations,
    TResult Function(List<ReviewLocation> success)? reviewLocationsFetched,
    TResult Function(String message)? fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingReviewLocationsFailure != null) {
      return fetchingReviewLocationsFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingGenres value) fetchingGenres,
    required TResult Function(_FetchingGenresSuccess value)
        fetchingGenresSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddingGame value) addingGame,
    required TResult Function(_AddingGameSuccess value) addingGameSuccess,
    required TResult Function(_FetchingFlaggedReviews value)
        fetchingFlaggedReviews,
    required TResult Function(_FetchingFlaggedReviewsSuccess value)
        flaggedReviewsFetched,
    required TResult Function(_ReviewDeleted value) reviewDeleted,
    required TResult Function(_ReviewUnflagged value) reviewUnflagged,
    required TResult Function(_FetchingReviewLocations value)
        fetchingReviewLocations,
    required TResult Function(_FetchingReviewLocationsSuccess value)
        reviewLocationsFetched,
    required TResult Function(_FetchingReviewLocationsFailure value)
        fetchingReviewLocationsFailure,
  }) {
    return fetchingReviewLocationsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingGenres value)? fetchingGenres,
    TResult? Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_AddingGame value)? addingGame,
    TResult? Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult? Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult? Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult? Function(_ReviewDeleted value)? reviewDeleted,
    TResult? Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult? Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult? Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult? Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
  }) {
    return fetchingReviewLocationsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingGenres value)? fetchingGenres,
    TResult Function(_FetchingGenresSuccess value)? fetchingGenresSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddingGame value)? addingGame,
    TResult Function(_AddingGameSuccess value)? addingGameSuccess,
    TResult Function(_FetchingFlaggedReviews value)? fetchingFlaggedReviews,
    TResult Function(_FetchingFlaggedReviewsSuccess value)?
        flaggedReviewsFetched,
    TResult Function(_ReviewDeleted value)? reviewDeleted,
    TResult Function(_ReviewUnflagged value)? reviewUnflagged,
    TResult Function(_FetchingReviewLocations value)? fetchingReviewLocations,
    TResult Function(_FetchingReviewLocationsSuccess value)?
        reviewLocationsFetched,
    TResult Function(_FetchingReviewLocationsFailure value)?
        fetchingReviewLocationsFailure,
    required TResult orElse(),
  }) {
    if (fetchingReviewLocationsFailure != null) {
      return fetchingReviewLocationsFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchingReviewLocationsFailure implements AdminState {
  const factory _FetchingReviewLocationsFailure(final String message) =
      _$_FetchingReviewLocationsFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$_FetchingReviewLocationsFailureCopyWith<_$_FetchingReviewLocationsFailure>
      get copyWith => throw _privateConstructorUsedError;
}
