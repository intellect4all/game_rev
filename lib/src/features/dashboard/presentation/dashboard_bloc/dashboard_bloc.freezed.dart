// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) getGenres,
    required TResult Function(int limit, int offset) getGames,
    required TResult Function(int limit, int offset, String genreSlug)
        getGamesByGenre,
    required TResult Function(int limit, int offset, String gameId)
        getReviewsForGame,
    required TResult Function(String gameId, String comment, int rating)
        postReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? getGenres,
    TResult? Function(int limit, int offset)? getGames,
    TResult? Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult? Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult? Function(String gameId, String comment, int rating)? postReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? getGenres,
    TResult Function(int limit, int offset)? getGames,
    TResult Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult Function(String gameId, String comment, int rating)? postReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetGenres value) getGenres,
    required TResult Function(GetGames value) getGames,
    required TResult Function(GetGamesByGenre value) getGamesByGenre,
    required TResult Function(GetReviewsForGame value) getReviewsForGame,
    required TResult Function(PostReview value) postReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetGenres value)? getGenres,
    TResult? Function(GetGames value)? getGames,
    TResult? Function(GetGamesByGenre value)? getGamesByGenre,
    TResult? Function(GetReviewsForGame value)? getReviewsForGame,
    TResult? Function(PostReview value)? postReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetGenres value)? getGenres,
    TResult Function(GetGames value)? getGames,
    TResult Function(GetGamesByGenre value)? getGamesByGenre,
    TResult Function(GetReviewsForGame value)? getReviewsForGame,
    TResult Function(PostReview value)? postReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

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
    extends _$DashboardEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DashboardEvent.started()';
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
    required TResult Function(int limit, int offset) getGenres,
    required TResult Function(int limit, int offset) getGames,
    required TResult Function(int limit, int offset, String genreSlug)
        getGamesByGenre,
    required TResult Function(int limit, int offset, String gameId)
        getReviewsForGame,
    required TResult Function(String gameId, String comment, int rating)
        postReview,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? getGenres,
    TResult? Function(int limit, int offset)? getGames,
    TResult? Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult? Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult? Function(String gameId, String comment, int rating)? postReview,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? getGenres,
    TResult Function(int limit, int offset)? getGames,
    TResult Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult Function(String gameId, String comment, int rating)? postReview,
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
    required TResult Function(GetGenres value) getGenres,
    required TResult Function(GetGames value) getGames,
    required TResult Function(GetGamesByGenre value) getGamesByGenre,
    required TResult Function(GetReviewsForGame value) getReviewsForGame,
    required TResult Function(PostReview value) postReview,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetGenres value)? getGenres,
    TResult? Function(GetGames value)? getGames,
    TResult? Function(GetGamesByGenre value)? getGamesByGenre,
    TResult? Function(GetReviewsForGame value)? getReviewsForGame,
    TResult? Function(PostReview value)? postReview,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetGenres value)? getGenres,
    TResult Function(GetGames value)? getGames,
    TResult Function(GetGamesByGenre value)? getGamesByGenre,
    TResult Function(GetReviewsForGame value)? getReviewsForGame,
    TResult Function(PostReview value)? postReview,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DashboardEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$GetGenresCopyWith<$Res> {
  factory _$$GetGenresCopyWith(
          _$GetGenres value, $Res Function(_$GetGenres) then) =
      __$$GetGenresCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class __$$GetGenresCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetGenres>
    implements _$$GetGenresCopyWith<$Res> {
  __$$GetGenresCopyWithImpl(
      _$GetGenres _value, $Res Function(_$GetGenres) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$GetGenres(
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

class _$GetGenres implements GetGenres {
  const _$GetGenres({required this.limit, required this.offset});

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'DashboardEvent.getGenres(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGenres &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGenresCopyWith<_$GetGenres> get copyWith =>
      __$$GetGenresCopyWithImpl<_$GetGenres>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) getGenres,
    required TResult Function(int limit, int offset) getGames,
    required TResult Function(int limit, int offset, String genreSlug)
        getGamesByGenre,
    required TResult Function(int limit, int offset, String gameId)
        getReviewsForGame,
    required TResult Function(String gameId, String comment, int rating)
        postReview,
  }) {
    return getGenres(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? getGenres,
    TResult? Function(int limit, int offset)? getGames,
    TResult? Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult? Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult? Function(String gameId, String comment, int rating)? postReview,
  }) {
    return getGenres?.call(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? getGenres,
    TResult Function(int limit, int offset)? getGames,
    TResult Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult Function(String gameId, String comment, int rating)? postReview,
    required TResult orElse(),
  }) {
    if (getGenres != null) {
      return getGenres(limit, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetGenres value) getGenres,
    required TResult Function(GetGames value) getGames,
    required TResult Function(GetGamesByGenre value) getGamesByGenre,
    required TResult Function(GetReviewsForGame value) getReviewsForGame,
    required TResult Function(PostReview value) postReview,
  }) {
    return getGenres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetGenres value)? getGenres,
    TResult? Function(GetGames value)? getGames,
    TResult? Function(GetGamesByGenre value)? getGamesByGenre,
    TResult? Function(GetReviewsForGame value)? getReviewsForGame,
    TResult? Function(PostReview value)? postReview,
  }) {
    return getGenres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetGenres value)? getGenres,
    TResult Function(GetGames value)? getGames,
    TResult Function(GetGamesByGenre value)? getGamesByGenre,
    TResult Function(GetReviewsForGame value)? getReviewsForGame,
    TResult Function(PostReview value)? postReview,
    required TResult orElse(),
  }) {
    if (getGenres != null) {
      return getGenres(this);
    }
    return orElse();
  }
}

