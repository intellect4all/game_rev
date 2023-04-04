import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';

class PaginatedResponseModel<T> extends PaginatedResponse<T> {
  const PaginatedResponseModel({
    required super.currentPage,
    required super.data,
    required super.itemsPerPage,
    required super.totalItems,
    required super.totalPages,
    required super.hasMore,
  });

  factory PaginatedResponseModel.fromJson(Map<String, dynamic> json, List<T> Function (dynamic) fromJsonT) {
    return PaginatedResponseModel<T>(
      currentPage: json['currentPage'],
      data: fromJsonT(json['data']),
      itemsPerPage: json['itemsPerPage'],
      totalItems: json['totalItems'],
      totalPages: json['totalPages'],
      hasMore: json['hasMore'],
    );
  }
}
