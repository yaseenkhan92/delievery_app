//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/admin_create_zone_body.dart';
import 'package:openapi/src/model/admin_zone_list_response.dart';
import 'package:openapi/src/model/admin_zone_list_response_data_inner.dart';
import 'package:openapi/src/model/admin_zone_list_response_data_inner_formated_coordinates_inner.dart';
import 'package:openapi/src/model/api_error.dart';
import 'package:openapi/src/model/api_response.dart';
import 'package:openapi/src/model/app_configuration_response.dart';
import 'package:openapi/src/model/app_configuration_response_centralize_login.dart';
import 'package:openapi/src/model/app_configuration_response_language_inner.dart';
import 'package:openapi/src/model/chat_consumer_list_response.dart';
import 'package:openapi/src/model/chat_consumer_search_response.dart';
import 'package:openapi/src/model/chat_consumer_send_request.dart';
import 'package:openapi/src/model/chat_conversation.dart';
import 'package:openapi/src/model/chat_driver_send_request.dart';
import 'package:openapi/src/model/chat_image_upload_response.dart';
import 'package:openapi/src/model/chat_message.dart';
import 'package:openapi/src/model/chat_send_response.dart';
import 'package:openapi/src/model/chat_thread_response.dart';
import 'package:openapi/src/model/chat_user_info.dart';
import 'package:openapi/src/model/chat_validation_error_response.dart';
import 'package:openapi/src/model/chat_validation_error_response_errors_inner.dart';
import 'package:openapi/src/model/chat_vendor_driver_list_response.dart';
import 'package:openapi/src/model/chat_vendor_driver_search_response.dart';
import 'package:openapi/src/model/chat_vendor_send_request.dart';
import 'package:openapi/src/model/consumer_address.dart';
import 'package:openapi/src/model/consumer_address_body.dart';
import 'package:openapi/src/model/consumer_address_create_response.dart';
import 'package:openapi/src/model/consumer_address_list_response.dart';
import 'package:openapi/src/model/consumer_address_list_response_data.dart';
import 'package:openapi/src/model/consumer_address_update_response.dart';
import 'package:openapi/src/model/consumer_addresses_id_delete200_response.dart';
import 'package:openapi/src/model/consumer_apply_delivery_man_body.dart';
import 'package:openapi/src/model/consumer_apply_restaurant_body.dart';
import 'package:openapi/src/model/consumer_cart_add_post_request.dart';
import 'package:openapi/src/model/consumer_cart_clear_user_id_delete200_response.dart';
import 'package:openapi/src/model/consumer_cart_update_put_request.dart';
import 'package:openapi/src/model/consumer_change_password_body.dart';
import 'package:openapi/src/model/consumer_favourite_action_response.dart';
import 'package:openapi/src/model/consumer_favourite_body.dart';
import 'package:openapi/src/model/consumer_favourite_food_item.dart';
import 'package:openapi/src/model/consumer_favourite_list_data.dart';
import 'package:openapi/src/model/consumer_favourite_list_response.dart';
import 'package:openapi/src/model/consumer_favourite_restaurant_item.dart';
import 'package:openapi/src/model/consumer_forgot_password_body.dart';
import 'package:openapi/src/model/consumer_get_zone_id_response.dart';
import 'package:openapi/src/model/consumer_google_sign_in_body.dart';
import 'package:openapi/src/model/consumer_google_sign_in_body_access_token.dart';
import 'package:openapi/src/model/consumer_guest_request_body.dart';
import 'package:openapi/src/model/consumer_guest_session_data.dart';
import 'package:openapi/src/model/consumer_guest_session_response.dart';
import 'package:openapi/src/model/consumer_login_body.dart';
import 'package:openapi/src/model/consumer_login_body_access_token.dart';
import 'package:openapi/src/model/consumer_login_response.dart';
import 'package:openapi/src/model/consumer_login_response_data.dart';
import 'package:openapi/src/model/consumer_login_response_data_one_of.dart';
import 'package:openapi/src/model/consumer_login_send_otp_post_request.dart';
import 'package:openapi/src/model/consumer_login_verify_otp_post_request.dart';
import 'package:openapi/src/model/consumer_order_cancel_body.dart';
import 'package:openapi/src/model/consumer_order_cancel_body_order_id.dart';
import 'package:openapi/src/model/consumer_order_cancel_response.dart';
import 'package:openapi/src/model/consumer_order_history_item.dart';
import 'package:openapi/src/model/consumer_order_history_response.dart';
import 'package:openapi/src/model/consumer_order_list_data.dart';
import 'package:openapi/src/model/consumer_order_list_item.dart';
import 'package:openapi/src/model/consumer_order_list_response.dart';
import 'package:openapi/src/model/consumer_order_track_data.dart';
import 'package:openapi/src/model/consumer_order_track_delivery_man.dart';
import 'package:openapi/src/model/consumer_order_track_response.dart';
import 'package:openapi/src/model/consumer_order_track_restaurant.dart';
import 'package:openapi/src/model/consumer_password_otp_body.dart';
import 'package:openapi/src/model/consumer_password_reset_body.dart';
import 'package:openapi/src/model/consumer_place_order_body.dart';
import 'package:openapi/src/model/consumer_place_order_data.dart';
import 'package:openapi/src/model/consumer_place_order_error.dart';
import 'package:openapi/src/model/consumer_place_order_error_errors_inner.dart';
import 'package:openapi/src/model/consumer_place_order_line_item.dart';
import 'package:openapi/src/model/consumer_place_order_response.dart';
import 'package:openapi/src/model/consumer_profile_response.dart';
import 'package:openapi/src/model/consumer_profile_response_data.dart';
import 'package:openapi/src/model/consumer_profile_update_response.dart';
import 'package:openapi/src/model/consumer_profile_user.dart';
import 'package:openapi/src/model/consumer_register_body.dart';
import 'package:openapi/src/model/consumer_restaurant_list_response.dart';
import 'package:openapi/src/model/consumer_restaurant_list_response_data.dart';
import 'package:openapi/src/model/consumer_restaurant_summary.dart';
import 'package:openapi/src/model/consumer_restaurants_id_foods_get200_response.dart';
import 'package:openapi/src/model/consumer_restaurants_id_foods_get200_response_data.dart';
import 'package:openapi/src/model/consumer_restaurants_id_foods_get200_response_data_foods_inner.dart';
import 'package:openapi/src/model/consumer_restaurants_popular_get_zone_id_parameter.dart';
import 'package:openapi/src/model/consumer_restaurants_specfic_id_get200_response.dart';
import 'package:openapi/src/model/consumer_restaurants_specfic_id_get200_response_data.dart';
import 'package:openapi/src/model/consumer_social_login_data.dart';
import 'package:openapi/src/model/consumer_social_login_exist_user.dart';
import 'package:openapi/src/model/consumer_social_login_response.dart';
import 'package:openapi/src/model/consumer_suggested_foods_response.dart';
import 'package:openapi/src/model/consumer_suggested_foods_response_data_inner.dart';
import 'package:openapi/src/model/consumer_update_firebase_token_put_request.dart';
import 'package:openapi/src/model/consumer_update_interest_post_request.dart';
import 'package:openapi/src/model/consumer_update_profile_body.dart';
import 'package:openapi/src/model/consumer_update_zone_put_request.dart';
import 'package:openapi/src/model/consumer_zone_data_item.dart';
import 'package:openapi/src/model/consumer_zone_map_item.dart';
import 'package:openapi/src/model/delivery_man_change_password_body.dart';
import 'package:openapi/src/model/delivery_man_earning_history_item.dart';
import 'package:openapi/src/model/delivery_man_earning_order_item.dart';
import 'package:openapi/src/model/delivery_man_earning_order_snapshot.dart';
import 'package:openapi/src/model/delivery_man_earnings_response.dart';
import 'package:openapi/src/model/delivery_man_earnings_response_data.dart';
import 'package:openapi/src/model/delivery_man_earnings_summary.dart';
import 'package:openapi/src/model/delivery_man_earnings_summary_wallet.dart';
import 'package:openapi/src/model/delivery_man_forgot_password_body.dart';
import 'package:openapi/src/model/delivery_man_home_response.dart';
import 'package:openapi/src/model/delivery_man_home_response_data.dart';
import 'package:openapi/src/model/delivery_man_login_body.dart';
import 'package:openapi/src/model/delivery_man_login_data.dart';
import 'package:openapi/src/model/delivery_man_login_response.dart';
import 'package:openapi/src/model/delivery_man_my_order_card.dart';
import 'package:openapi/src/model/delivery_man_my_orders_response.dart';
import 'package:openapi/src/model/delivery_man_my_orders_response_data.dart';
import 'package:openapi/src/model/delivery_man_order_detail.dart';
import 'package:openapi/src/model/delivery_man_order_detail_dispatch_summary.dart';
import 'package:openapi/src/model/delivery_man_order_detail_item.dart';
import 'package:openapi/src/model/delivery_man_order_detail_item_addon_lines_inner.dart';
import 'package:openapi/src/model/delivery_man_order_detail_party.dart';
import 'package:openapi/src/model/delivery_man_order_detail_pricing.dart';
import 'package:openapi/src/model/delivery_man_order_detail_response.dart';
import 'package:openapi/src/model/delivery_man_order_detail_restaurant.dart';
import 'package:openapi/src/model/delivery_man_order_list_response.dart';
import 'package:openapi/src/model/delivery_man_order_status_update_response.dart';
import 'package:openapi/src/model/delivery_man_order_status_update_response_data.dart';
import 'package:openapi/src/model/delivery_man_order_summary.dart';
import 'package:openapi/src/model/delivery_man_password_otp_body.dart';
import 'package:openapi/src/model/delivery_man_password_reset_body.dart';
import 'package:openapi/src/model/delivery_man_profile_data.dart';
import 'package:openapi/src/model/delivery_man_profile_response.dart';
import 'package:openapi/src/model/delivery_man_register_body.dart';
import 'package:openapi/src/model/delivery_man_register_body_identity_image.dart';
import 'package:openapi/src/model/delivery_man_status_toggle_response.dart';
import 'package:openapi/src/model/delivery_man_update_order_status_body.dart';
import 'package:openapi/src/model/delivery_man_whoami_response.dart';
import 'package:openapi/src/model/fcm_token_update_body.dart';
import 'package:openapi/src/model/fcm_token_update_response.dart';
import 'package:openapi/src/model/legal_page_document.dart';
import 'package:openapi/src/model/legal_page_response.dart';
import 'package:openapi/src/model/legal_pages_bundle_response.dart';
import 'package:openapi/src/model/legal_pages_bundle_response_data_value.dart';
import 'package:openapi/src/model/notification_broadcast_data_payload.dart';
import 'package:openapi/src/model/notification_delete_response.dart';
import 'package:openapi/src/model/notification_inbox_broadcast_item.dart';
import 'package:openapi/src/model/notification_inbox_item.dart';
import 'package:openapi/src/model/notification_inbox_list_response.dart';
import 'package:openapi/src/model/notification_inbox_page_data.dart';
import 'package:openapi/src/model/notification_inbox_user_item.dart';
import 'package:openapi/src/model/notification_inbox_user_item_data.dart';
import 'package:openapi/src/model/pages_slug_get200_response.dart';
import 'package:openapi/src/model/partner_application_response.dart';
import 'package:openapi/src/model/partner_application_response_data.dart';
import 'package:openapi/src/model/place_order_line_item.dart';
import 'package:openapi/src/model/place_order_request.dart';
import 'package:openapi/src/model/place_order_request_latitude.dart';
import 'package:openapi/src/model/registration_init_body.dart';
import 'package:openapi/src/model/registration_init_data.dart';
import 'package:openapi/src/model/registration_init_data_subfolders.dart';
import 'package:openapi/src/model/registration_init_response.dart';
import 'package:openapi/src/model/upload_post_request.dart';
import 'package:openapi/src/model/upload_success_response.dart';
import 'package:openapi/src/model/vendor_change_password_body.dart';
import 'package:openapi/src/model/vendor_fcm_token_update_body.dart';
import 'package:openapi/src/model/vendor_forgot_password_body.dart';
import 'package:openapi/src/model/vendor_order_counts_response.dart';
import 'package:openapi/src/model/vendor_order_detail.dart';
import 'package:openapi/src/model/vendor_order_detail_response.dart';
import 'package:openapi/src/model/vendor_order_line_item.dart';
import 'package:openapi/src/model/vendor_order_list_response.dart';
import 'package:openapi/src/model/vendor_order_list_response_data.dart';
import 'package:openapi/src/model/vendor_order_recent_response.dart';
import 'package:openapi/src/model/vendor_order_recent_response_data.dart';
import 'package:openapi/src/model/vendor_order_status_update_body.dart';
import 'package:openapi/src/model/vendor_order_status_update_response.dart';
import 'package:openapi/src/model/vendor_order_summary.dart';
import 'package:openapi/src/model/vendor_password_otp_body.dart';
import 'package:openapi/src/model/vendor_password_reset_body.dart';
import 'package:openapi/src/model/vendor_pos_order_history_item.dart';
import 'package:openapi/src/model/vendor_pos_order_history_response.dart';
import 'package:openapi/src/model/vendor_pos_order_history_response_data.dart';
import 'package:openapi/src/model/vendor_pos_order_history_summary.dart';
import 'package:openapi/src/model/vendor_profile_data.dart';
import 'package:openapi/src/model/vendor_register_body.dart';
import 'package:openapi/src/model/vendor_register_body_lat.dart';
import 'package:openapi/src/model/vendor_register_body_lng.dart';
import 'package:openapi/src/model/vendor_request_driver_body.dart';
import 'package:openapi/src/model/vendor_request_driver_response.dart';
import 'package:openapi/src/model/vendor_request_driver_response_data.dart';
import 'package:openapi/src/model/vendor_restaurant_active_status_body.dart';
import 'package:openapi/src/model/vendor_restaurant_active_status_response.dart';
import 'package:openapi/src/model/vendor_restaurant_active_status_response_data.dart';
import 'package:openapi/src/model/vendor_restaurant_business_setup_body.dart';
import 'package:openapi/src/model/vendor_restaurant_meta_data_body.dart';
import 'package:openapi/src/model/vendor_restaurant_meta_translation.dart';
import 'package:openapi/src/model/vendor_restaurant_msg_response.dart';
import 'package:openapi/src/model/vendor_restaurant_schedule_body.dart';
import 'package:openapi/src/model/vendor_restaurant_setting_toggle_body.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_flags.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_get_response.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_mutation_response.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_options.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_options_cuisines_inner.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_options_languages_inner.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_payload.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_payload_translations_value.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_schedule_item.dart';
import 'package:openapi/src/model/vendor_whoami_data.dart';
import 'package:openapi/src/model/vendor_whoami_response.dart';
import 'package:openapi/src/model/vendor_whoami_restaurant.dart';