abstract class GetGenres implements DashboardEvent {
  const factory GetGenres(
      {required final int limit, required final int offset}) = _$GetGenres;

  int get limit;
  int get offset;
  @JsonKey(ignore: true)
  _$$GetGenresCopyWith<_$GetGenres> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGamesCopyWith<$Res> {
  factory _$$GetGamesCopyWith(
          _$GetGames value, $Res Function(_$GetGames) then) =
      __$$GetGamesCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class __$$GetGamesCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetGames>
    implements _$$GetGamesCopyWith<$Res> {
  __$$GetGamesCopyWithImpl(_$GetGames _value, $Res Function(_$GetGames) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$GetGames(
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

class _$GetGames implements GetGames {
  const _$GetGames({required this.limit, required this.offset});

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'DashboardEvent.getGames(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGames &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGamesCopyWith<_$GetGames> get copyWith =>
      __$$GetGamesCopyWithImpl<_$GetGames>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) getGenres,
    required TResult Function(int limit, int offset) getGames,
    required TResult Function(int limit, int offset, String genreSlug)
        getGamesByGenre,
    required TResult Function(int limit, int offset, String gameId)
        getReviewsForGame,
    required TResult Function(String gameId, String comment, int rating)
        postReview,
  }) {
    return getGames(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? getGenres,
    TResult? Function(int limit, int offset)? getGames,
    TResult? Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult? Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult? Function(String gameId, String comment, int rating)? postReview,
  }) {
    return getGames?.call(limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? getGenres,
    TResult Function(int limit, int offset)? getGames,
    TResult Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult Function(String gameId, String comment, int rating)? postReview,
    required TResult orElse(),
  }) {
    if (getGames != null) {
      return getGames(limit, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetGenres value) getGenres,
    required TResult Function(GetGames value) getGames,
    required TResult Function(GetGamesByGenre value) getGamesByGenre,
    required TResult Function(GetReviewsForGame value) getReviewsForGame,
    required TResult Function(PostReview value) postReview,
  }) {
    return getGames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetGenres value)? getGenres,
    TResult? Function(GetGames value)? getGames,
    TResult? Function(GetGamesByGenre value)? getGamesByGenre,
    TResult? Function(GetReviewsForGame value)? getReviewsForGame,
    TResult? Function(PostReview value)? postReview,
  }) {
    return getGames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetGenres value)? getGenres,
    TResult Function(GetGames value)? getGames,
    TResult Function(GetGamesByGenre value)? getGamesByGenre,
    TResult Function(GetReviewsForGame value)? getReviewsForGame,
    TResult Function(PostReview value)? postReview,
    required TResult orElse(),
  }) {
    if (getGames != null) {
      return getGames(this);
    }
    return orElse();
  }
}

abstract class GetGames implements DashboardEvent {
  const factory GetGames(
      {required final int limit, required final int offset}) = _$GetGames;

