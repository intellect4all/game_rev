class PaginatedResponse<T> {
  final int currentPage;
  final List<T> data;
  final int itemsPerPage;
  final int totalItems;
  final int totalPages;
  final bool hasMore;

  const PaginatedResponse({
    required this.currentPage,
    required this.data,
    required this.itemsPerPage,
    required this.totalItems,
    required this.totalPages,
    required this.hasMore,
  });

  copyWithOther({
    PaginatedResponse<T>? other,
  }) {
    return PaginatedResponse<T>(
      currentPage: other?.currentPage ?? this.currentPage,
      data: other?.data ?? this.data,
      itemsPerPage: other?.itemsPerPage ?? this.itemsPerPage,
      totalItems: other?.totalItems ?? this.totalItems,
      totalPages: other?.totalPages ?? this.totalPages,
      hasMore: other?.hasMore ?? this.hasMore,
    );
  }

  copyWith({
    int? currentPage,
    List<T>? data,
    int? itemsPerPage,
    int? totalItems,
    int? totalPages,
    bool? hasMore,
  }) {
    return PaginatedResponse<T>(
      currentPage: currentPage ?? this.currentPage,
      data: data ?? this.data,
      itemsPerPage: itemsPerPage ?? this.itemsPerPage,
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}