part 'serializers.g.dart';

@SerializersFor([
  AdminCreateZoneBody,
  AdminZoneListResponse,
  AdminZoneListResponseDataInner,
  AdminZoneListResponseDataInnerFormatedCoordinatesInner,
  ApiError,
  ApiResponse,
  AppConfigurationResponse,
  AppConfigurationResponseCentralizeLogin,
  AppConfigurationResponseLanguageInner,
  ChatConsumerListResponse,
  ChatConsumerSearchResponse,
  ChatConsumerSendRequest,
  ChatConversation,
  ChatDriverSendRequest,
  ChatImageUploadResponse,
  ChatMessage,
  ChatSendResponse,
  ChatThreadResponse,
  ChatUserInfo,
  ChatValidationErrorResponse,
  ChatValidationErrorResponseErrorsInner,
  ChatVendorDriverListResponse,
  ChatVendorDriverSearchResponse,
  ChatVendorSendRequest,
  ConsumerAddress,
  ConsumerAddressBody,
  ConsumerAddressCreateResponse,
  ConsumerAddressListResponse,
  ConsumerAddressListResponseData,
  ConsumerAddressUpdateResponse,
  ConsumerAddressesIdDelete200Response,
  ConsumerApplyDeliveryManBody,
  ConsumerApplyRestaurantBody,
  ConsumerCartAddPostRequest,
  ConsumerCartClearUserIdDelete200Response,
  ConsumerCartUpdatePutRequest,
  ConsumerChangePasswordBody,
  ConsumerFavouriteActionResponse,
  ConsumerFavouriteBody,
  ConsumerFavouriteFoodItem,
  ConsumerFavouriteListData,
  ConsumerFavouriteListResponse,
  ConsumerFavouriteRestaurantItem,
  ConsumerForgotPasswordBody,
  ConsumerGetZoneIdResponse,
  ConsumerGoogleSignInBody,
  ConsumerGoogleSignInBodyAccessToken,
  ConsumerGuestRequestBody,
  ConsumerGuestSessionData,
  ConsumerGuestSessionResponse,
  ConsumerLoginBody,
  ConsumerLoginBodyAccessToken,
  ConsumerLoginResponse,
  ConsumerLoginResponseData,
  ConsumerLoginResponseDataOneOf,
  ConsumerLoginSendOtpPostRequest,
  ConsumerLoginVerifyOtpPostRequest,
  ConsumerOrderCancelBody,
  ConsumerOrderCancelBodyOrderId,
  ConsumerOrderCancelResponse,
  ConsumerOrderHistoryItem,
  ConsumerOrderHistoryResponse,
  ConsumerOrderListData,
  ConsumerOrderListItem,$ConsumerOrderListItem,
  ConsumerOrderListResponse,$ConsumerOrderListResponse,
  ConsumerOrderTrackData,
  ConsumerOrderTrackDeliveryMan,
  ConsumerOrderTrackResponse,
  ConsumerOrderTrackRestaurant,
  ConsumerPasswordOtpBody,
  ConsumerPasswordResetBody,
  ConsumerPlaceOrderBody,
  ConsumerPlaceOrderData,
  ConsumerPlaceOrderError,
  ConsumerPlaceOrderErrorErrorsInner,
  ConsumerPlaceOrderLineItem,
  ConsumerPlaceOrderResponse,
  ConsumerProfileResponse,
  ConsumerProfileResponseData,
  ConsumerProfileUpdateResponse,
  ConsumerProfileUser,$ConsumerProfileUser,
  ConsumerRegisterBody,
  ConsumerRestaurantListResponse,
  ConsumerRestaurantListResponseData,
  ConsumerRestaurantSummary,
  ConsumerRestaurantsIdFoodsGet200Response,
  ConsumerRestaurantsIdFoodsGet200ResponseData,
  ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner,
  ConsumerRestaurantsPopularGetZoneIdParameter,
  ConsumerRestaurantsSpecficIdGet200Response,
  ConsumerRestaurantsSpecficIdGet200ResponseData,
  ConsumerSocialLoginData,
  ConsumerSocialLoginExistUser,
  ConsumerSocialLoginResponse,
  ConsumerSuggestedFoodsResponse,
  ConsumerSuggestedFoodsResponseDataInner,
  ConsumerUpdateFirebaseTokenPutRequest,
  ConsumerUpdateInterestPostRequest,
  ConsumerUpdateProfileBody,
  ConsumerUpdateZonePutRequest,
  ConsumerZoneDataItem,
  ConsumerZoneMapItem,
  DeliveryManChangePasswordBody,
  DeliveryManEarningHistoryItem,
  DeliveryManEarningOrderItem,
  DeliveryManEarningOrderSnapshot,
  DeliveryManEarningsResponse,
  DeliveryManEarningsResponseData,
  DeliveryManEarningsSummary,
  DeliveryManEarningsSummaryWallet,
  DeliveryManForgotPasswordBody,
  DeliveryManHomeResponse,
  DeliveryManHomeResponseData,
  DeliveryManLoginBody,
  DeliveryManLoginData,
  DeliveryManLoginResponse,
  DeliveryManMyOrderCard,
  DeliveryManMyOrdersResponse,
  DeliveryManMyOrdersResponseData,
  DeliveryManOrderDetail,
  DeliveryManOrderDetailDispatchSummary,
  DeliveryManOrderDetailItem,
  DeliveryManOrderDetailItemAddonLinesInner,
  DeliveryManOrderDetailParty,
  DeliveryManOrderDetailPricing,
  DeliveryManOrderDetailResponse,
  DeliveryManOrderDetailRestaurant,
  DeliveryManOrderListResponse,
  DeliveryManOrderStatusUpdateResponse,
  DeliveryManOrderStatusUpdateResponseData,
  DeliveryManOrderSummary,
  DeliveryManPasswordOtpBody,
  DeliveryManPasswordResetBody,
  DeliveryManProfileData,
  DeliveryManProfileResponse,
  DeliveryManRegisterBody,
  DeliveryManRegisterBodyIdentityImage,
  DeliveryManStatusToggleResponse,
  DeliveryManUpdateOrderStatusBody,
  DeliveryManWhoamiResponse,
  FcmTokenUpdateBody,
  FcmTokenUpdateResponse,
  LegalPageDocument,
  LegalPageResponse,
  LegalPagesBundleResponse,
  LegalPagesBundleResponseDataValue,
  NotificationBroadcastDataPayload,
  NotificationDeleteResponse,
  NotificationInboxBroadcastItem,
  NotificationInboxItem,
  NotificationInboxListResponse,
  NotificationInboxPageData,
  NotificationInboxUserItem,
  NotificationInboxUserItemData,
  PagesSlugGet200Response,
  PartnerApplicationResponse,
  PartnerApplicationResponseData,
  PlaceOrderLineItem,
  PlaceOrderRequest,
  PlaceOrderRequestLatitude,
  RegistrationInitBody,
  RegistrationInitData,
  RegistrationInitDataSubfolders,
  RegistrationInitResponse,
  UploadPostRequest,
  UploadSuccessResponse,
  VendorChangePasswordBody,
  VendorFcmTokenUpdateBody,
  VendorForgotPasswordBody,
  VendorOrderCountsResponse,
  VendorOrderDetail,
  VendorOrderDetailResponse,
  VendorOrderLineItem,
  VendorOrderListResponse,
  VendorOrderListResponseData,
  VendorOrderRecentResponse,
  VendorOrderRecentResponseData,
  VendorOrderStatusUpdateBody,
  VendorOrderStatusUpdateResponse,
  VendorOrderSummary,$VendorOrderSummary,
  VendorPasswordOtpBody,
  VendorPasswordResetBody,
  VendorPosOrderHistoryItem,
  VendorPosOrderHistoryResponse,
  VendorPosOrderHistoryResponseData,
  VendorPosOrderHistorySummary,
  VendorProfileData,
  VendorRegisterBody,
  VendorRegisterBodyLat,
  VendorRegisterBodyLng,
  VendorRequestDriverBody,
  VendorRequestDriverResponse,
  VendorRequestDriverResponseData,
  VendorRestaurantActiveStatusBody,
  VendorRestaurantActiveStatusResponse,
  VendorRestaurantActiveStatusResponseData,
  VendorRestaurantBusinessSetupBody,
  VendorRestaurantMetaDataBody,
  VendorRestaurantMetaTranslation,
  VendorRestaurantMsgResponse,
  VendorRestaurantScheduleBody,
  VendorRestaurantSettingToggleBody,
  VendorRestaurantSetupFlags,
  VendorRestaurantSetupGetResponse,
  VendorRestaurantSetupMutationResponse,
  VendorRestaurantSetupOptions,
  VendorRestaurantSetupOptionsCuisinesInner,
  VendorRestaurantSetupOptionsLanguagesInner,
  VendorRestaurantSetupPayload,
  VendorRestaurantSetupPayloadTranslationsValue,
  VendorRestaurantSetupScheduleItem,
  VendorWhoamiData,
  VendorWhoamiResponse,
  VendorWhoamiRestaurant,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerPlaceOrderLineItem)]),
        () => ListBuilder<ConsumerPlaceOrderLineItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerOrderListItem)]),
        () => ListBuilder<ConsumerOrderListItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(VendorRestaurantSetupScheduleItem)]),
        () => ListBuilder<VendorRestaurantSetupScheduleItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(VendorPosOrderHistoryItem)]),
        () => ListBuilder<VendorPosOrderHistoryItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerFavouriteFoodItem)]),
        () => ListBuilder<ConsumerFavouriteFoodItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AppConfigurationResponseLanguageInner)]),
        () => ListBuilder<AppConfigurationResponseLanguageInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerZoneMapItem)]),
        () => ListBuilder<ConsumerZoneMapItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(VendorRestaurantSetupOptionsLanguagesInner)]),
        () => ListBuilder<VendorRestaurantSetupOptionsLanguagesInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(VendorOrderLineItem)]),
        () => ListBuilder<VendorOrderLineItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChatMessage)]),
        () => ListBuilder<ChatMessage>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(VendorOrderSummary)]),
        () => ListBuilder<VendorOrderSummary>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PlaceOrderLineItem)]),
        () => ListBuilder<PlaceOrderLineItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerAddress)]),
        () => ListBuilder<ConsumerAddress>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(VendorRestaurantSetupPayloadTranslationsValue)]),
        () => MapBuilder<String, VendorRestaurantSetupPayloadTranslationsValue>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(VendorRestaurantSetupOptionsCuisinesInner)]),
        () => ListBuilder<VendorRestaurantSetupOptionsCuisinesInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(int)]),
        () => MapBuilder<String, int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(BuiltList, [FullType(num)])]),
        () => ListBuilder<BuiltList<num>>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner)]),
        () => ListBuilder<ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerPlaceOrderErrorErrorsInner)]),
        () => ListBuilder<ConsumerPlaceOrderErrorErrorsInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerSuggestedFoodsResponseDataInner)]),
        () => ListBuilder<ConsumerSuggestedFoodsResponseDataInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DeliveryManOrderDetailItemAddonLinesInner)]),
        () => ListBuilder<DeliveryManOrderDetailItemAddonLinesInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(VendorWhoamiRestaurant)]),
        () => ListBuilder<VendorWhoamiRestaurant>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DeliveryManOrderDetailItem)]),
        () => ListBuilder<DeliveryManOrderDetailItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(num)]),
        () => ListBuilder<num>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AdminZoneListResponseDataInnerFormatedCoordinatesInner)]),
        () => ListBuilder<AdminZoneListResponseDataInnerFormatedCoordinatesInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DeliveryManOrderSummary)]),
        () => ListBuilder<DeliveryManOrderSummary>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AdminZoneListResponseDataInner)]),
        () => ListBuilder<AdminZoneListResponseDataInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(JsonObject)]),
        () => ListBuilder<JsonObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChatConversation)]),
        () => ListBuilder<ChatConversation>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChatValidationErrorResponseErrorsInner)]),
        () => ListBuilder<ChatValidationErrorResponseErrorsInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerRestaurantSummary)]),
        () => ListBuilder<ConsumerRestaurantSummary>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType.nullable(JsonObject)]),
        () => ListBuilder<JsonObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(LegalPagesBundleResponseDataValue)]),
        () => MapBuilder<String, LegalPagesBundleResponseDataValue>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(NotificationInboxItem)]),
        () => ListBuilder<NotificationInboxItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerFavouriteRestaurantItem)]),
        () => ListBuilder<ConsumerFavouriteRestaurantItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DeliveryManMyOrderCard)]),
        () => ListBuilder<DeliveryManMyOrderCard>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConsumerZoneDataItem)]),
        () => ListBuilder<ConsumerZoneDataItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(VendorRestaurantMetaTranslation)]),
        () => ListBuilder<VendorRestaurantMetaTranslation>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DeliveryManEarningOrderItem)]),
        () => ListBuilder<DeliveryManEarningOrderItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        () => MapBuilder<String, JsonObject?>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DeliveryManEarningHistoryItem)]),
        () => ListBuilder<DeliveryManEarningHistoryItem>(),
      )
      ..add(ConsumerOrderListItem.serializer)
      ..add(ConsumerOrderListResponse.serializer)
      ..add(ConsumerProfileUser.serializer)
      ..add(VendorOrderSummary.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