  int get limit;
  int get offset;
  @JsonKey(ignore: true)
  _$$GetGamesCopyWith<_$GetGames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGamesByGenreCopyWith<$Res> {
  factory _$$GetGamesByGenreCopyWith(
          _$GetGamesByGenre value, $Res Function(_$GetGamesByGenre) then) =
      __$$GetGamesByGenreCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, int offset, String genreSlug});
}

/// @nodoc
class __$$GetGamesByGenreCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetGamesByGenre>
    implements _$$GetGamesByGenreCopyWith<$Res> {
  __$$GetGamesByGenreCopyWithImpl(
      _$GetGamesByGenre _value, $Res Function(_$GetGamesByGenre) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? genreSlug = null,
  }) {
    return _then(_$GetGamesByGenre(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      genreSlug: null == genreSlug
          ? _value.genreSlug
          : genreSlug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetGamesByGenre implements GetGamesByGenre {
  const _$GetGamesByGenre(
      {required this.limit, required this.offset, required this.genreSlug});

  @override
  final int limit;
  @override
  final int offset;
  @override
  final String genreSlug;

  @override
  String toString() {
    return 'DashboardEvent.getGamesByGenre(limit: $limit, offset: $offset, genreSlug: $genreSlug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGamesByGenre &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.genreSlug, genreSlug) ||
                other.genreSlug == genreSlug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, genreSlug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGamesByGenreCopyWith<_$GetGamesByGenre> get copyWith =>
      __$$GetGamesByGenreCopyWithImpl<_$GetGamesByGenre>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) getGenres,
    required TResult Function(int limit, int offset) getGames,
    required TResult Function(int limit, int offset, String genreSlug)
        getGamesByGenre,
    required TResult Function(int limit, int offset, String gameId)
        getReviewsForGame,
    required TResult Function(String gameId, String comment, int rating)
        postReview,
  }) {
    return getGamesByGenre(limit, offset, genreSlug);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? getGenres,
    TResult? Function(int limit, int offset)? getGames,
    TResult? Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult? Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult? Function(String gameId, String comment, int rating)? postReview,
  }) {
    return getGamesByGenre?.call(limit, offset, genreSlug);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? getGenres,
    TResult Function(int limit, int offset)? getGames,
    TResult Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult Function(String gameId, String comment, int rating)? postReview,
    required TResult orElse(),
  }) {
    if (getGamesByGenre != null) {
      return getGamesByGenre(limit, offset, genreSlug);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetGenres value) getGenres,
    required TResult Function(GetGames value) getGames,
    required TResult Function(GetGamesByGenre value) getGamesByGenre,
    required TResult Function(GetReviewsForGame value) getReviewsForGame,
    required TResult Function(PostReview value) postReview,
  }) {
    return getGamesByGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetGenres value)? getGenres,
    TResult? Function(GetGames value)? getGames,
    TResult? Function(GetGamesByGenre value)? getGamesByGenre,
    TResult? Function(GetReviewsForGame value)? getReviewsForGame,
    TResult? Function(PostReview value)? postReview,
  }) {
    return getGamesByGenre?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetGenres value)? getGenres,
    TResult Function(GetGames value)? getGames,
    TResult Function(GetGamesByGenre value)? getGamesByGenre,
    TResult Function(GetReviewsForGame value)? getReviewsForGame,
    TResult Function(PostReview value)? postReview,
    required TResult orElse(),
  }) {
    if (getGamesByGenre != null) {
      return getGamesByGenre(this);
    }
    return orElse();
  }
}

abstract class GetGamesByGenre implements DashboardEvent {
  const factory GetGamesByGenre(
      {required final int limit,
      required final int offset,
      required final String genreSlug}) = _$GetGamesByGenre;

  int get limit;
  int get offset;
  String get genreSlug;
  @JsonKey(ignore: true)
  _$$GetGamesByGenreCopyWith<_$GetGamesByGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReviewsForGameCopyWith<$Res> {
  factory _$$GetReviewsForGameCopyWith(
          _$GetReviewsForGame value, $Res Function(_$GetReviewsForGame) then) =
      __$$GetReviewsForGameCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, int offset, String gameId});
}

