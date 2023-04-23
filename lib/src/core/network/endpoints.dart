class AppEndpoints {
  // static const String baseUrl =
  //     "https://5gf7g7rqo8.execute-api.us-east-1.amazonaws.com/api/v1";

  static const String baseUrl = "http://127.0.0.1:3000/api/v1";

  static const signUp = "$baseUrl/account/signup";

  static const verifyEmail = "$baseUrl/account/verify-email";

  static const resendEmailOtp = "$baseUrl/account/verify-email/resend";

  static const resendResetPasswordOtp =
      "$baseUrl/account/forgot-password/resend";

  static const login = "$baseUrl/account/login";

  static const initiateForgetPassword = "$baseUrl/account/forgot-password/init";

  static const resetPassword = "$baseUrl/account/forgot-password/reset";

  static const initiateAccountVerification =
      "$baseUrl/account/init-verification";

  static const getGames = "$baseUrl/games";

  static const getGenres = "$baseUrl/games/genres";

  static const getReviews = "$baseUrl/reviews/game";

  static const addReview = "$baseUrl/reviews/add";

  static const addGame = "$baseUrl/games/add";

  static const getFlaggedReviews = "$baseUrl/reviews/flagged";

  static const getReviewLocations = "$baseUrl/reviews/locations";

  static String unflagReview(String reviewId) =>
      "$baseUrl/reviews/$reviewId/unflag";

  static String deleteReview(String reviewId) => "$baseUrl/reviews/$reviewId";
}
