import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/genre.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';
import 'package:image_picker/image_picker.dart';

import '../../dashboard/domain/entity/review.dart';
import '../domain/service/admin_facade.dart';

part 'admin_event.dart';

part 'admin_state.dart';

part 'admin_bloc.freezed.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final AdminServiceFacade _adminServiceFacade;

  AdminBloc(this._adminServiceFacade,) : super(const AdminState.initial()) {
    on<_FetchGenres>(_handleFetchGenres);
    on<_AddGame>(_handleAddGame);
    on<_GetFlaggedReviews>(_handleGetFlaggedReviews);
    on<_DeleteReview>(_handleDeleteReview);
    on<_UnflagReview>(_handleUnflagReview);
  }

  Future<void> _handleFetchGenres(_FetchGenres event,
      Emitter<AdminState> emit) async {
    emit(const AdminState.fetchingGenres());
    final res = await _adminServiceFacade.getGenres(
      limit: event.limit,
      offset: event.offset,
    );

    res.fold(
          (l) => emit(AdminState.failure(l.message)),
          (success) =>
          emit(
            AdminState.fetchingGenresSuccess(
              success,
            ),
          ),
    );
  }

  FutureOr<void> _handleAddGame(_AddGame event,
      Emitter<AdminState> emit) async {
    emit(const AdminState.addingGame());

    // convert xfile to file
    final File image = File(event.image.path);

    final res = await _adminServiceFacade.addGame(AddGameParams(
      fields: event.fields,
      image: image,
      genres: event.genres,
    ));

    res.fold(
          (l) => emit(AdminState.failure(l.message)),
          (success) =>
          emit(
            const AdminState.addingGameSuccess(),
          ),
    );
  }

  Future<void> _handleGetFlaggedReviews(_GetFlaggedReviews event,
      Emitter<AdminState> emit) async {
    emit(const AdminState.fetchingFlaggedReviews());
    final res = await _adminServiceFacade.getFlaggedReviews(
      limit: event.limit,
      offset: event.offset,
    );

    res.fold(
          (l) => emit(AdminState.failure(l.message)),
          (success) =>
          emit(
            AdminState.flaggedReviewsFetched(
              success,
            ),
          ),
    );
  }

  Future<void> _handleDeleteReview(_DeleteReview event,
      Emitter<AdminState> emit) async {
    final res = await _adminServiceFacade.deleteReview(event.reviewId);

    res.fold(
          (l) => emit(AdminState.failure(l.message)),
          (success) =>
          emit(
            AdminState.reviewDeleted(event.reviewId),
          ),
    );
  }

  Future<void> _handleUnflagReview(_UnflagReview event,
      Emitter<AdminState> emit) async {
    final res = await _adminServiceFacade.unflagReview(event.reviewId);

    res.fold(
          (l) => emit(AdminState.failure(l.message)),
          (success) =>
          emit(
            AdminState.reviewUnflagged(event.reviewId),
          ),
    );
  }
}