/// @nodoc
class __$$GetReviewsForGameCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetReviewsForGame>
    implements _$$GetReviewsForGameCopyWith<$Res> {
  __$$GetReviewsForGameCopyWithImpl(
      _$GetReviewsForGame _value, $Res Function(_$GetReviewsForGame) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? gameId = null,
  }) {
    return _then(_$GetReviewsForGame(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetReviewsForGame implements GetReviewsForGame {
  const _$GetReviewsForGame(
      {required this.limit, required this.offset, required this.gameId});

  @override
  final int limit;
  @override
  final int offset;
  @override
  final String gameId;

  @override
  String toString() {
    return 'DashboardEvent.getReviewsForGame(limit: $limit, offset: $offset, gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReviewsForGame &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, gameId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReviewsForGameCopyWith<_$GetReviewsForGame> get copyWith =>
      __$$GetReviewsForGameCopyWithImpl<_$GetReviewsForGame>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) getGenres,
    required TResult Function(int limit, int offset) getGames,
    required TResult Function(int limit, int offset, String genreSlug)
        getGamesByGenre,
    required TResult Function(int limit, int offset, String gameId)
        getReviewsForGame,
    required TResult Function(String gameId, String comment, int rating)
        postReview,
  }) {
    return getReviewsForGame(limit, offset, gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? getGenres,
    TResult? Function(int limit, int offset)? getGames,
    TResult? Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult? Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult? Function(String gameId, String comment, int rating)? postReview,
  }) {
    return getReviewsForGame?.call(limit, offset, gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? getGenres,
    TResult Function(int limit, int offset)? getGames,
    TResult Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult Function(String gameId, String comment, int rating)? postReview,
    required TResult orElse(),
  }) {
    if (getReviewsForGame != null) {
      return getReviewsForGame(limit, offset, gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetGenres value) getGenres,
    required TResult Function(GetGames value) getGames,
    required TResult Function(GetGamesByGenre value) getGamesByGenre,
    required TResult Function(GetReviewsForGame value) getReviewsForGame,
    required TResult Function(PostReview value) postReview,
  }) {
    return getReviewsForGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetGenres value)? getGenres,
    TResult? Function(GetGames value)? getGames,
    TResult? Function(GetGamesByGenre value)? getGamesByGenre,
    TResult? Function(GetReviewsForGame value)? getReviewsForGame,
    TResult? Function(PostReview value)? postReview,
  }) {
    return getReviewsForGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetGenres value)? getGenres,
    TResult Function(GetGames value)? getGames,
    TResult Function(GetGamesByGenre value)? getGamesByGenre,
    TResult Function(GetReviewsForGame value)? getReviewsForGame,
    TResult Function(PostReview value)? postReview,
    required TResult orElse(),
  }) {
    if (getReviewsForGame != null) {
      return getReviewsForGame(this);
    }
    return orElse();
  }
}

abstract class GetReviewsForGame implements DashboardEvent {
  const factory GetReviewsForGame(
      {required final int limit,
      required final int offset,
      required final String gameId}) = _$GetReviewsForGame;

