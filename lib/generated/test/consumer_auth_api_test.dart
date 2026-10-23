import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerAuthApi
void main() {
  final instance = Openapi().getConsumerAuthApi();

  group(ConsumerAuthApi, () {
    // Search foods and restaurants
    //
    // App search bar: returns **foods** whose name matches and **restaurants** that sell those items (or whose name matches). Case-insensitive. Public — no auth. **name** is required. Optional **zone_id** (same as discover), **page** / **limit** (default 1 / 20, shared pagination), **latitude** / **longitude** for distance on restaurant cards.
    //
    //Future<ApiResponse> consumerFoodsSearchGet(String name, { int zoneId, int page, int limit, num latitude, num longitude }) async
    test('test consumerFoodsSearchGet', () async {
      // TODO
    });

    // Create guest session
    //
    // Call once on app launch when the user is not logged in.  **Returns:** `guest_id` + **guest JWT** (`data.token`, JWT claim `role: guest`). Persist both locally.  **No auth required** for home/discover: GET `/consumer/categories`, `/consumer/home-slider`, `/consumer/restaurants/_*`, `/consumer/foods/search`, `/consumer/config/_*`.  **Cart:** send `Authorization: Bearer <guest token>` on `/consumer/cart/_*`, **or** legacy query/body `is_guest=true` + `guest_id` (no Bearer).  **After login / Google sign-in:** include `guest_id` in the auth body so the server merges the guest cart into the customer account.  **Guest JWT cannot access:** `/consumer/whoami`, profile, favourites, saved addresses.
    //
    //Future<ConsumerGuestSessionResponse> consumerGuestRequestPost({ String xForwardedFor, ConsumerGuestRequestBody consumerGuestRequestBody }) async
    test('test consumerGuestRequestPost', () async {
      // TODO
    });

    // Login customer
    //
    // Unified login. **manual** — phone or email + password. **social** — Google only (`medium=google`; verifies token server-side; same flow as `/consumer/sign-in-with-google`). **otp** — use POST `/consumer/login/send-otp` then `/consumer/login/verify-otp` (not this endpoint). JWT in `data.token` when `data.is_personal_info === 1`; otherwise complete profile via `PUT /consumer/update-profile`. Optional `guest_id` merges guest cart.
    //
    //Future<ConsumerLoginResponse> consumerLoginPost(ConsumerLoginBody consumerLoginBody) async
    test('test consumerLoginPost', () async {
      // TODO
    });

    // Send login OTP (customer app)
    //
    // Phone sign-in step 1. Returns **`data.otp`** in the response until SMS is enabled in production. 60s resend cooldown in `data.resend_after_seconds`. Dev OTP often **`123456`**. Phone must match an existing customer account.
    //
    //Future<ApiResponse> consumerLoginSendOtpPost(ConsumerLoginSendOtpPostRequest consumerLoginSendOtpPostRequest) async
    test('test consumerLoginSendOtpPost', () async {
      // TODO
    });

    // Verify login OTP (customer app)
    //
    // Phone sign-in step 2. Returns the same JWT payload as manual login (`data.token`, `login_type: otp`). Optional `guest_id` merges guest cart.
    //
    //Future<ConsumerLoginResponse> consumerLoginVerifyOtpPost(ConsumerLoginVerifyOtpPostRequest consumerLoginVerifyOtpPostRequest) async
    test('test consumerLoginVerifyOtpPost', () async {
      // TODO
    });

    // 
    //
    //Future<ApiResponse> consumerNotificationsTestGet() async
    test('test consumerNotificationsTestGet', () async {
      // TODO
    });

    // 
    //
    //Future<ApiResponse> consumerNotificationsTestPost() async
    test('test consumerNotificationsTestPost', () async {
      // TODO
    });

    // Change password (logged in)
    //
    // Settings → change password. Requires Bearer token and current password.
    //
    //Future<ApiResponse> consumerPasswordChangePut(String authorization, ConsumerChangePasswordBody consumerChangePasswordBody) async
    test('test consumerPasswordChangePut', () async {
      // TODO
    });

    // Forgot password — send OTP
    //
    // Consumer app: email OTP (default). Set `field_type: phone` for SMS. Dev/test OTP is `123456` (server log). User must exist with that email/phone.
    //
    //Future<ApiResponse> consumerPasswordForgotPost(ConsumerForgotPasswordBody consumerForgotPasswordBody) async
    test('test consumerPasswordForgotPost', () async {
      // TODO
    });

    // Reset password with OTP
    //
    // Final forgot-password step. Same identity + `otp` as forgot flow.
    //
    //Future<ApiResponse> consumerPasswordResetPut(ConsumerPasswordResetBody consumerPasswordResetBody) async
    test('test consumerPasswordResetPut', () async {
      // TODO
    });

    // Verify forgot-password OTP
    //
    // Optional step before reset screen. Same `email`/`phone` as forgot. Body field **`otp`** (6 digits).
    //
    //Future<ApiResponse> consumerPasswordVerifyOtpPost(ConsumerPasswordOtpBody consumerPasswordOtpBody) async
    test('test consumerPasswordVerifyOtpPost', () async {
      // TODO
    });

    // Register customer
    //
    // Create a consumer account. Email optional but required for email-based forgot password.
    //
    //Future<ApiResponse> consumerRegisterPost(ConsumerRegisterBody consumerRegisterBody) async
    test('test consumerRegisterPost', () async {
      // TODO
    });

    // Sign in with Google
    //
    // Customer Google sign-in (legacy PHP: `POST /auth/login` with `login_type=social`, `medium=google`). App sends Google **id token** (default) or **access token** when `access_token` is `1`. Backend verifies with Google, creates/links user, returns JWT only if profile has name (`is_personal_info`).
    //
    //Future<ConsumerSocialLoginResponse> consumerSignInWithGooglePost(ConsumerGoogleSignInBody consumerGoogleSignInBody) async
    test('test consumerSignInWithGooglePost', () async {
      // TODO
    });

  });
}