  int get limit;
  int get offset;
  String get gameId;
  @JsonKey(ignore: true)
  _$$GetReviewsForGameCopyWith<_$GetReviewsForGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostReviewCopyWith<$Res> {
  factory _$$PostReviewCopyWith(
          _$PostReview value, $Res Function(_$PostReview) then) =
      __$$PostReviewCopyWithImpl<$Res>;
  @useResult
  $Res call({String gameId, String comment, int rating});
}

/// @nodoc
class __$$PostReviewCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$PostReview>
    implements _$$PostReviewCopyWith<$Res> {
  __$$PostReviewCopyWithImpl(
      _$PostReview _value, $Res Function(_$PostReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? comment = null,
    Object? rating = null,
  }) {
    return _then(_$PostReview(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PostReview implements PostReview {
  const _$PostReview(
      {required this.gameId, required this.comment, required this.rating});

  @override
  final String gameId;
  @override
  final String comment;
  @override
  final int rating;

  @override
  String toString() {
    return 'DashboardEvent.postReview(gameId: $gameId, comment: $comment, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostReview &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId, comment, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostReviewCopyWith<_$PostReview> get copyWith =>
      __$$PostReviewCopyWithImpl<_$PostReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit, int offset) getGenres,
    required TResult Function(int limit, int offset) getGames,
    required TResult Function(int limit, int offset, String genreSlug)
        getGamesByGenre,
    required TResult Function(int limit, int offset, String gameId)
        getReviewsForGame,
    required TResult Function(String gameId, String comment, int rating)
        postReview,
  }) {
    return postReview(gameId, comment, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int limit, int offset)? getGenres,
    TResult? Function(int limit, int offset)? getGames,
    TResult? Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult? Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult? Function(String gameId, String comment, int rating)? postReview,
  }) {
    return postReview?.call(gameId, comment, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit, int offset)? getGenres,
    TResult Function(int limit, int offset)? getGames,
    TResult Function(int limit, int offset, String genreSlug)? getGamesByGenre,
    TResult Function(int limit, int offset, String gameId)? getReviewsForGame,
    TResult Function(String gameId, String comment, int rating)? postReview,
    required TResult orElse(),
  }) {
    if (postReview != null) {
      return postReview(gameId, comment, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetGenres value) getGenres,
    required TResult Function(GetGames value) getGames,
    required TResult Function(GetGamesByGenre value) getGamesByGenre,
    required TResult Function(GetReviewsForGame value) getReviewsForGame,
    required TResult Function(PostReview value) postReview,
  }) {
    return postReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetGenres value)? getGenres,
    TResult? Function(GetGames value)? getGames,
    TResult? Function(GetGamesByGenre value)? getGamesByGenre,
    TResult? Function(GetReviewsForGame value)? getReviewsForGame,
    TResult? Function(PostReview value)? postReview,
  }) {
    return postReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetGenres value)? getGenres,
    TResult Function(GetGames value)? getGames,
    TResult Function(GetGamesByGenre value)? getGamesByGenre,
    TResult Function(GetReviewsForGame value)? getReviewsForGame,
    TResult Function(PostReview value)? postReview,
    required TResult orElse(),
  }) {
    if (postReview != null) {
      return postReview(this);
    }
    return orElse();
  }
}

abstract class PostReview implements DashboardEvent {
  const factory PostReview(
      {required final String gameId,
      required final String comment,
      required final int rating}) = _$PostReview;

  String get gameId;
  String get comment;
  int get rating;
  @JsonKey(ignore: true)
  _$$PostReviewCopyWith<_$PostReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardSections section) loading,
    required TResult Function(DashboardSections section, T data) loaded,
    required TResult Function(DashboardSections section, String message) error,
    required TResult Function() postingReview,
    required TResult Function(ReviewData reviewData) postedReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DashboardSections section)? loading,
    TResult? Function(DashboardSections section, T data)? loaded,
    TResult? Function(DashboardSections section, String message)? error,
    TResult? Function()? postingReview,
    TResult? Function(ReviewData reviewData)? postedReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardSections section)? loading,
    TResult Function(DashboardSections section, T data)? loaded,
    TResult Function(DashboardSections section, String message)? error,
    TResult Function()? postingReview,
    TResult Function(ReviewData reviewData)? postedReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_PostingReview<T> value) postingReview,
    required TResult Function(_PostedReview<T> value) postedReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_PostingReview<T> value)? postingReview,
    TResult? Function(_PostedReview<T> value)? postedReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Error<T> value)? error,
    TResult Function(_PostingReview<T> value)? postingReview,
    TResult Function(_PostedReview<T> value)? postedReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<T, $Res> {
  factory $DashboardStateCopyWith(
          DashboardState<T> value, $Res Function(DashboardState<T>) then) =
      _$DashboardStateCopyWithImpl<T, $Res, DashboardState<T>>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<T, $Res, $Val extends DashboardState<T>>
    implements $DashboardStateCopyWith<T, $Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<T, $Res> {
  factory _$$_InitialCopyWith(
          _$_Initial<T> value, $Res Function(_$_Initial<T>) then) =
      __$$_InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<T, $Res>
    extends _$DashboardStateCopyWithImpl<T, $Res, _$_Initial<T>>
    implements _$$_InitialCopyWith<T, $Res> {
  __$$_InitialCopyWithImpl(
      _$_Initial<T> _value, $Res Function(_$_Initial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'DashboardState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardSections section) loading,
    required TResult Function(DashboardSections section, T data) loaded,
    required TResult Function(DashboardSections section, String message) error,
    required TResult Function() postingReview,
    required TResult Function(ReviewData reviewData) postedReview,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DashboardSections section)? loading,
    TResult? Function(DashboardSections section, T data)? loaded,
    TResult? Function(DashboardSections section, String message)? error,
    TResult? Function()? postingReview,
    TResult? Function(ReviewData reviewData)? postedReview,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardSections section)? loading,
    TResult Function(DashboardSections section, T data)? loaded,
    TResult Function(DashboardSections section, String message)? error,
    TResult Function()? postingReview,
    TResult Function(ReviewData reviewData)? postedReview,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_PostingReview<T> value) postingReview,
    required TResult Function(_PostedReview<T> value) postedReview,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_PostingReview<T> value)? postingReview,
    TResult? Function(_PostedReview<T> value)? postedReview,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Error<T> value)? error,
    TResult Function(_PostingReview<T> value)? postingReview,
    TResult Function(_PostedReview<T> value)? postedReview,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements DashboardState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T> value, $Res Function(_$_Loading<T>) then) =
      __$$_LoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DashboardSections section});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, $Res>
    extends _$DashboardStateCopyWithImpl<T, $Res, _$_Loading<T>>
    implements _$$_LoadingCopyWith<T, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T> _value, $Res Function(_$_Loading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
  }) {
    return _then(_$_Loading<T>(
      null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as DashboardSections,
    ));
  }
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading(this.section);

  @override
  final DashboardSections section;

  @override
  String toString() {
    return 'DashboardState<$T>.loading(section: $section)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading<T> &&
            (identical(other.section, section) || other.section == section));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<T, _$_Loading<T>> get copyWith =>
      __$$_LoadingCopyWithImpl<T, _$_Loading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardSections section) loading,
    required TResult Function(DashboardSections section, T data) loaded,
    required TResult Function(DashboardSections section, String message) error,
    required TResult Function() postingReview,
    required TResult Function(ReviewData reviewData) postedReview,
  }) {
    return loading(section);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DashboardSections section)? loading,
    TResult? Function(DashboardSections section, T data)? loaded,
    TResult? Function(DashboardSections section, String message)? error,
    TResult? Function()? postingReview,
    TResult? Function(ReviewData reviewData)? postedReview,
  }) {
    return loading?.call(section);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardSections section)? loading,
    TResult Function(DashboardSections section, T data)? loaded,
    TResult Function(DashboardSections section, String message)? error,
    TResult Function()? postingReview,
    TResult Function(ReviewData reviewData)? postedReview,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_PostingReview<T> value) postingReview,
    required TResult Function(_PostedReview<T> value) postedReview,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_PostingReview<T> value)? postingReview,
    TResult? Function(_PostedReview<T> value)? postedReview,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Error<T> value)? error,
    TResult Function(_PostingReview<T> value)? postingReview,
    TResult Function(_PostedReview<T> value)? postedReview,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements DashboardState<T> {
  const factory _Loading(final DashboardSections section) = _$_Loading<T>;

  DashboardSections get section;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<T, _$_Loading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<T, $Res> {
  factory _$$_LoadedCopyWith(
          _$_Loaded<T> value, $Res Function(_$_Loaded<T>) then) =
      __$$_LoadedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DashboardSections section, T data});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<T, $Res>
    extends _$DashboardStateCopyWithImpl<T, $Res, _$_Loaded<T>>
    implements _$$_LoadedCopyWith<T, $Res> {
  __$$_LoadedCopyWithImpl(
      _$_Loaded<T> _value, $Res Function(_$_Loaded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
    Object? data = freezed,
  }) {
    return _then(_$_Loaded<T>(
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as DashboardSections,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Loaded<T> implements _Loaded<T> {
  const _$_Loaded({required this.section, required this.data});

  @override
  final DashboardSections section;
  @override
  final T data;

  @override
  String toString() {
    return 'DashboardState<$T>.loaded(section: $section, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded<T> &&
            (identical(other.section, section) || other.section == section) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, section, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<T, _$_Loaded<T>> get copyWith =>
      __$$_LoadedCopyWithImpl<T, _$_Loaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardSections section) loading,
    required TResult Function(DashboardSections section, T data) loaded,
    required TResult Function(DashboardSections section, String message) error,
    required TResult Function() postingReview,
    required TResult Function(ReviewData reviewData) postedReview,
  }) {
    return loaded(section, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DashboardSections section)? loading,
    TResult? Function(DashboardSections section, T data)? loaded,
    TResult? Function(DashboardSections section, String message)? error,
    TResult? Function()? postingReview,
    TResult? Function(ReviewData reviewData)? postedReview,
  }) {
    return loaded?.call(section, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardSections section)? loading,
    TResult Function(DashboardSections section, T data)? loaded,
    TResult Function(DashboardSections section, String message)? error,
    TResult Function()? postingReview,
    TResult Function(ReviewData reviewData)? postedReview,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(section, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_PostingReview<T> value) postingReview,
    required TResult Function(_PostedReview<T> value) postedReview,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_PostingReview<T> value)? postingReview,
    TResult? Function(_PostedReview<T> value)? postedReview,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Error<T> value)? error,
    TResult Function(_PostingReview<T> value)? postingReview,
    TResult Function(_PostedReview<T> value)? postedReview,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded<T> implements DashboardState<T> {
  const factory _Loaded(
      {required final DashboardSections section,
      required final T data}) = _$_Loaded<T>;

  DashboardSections get section;
  T get data;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<T, _$_Loaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<T, $Res> {
  factory _$$_ErrorCopyWith(
          _$_Error<T> value, $Res Function(_$_Error<T>) then) =
      __$$_ErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DashboardSections section, String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<T, $Res>
    extends _$DashboardStateCopyWithImpl<T, $Res, _$_Error<T>>
    implements _$$_ErrorCopyWith<T, $Res> {
  __$$_ErrorCopyWithImpl(_$_Error<T> _value, $Res Function(_$_Error<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
    Object? message = null,
  }) {
    return _then(_$_Error<T>(
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as DashboardSections,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error<T> implements _Error<T> {
  const _$_Error({required this.section, required this.message});

  @override
  final DashboardSections section;
  @override
  final String message;

  @override
  String toString() {
    return 'DashboardState<$T>.error(section: $section, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error<T> &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      __$$_ErrorCopyWithImpl<T, _$_Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardSections section) loading,
    required TResult Function(DashboardSections section, T data) loaded,
    required TResult Function(DashboardSections section, String message) error,
    required TResult Function() postingReview,
    required TResult Function(ReviewData reviewData) postedReview,
  }) {
    return error(section, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DashboardSections section)? loading,
    TResult? Function(DashboardSections section, T data)? loaded,
    TResult? Function(DashboardSections section, String message)? error,
    TResult? Function()? postingReview,
    TResult? Function(ReviewData reviewData)? postedReview,
  }) {
    return error?.call(section, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardSections section)? loading,
    TResult Function(DashboardSections section, T data)? loaded,
    TResult Function(DashboardSections section, String message)? error,
    TResult Function()? postingReview,
    TResult Function(ReviewData reviewData)? postedReview,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(section, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_PostingReview<T> value) postingReview,
    required TResult Function(_PostedReview<T> value) postedReview,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_PostingReview<T> value)? postingReview,
    TResult? Function(_PostedReview<T> value)? postedReview,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Error<T> value)? error,
    TResult Function(_PostingReview<T> value)? postingReview,
    TResult Function(_PostedReview<T> value)? postedReview,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements DashboardState<T> {
  const factory _Error(
      {required final DashboardSections section,
      required final String message}) = _$_Error<T>;

  DashboardSections get section;
  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostingReviewCopyWith<T, $Res> {
  factory _$$_PostingReviewCopyWith(
          _$_PostingReview<T> value, $Res Function(_$_PostingReview<T>) then) =
      __$$_PostingReviewCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_PostingReviewCopyWithImpl<T, $Res>
    extends _$DashboardStateCopyWithImpl<T, $Res, _$_PostingReview<T>>
    implements _$$_PostingReviewCopyWith<T, $Res> {
  __$$_PostingReviewCopyWithImpl(
      _$_PostingReview<T> _value, $Res Function(_$_PostingReview<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PostingReview<T> implements _PostingReview<T> {
  const _$_PostingReview();

  @override
  String toString() {
    return 'DashboardState<$T>.postingReview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PostingReview<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardSections section) loading,
    required TResult Function(DashboardSections section, T data) loaded,
    required TResult Function(DashboardSections section, String message) error,
    required TResult Function() postingReview,
    required TResult Function(ReviewData reviewData) postedReview,
  }) {
    return postingReview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DashboardSections section)? loading,
    TResult? Function(DashboardSections section, T data)? loaded,
    TResult? Function(DashboardSections section, String message)? error,
    TResult? Function()? postingReview,
    TResult? Function(ReviewData reviewData)? postedReview,
  }) {
    return postingReview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardSections section)? loading,
    TResult Function(DashboardSections section, T data)? loaded,
    TResult Function(DashboardSections section, String message)? error,
    TResult Function()? postingReview,
    TResult Function(ReviewData reviewData)? postedReview,
    required TResult orElse(),
  }) {
    if (postingReview != null) {
      return postingReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_PostingReview<T> value) postingReview,
    required TResult Function(_PostedReview<T> value) postedReview,
  }) {
    return postingReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_PostingReview<T> value)? postingReview,
    TResult? Function(_PostedReview<T> value)? postedReview,
  }) {
    return postingReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Error<T> value)? error,
    TResult Function(_PostingReview<T> value)? postingReview,
    TResult Function(_PostedReview<T> value)? postedReview,
    required TResult orElse(),
  }) {
    if (postingReview != null) {
      return postingReview(this);
    }
    return orElse();
  }
}

abstract class _PostingReview<T> implements DashboardState<T> {
  const factory _PostingReview() = _$_PostingReview<T>;
}

/// @nodoc
abstract class _$$_PostedReviewCopyWith<T, $Res> {
  factory _$$_PostedReviewCopyWith(
          _$_PostedReview<T> value, $Res Function(_$_PostedReview<T>) then) =
      __$$_PostedReviewCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ReviewData reviewData});
}

/// @nodoc
class __$$_PostedReviewCopyWithImpl<T, $Res>
    extends _$DashboardStateCopyWithImpl<T, $Res, _$_PostedReview<T>>
    implements _$$_PostedReviewCopyWith<T, $Res> {
  __$$_PostedReviewCopyWithImpl(
      _$_PostedReview<T> _value, $Res Function(_$_PostedReview<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewData = null,
  }) {
    return _then(_$_PostedReview<T>(
      reviewData: null == reviewData
          ? _value.reviewData
          : reviewData // ignore: cast_nullable_to_non_nullable
              as ReviewData,
    ));
  }
}

/// @nodoc

class _$_PostedReview<T> implements _PostedReview<T> {
  const _$_PostedReview({required this.reviewData});

  @override
  final ReviewData reviewData;

  @override
  String toString() {
    return 'DashboardState<$T>.postedReview(reviewData: $reviewData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostedReview<T> &&
            (identical(other.reviewData, reviewData) ||
                other.reviewData == reviewData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostedReviewCopyWith<T, _$_PostedReview<T>> get copyWith =>
      __$$_PostedReviewCopyWithImpl<T, _$_PostedReview<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardSections section) loading,
    required TResult Function(DashboardSections section, T data) loaded,
    required TResult Function(DashboardSections section, String message) error,
    required TResult Function() postingReview,
    required TResult Function(ReviewData reviewData) postedReview,
  }) {
    return postedReview(reviewData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DashboardSections section)? loading,
    TResult? Function(DashboardSections section, T data)? loaded,
    TResult? Function(DashboardSections section, String message)? error,
    TResult? Function()? postingReview,
    TResult? Function(ReviewData reviewData)? postedReview,
  }) {
    return postedReview?.call(reviewData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardSections section)? loading,
    TResult Function(DashboardSections section, T data)? loaded,
    TResult Function(DashboardSections section, String message)? error,
    TResult Function()? postingReview,
    TResult Function(ReviewData reviewData)? postedReview,
    required TResult orElse(),
  }) {
    if (postedReview != null) {
      return postedReview(reviewData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_PostingReview<T> value) postingReview,
    required TResult Function(_PostedReview<T> value) postedReview,
  }) {
    return postedReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_PostingReview<T> value)? postingReview,
    TResult? Function(_PostedReview<T> value)? postedReview,
  }) {
    return postedReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Error<T> value)? error,
    TResult Function(_PostingReview<T> value)? postingReview,
    TResult Function(_PostedReview<T> value)? postedReview,
    required TResult orElse(),
  }) {
    if (postedReview != null) {
      return postedReview(this);
    }
    return orElse();
  }
}

abstract class _PostedReview<T> implements DashboardState<T> {
  const factory _PostedReview({required final ReviewData reviewData}) =
      _$_PostedReview<T>;

  ReviewData get reviewData;
  @JsonKey(ignore: true)
  _$$_PostedReviewCopyWith<T, _$_PostedReview<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
