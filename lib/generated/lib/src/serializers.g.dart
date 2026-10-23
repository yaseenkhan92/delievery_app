// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add($ConsumerOrderListItem.serializer)
      ..add($ConsumerOrderListResponse.serializer)
      ..add($ConsumerProfileUser.serializer)
      ..add($VendorOrderSummary.serializer)
      ..add(AdminCreateZoneBody.serializer)
      ..add(AdminZoneListResponse.serializer)
      ..add(AdminZoneListResponseDataInner.serializer)
      ..add(AdminZoneListResponseDataInnerFormatedCoordinatesInner.serializer)
      ..add(ApiError.serializer)
      ..add(ApiResponse.serializer)
      ..add(AppConfigurationResponse.serializer)
      ..add(AppConfigurationResponseCentralizeLogin.serializer)
      ..add(AppConfigurationResponseLanguageInner.serializer)
      ..add(ChatConsumerListResponse.serializer)
      ..add(ChatConsumerSearchResponse.serializer)
      ..add(ChatConsumerSendRequest.serializer)
      ..add(ChatConsumerSendRequestReceiverTypeEnum.serializer)
      ..add(ChatConversation.serializer)
      ..add(ChatDriverSendRequest.serializer)
      ..add(ChatDriverSendRequestReceiverTypeEnum.serializer)
      ..add(ChatImageUploadResponse.serializer)
      ..add(ChatMessage.serializer)
      ..add(ChatSendResponse.serializer)
      ..add(ChatThreadResponse.serializer)
      ..add(ChatUserInfo.serializer)
      ..add(ChatValidationErrorResponse.serializer)
      ..add(ChatValidationErrorResponseErrorsInner.serializer)
      ..add(ChatVendorDriverListResponse.serializer)
      ..add(ChatVendorDriverSearchResponse.serializer)
      ..add(ChatVendorSendRequest.serializer)
      ..add(ChatVendorSendRequestReceiverTypeEnum.serializer)
      ..add(ConsumerAddress.serializer)
      ..add(ConsumerAddressBody.serializer)
      ..add(ConsumerAddressCreateResponse.serializer)
      ..add(ConsumerAddressListResponse.serializer)
      ..add(ConsumerAddressListResponseData.serializer)
      ..add(ConsumerAddressUpdateResponse.serializer)
      ..add(ConsumerAddressesIdDelete200Response.serializer)
      ..add(ConsumerApplyDeliveryManBody.serializer)
      ..add(ConsumerApplyRestaurantBody.serializer)
      ..add(ConsumerApplyRestaurantBodyLanguageEnum.serializer)
      ..add(ConsumerCartAddPostRequest.serializer)
      ..add(ConsumerCartClearUserIdDelete200Response.serializer)
      ..add(ConsumerCartUpdatePutRequest.serializer)
      ..add(ConsumerChangePasswordBody.serializer)
      ..add(ConsumerFavouriteActionResponse.serializer)
      ..add(ConsumerFavouriteBody.serializer)
      ..add(ConsumerFavouriteFoodItem.serializer)
      ..add(ConsumerFavouriteListData.serializer)
      ..add(ConsumerFavouriteListResponse.serializer)
      ..add(ConsumerFavouriteRestaurantItem.serializer)
      ..add(ConsumerForgotPasswordBody.serializer)
      ..add(ConsumerForgotPasswordBodyFieldTypeEnum.serializer)
      ..add(ConsumerGetZoneIdResponse.serializer)
      ..add(ConsumerGoogleSignInBody.serializer)
      ..add(ConsumerGoogleSignInBodyAccessToken.serializer)
      ..add(ConsumerGoogleSignInBodyVerifiedEnum.serializer)
      ..add(ConsumerGuestRequestBody.serializer)
      ..add(ConsumerGuestSessionData.serializer)
      ..add(ConsumerGuestSessionResponse.serializer)
      ..add(ConsumerLoginBody.serializer)
      ..add(ConsumerLoginBodyAccessToken.serializer)
      ..add(ConsumerLoginBodyFieldTypeEnum.serializer)
      ..add(ConsumerLoginBodyLoginTypeEnum.serializer)
      ..add(ConsumerLoginBodyMediumEnum.serializer)
      ..add(ConsumerLoginBodyVerifiedEnum.serializer)
      ..add(ConsumerLoginResponse.serializer)
      ..add(ConsumerLoginResponseData.serializer)
      ..add(ConsumerLoginResponseDataOneOf.serializer)
      ..add(ConsumerLoginSendOtpPostRequest.serializer)
      ..add(ConsumerLoginVerifyOtpPostRequest.serializer)
      ..add(ConsumerOrderCancelBody.serializer)
      ..add(ConsumerOrderCancelBodyOrderId.serializer)
      ..add(ConsumerOrderCancelResponse.serializer)
      ..add(ConsumerOrderHistoryItem.serializer)
      ..add(ConsumerOrderHistoryResponse.serializer)
      ..add(ConsumerOrderListData.serializer)
      ..add(ConsumerOrderTrackData.serializer)
      ..add(ConsumerOrderTrackDeliveryMan.serializer)
      ..add(ConsumerOrderTrackResponse.serializer)
      ..add(ConsumerOrderTrackRestaurant.serializer)
      ..add(ConsumerPasswordOtpBody.serializer)
      ..add(ConsumerPasswordOtpBodyFieldTypeEnum.serializer)
      ..add(ConsumerPasswordResetBody.serializer)
      ..add(ConsumerPasswordResetBodyFieldTypeEnum.serializer)
      ..add(ConsumerPlaceOrderBody.serializer)
      ..add(ConsumerPlaceOrderBodyOrderTypeEnum.serializer)
      ..add(ConsumerPlaceOrderBodyPaymentMethodEnum.serializer)
      ..add(ConsumerPlaceOrderData.serializer)
      ..add(ConsumerPlaceOrderError.serializer)
      ..add(ConsumerPlaceOrderErrorErrorsInner.serializer)
      ..add(ConsumerPlaceOrderLineItem.serializer)
      ..add(ConsumerPlaceOrderLineItemItemTypeEnum.serializer)
      ..add(ConsumerPlaceOrderResponse.serializer)
      ..add(ConsumerProfileResponse.serializer)
      ..add(ConsumerProfileResponseData.serializer)
      ..add(ConsumerProfileUpdateResponse.serializer)
      ..add(ConsumerRegisterBody.serializer)
      ..add(ConsumerRestaurantListResponse.serializer)
      ..add(ConsumerRestaurantListResponseData.serializer)
      ..add(ConsumerRestaurantSummary.serializer)
      ..add(ConsumerRestaurantsIdFoodsGet200Response.serializer)
      ..add(ConsumerRestaurantsIdFoodsGet200ResponseData.serializer)
      ..add(ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner.serializer)
      ..add(ConsumerRestaurantsPopularGetZoneIdParameter.serializer)
      ..add(ConsumerRestaurantsSpecficIdGet200Response.serializer)
      ..add(ConsumerRestaurantsSpecficIdGet200ResponseData.serializer)
      ..add(ConsumerSocialLoginData.serializer)
      ..add(ConsumerSocialLoginDataIsPersonalInfoEnum.serializer)
      ..add(ConsumerSocialLoginExistUser.serializer)
      ..add(ConsumerSocialLoginResponse.serializer)
      ..add(ConsumerSuggestedFoodsResponse.serializer)
      ..add(ConsumerSuggestedFoodsResponseDataInner.serializer)
      ..add(ConsumerUpdateFirebaseTokenPutRequest.serializer)
      ..add(ConsumerUpdateInterestPostRequest.serializer)
      ..add(ConsumerUpdateProfileBody.serializer)
      ..add(ConsumerUpdateZonePutRequest.serializer)
      ..add(ConsumerZoneDataItem.serializer)
      ..add(ConsumerZoneMapItem.serializer)
      ..add(DeliveryManChangePasswordBody.serializer)
      ..add(DeliveryManEarningHistoryItem.serializer)
      ..add(DeliveryManEarningHistoryItemSource_Enum.serializer)
      ..add(DeliveryManEarningOrderItem.serializer)
      ..add(DeliveryManEarningOrderSnapshot.serializer)
      ..add(DeliveryManEarningsResponse.serializer)
      ..add(DeliveryManEarningsResponseData.serializer)
      ..add(DeliveryManEarningsSummary.serializer)
      ..add(DeliveryManEarningsSummaryWallet.serializer)
      ..add(DeliveryManForgotPasswordBody.serializer)
      ..add(DeliveryManHomeResponse.serializer)
      ..add(DeliveryManHomeResponseData.serializer)
      ..add(DeliveryManLoginBody.serializer)
      ..add(DeliveryManLoginData.serializer)
      ..add(DeliveryManLoginResponse.serializer)
      ..add(DeliveryManMyOrderCard.serializer)
      ..add(DeliveryManMyOrdersResponse.serializer)
      ..add(DeliveryManMyOrdersResponseData.serializer)
      ..add(DeliveryManOrderDetail.serializer)
      ..add(DeliveryManOrderDetailDispatchSummary.serializer)
      ..add(DeliveryManOrderDetailItem.serializer)
      ..add(DeliveryManOrderDetailItemAddonLinesInner.serializer)
      ..add(DeliveryManOrderDetailParty.serializer)
      ..add(DeliveryManOrderDetailPricing.serializer)
      ..add(DeliveryManOrderDetailResponse.serializer)
      ..add(DeliveryManOrderDetailRestaurant.serializer)
      ..add(DeliveryManOrderListResponse.serializer)
      ..add(DeliveryManOrderStatusUpdateResponse.serializer)
      ..add(DeliveryManOrderStatusUpdateResponseData.serializer)
      ..add(DeliveryManOrderSummary.serializer)
      ..add(DeliveryManPasswordOtpBody.serializer)
      ..add(DeliveryManPasswordResetBody.serializer)
      ..add(DeliveryManProfileData.serializer)
      ..add(DeliveryManProfileDataApplicationStatusEnum.serializer)
      ..add(DeliveryManProfileDataTypeEnum.serializer)
      ..add(DeliveryManProfileResponse.serializer)
      ..add(DeliveryManRegisterBody.serializer)
      ..add(DeliveryManRegisterBodyDeliveryTypeEnum.serializer)
      ..add(DeliveryManRegisterBodyIdentityImage.serializer)
      ..add(DeliveryManRegisterBodyIdentityTypeEnum.serializer)
      ..add(DeliveryManStatusToggleResponse.serializer)
      ..add(DeliveryManUpdateOrderStatusBody.serializer)
      ..add(DeliveryManUpdateOrderStatusBodyStatusEnum.serializer)
      ..add(DeliveryManWhoamiResponse.serializer)
      ..add(FcmTokenUpdateBody.serializer)
      ..add(FcmTokenUpdateResponse.serializer)
      ..add(LegalPageDocument.serializer)
      ..add(LegalPageResponse.serializer)
      ..add(LegalPagesBundleResponse.serializer)
      ..add(LegalPagesBundleResponseDataValue.serializer)
      ..add(NotificationBroadcastDataPayload.serializer)
      ..add(NotificationDeleteResponse.serializer)
      ..add(NotificationInboxBroadcastItem.serializer)
      ..add(NotificationInboxBroadcastItemSource_Enum.serializer)
      ..add(NotificationInboxItem.serializer)
      ..add(NotificationInboxListResponse.serializer)
      ..add(NotificationInboxPageData.serializer)
      ..add(NotificationInboxUserItem.serializer)
      ..add(NotificationInboxUserItemData.serializer)
      ..add(NotificationInboxUserItemSource_Enum.serializer)
      ..add(PagesSlugGet200Response.serializer)
      ..add(PartnerApplicationResponse.serializer)
      ..add(PartnerApplicationResponseData.serializer)
      ..add(PartnerApplicationResponseDataApplicationStatusEnum.serializer)
      ..add(PlaceOrderLineItem.serializer)
      ..add(PlaceOrderLineItemItemTypeEnum.serializer)
      ..add(PlaceOrderRequest.serializer)
      ..add(PlaceOrderRequestLatitude.serializer)
      ..add(PlaceOrderRequestOrderTypeEnum.serializer)
      ..add(PlaceOrderRequestPaymentMethodEnum.serializer)
      ..add(RegistrationInitBody.serializer)
      ..add(RegistrationInitBodyRoleEnum.serializer)
      ..add(RegistrationInitData.serializer)
      ..add(RegistrationInitDataSubfolders.serializer)
      ..add(RegistrationInitResponse.serializer)
      ..add(UploadPostRequest.serializer)
      ..add(UploadSuccessResponse.serializer)
      ..add(VendorChangePasswordBody.serializer)
      ..add(VendorFcmTokenUpdateBody.serializer)
      ..add(VendorFcmTokenUpdateBodyPlatformEnum.serializer)
      ..add(VendorForgotPasswordBody.serializer)
      ..add(VendorForgotPasswordBodyFieldTypeEnum.serializer)
      ..add(VendorOrderCountsResponse.serializer)
      ..add(VendorOrderDetail.serializer)
      ..add(VendorOrderDetailResponse.serializer)
      ..add(VendorOrderLineItem.serializer)
      ..add(VendorOrderListResponse.serializer)
      ..add(VendorOrderListResponseData.serializer)
      ..add(VendorOrderRecentResponse.serializer)
      ..add(VendorOrderRecentResponseData.serializer)
      ..add(VendorOrderStatusUpdateBody.serializer)
      ..add(VendorOrderStatusUpdateBodyStatusEnum.serializer)
      ..add(VendorOrderStatusUpdateResponse.serializer)
      ..add(VendorPasswordOtpBody.serializer)
      ..add(VendorPasswordOtpBodyFieldTypeEnum.serializer)
      ..add(VendorPasswordResetBody.serializer)
      ..add(VendorPasswordResetBodyFieldTypeEnum.serializer)
      ..add(VendorPosOrderHistoryItem.serializer)
      ..add(VendorPosOrderHistoryResponse.serializer)
      ..add(VendorPosOrderHistoryResponseData.serializer)
      ..add(VendorPosOrderHistoryResponseDataSource_Enum.serializer)
      ..add(VendorPosOrderHistorySummary.serializer)
      ..add(VendorProfileData.serializer)
      ..add(VendorRegisterBody.serializer)
      ..add(VendorRegisterBodyLanguageEnum.serializer)
      ..add(VendorRegisterBodyLat.serializer)
      ..add(VendorRegisterBodyLng.serializer)
      ..add(VendorRequestDriverBody.serializer)
      ..add(VendorRequestDriverBodyPaymentMethodEnum.serializer)
      ..add(VendorRequestDriverResponse.serializer)
      ..add(VendorRequestDriverResponseData.serializer)
      ..add(VendorRequestDriverResponseDataPaymentStatusEnum.serializer)
      ..add(VendorRestaurantActiveStatusBody.serializer)
      ..add(VendorRestaurantActiveStatusResponse.serializer)
      ..add(VendorRestaurantActiveStatusResponseData.serializer)
      ..add(VendorRestaurantBusinessSetupBody.serializer)
      ..add(
          VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
              .serializer)
      ..add(VendorRestaurantMetaDataBody.serializer)
      ..add(VendorRestaurantMetaTranslation.serializer)
      ..add(VendorRestaurantMsgResponse.serializer)
      ..add(VendorRestaurantScheduleBody.serializer)
      ..add(VendorRestaurantSettingToggleBody.serializer)
      ..add(VendorRestaurantSettingToggleBodyKeyEnum.serializer)
      ..add(VendorRestaurantSetupFlags.serializer)
      ..add(VendorRestaurantSetupGetResponse.serializer)
      ..add(VendorRestaurantSetupMutationResponse.serializer)
      ..add(VendorRestaurantSetupOptions.serializer)
      ..add(VendorRestaurantSetupOptionsCuisinesInner.serializer)
      ..add(VendorRestaurantSetupOptionsLanguagesInner.serializer)
      ..add(VendorRestaurantSetupPayload.serializer)
      ..add(VendorRestaurantSetupPayloadTranslationsValue.serializer)
      ..add(VendorRestaurantSetupScheduleItem.serializer)
      ..add(VendorWhoamiData.serializer)
      ..add(VendorWhoamiResponse.serializer)
      ..add(VendorWhoamiRestaurant.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(AdminZoneListResponseDataInner)]),
          () => ListBuilder<AdminZoneListResponseDataInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                AdminZoneListResponseDataInnerFormatedCoordinatesInner)
          ]),
          () => ListBuilder<
              AdminZoneListResponseDataInnerFormatedCoordinatesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                AdminZoneListResponseDataInnerFormatedCoordinatesInner)
          ]),
          () => ListBuilder<
              AdminZoneListResponseDataInnerFormatedCoordinatesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(AppConfigurationResponseLanguageInner)]),
          () => ListBuilder<AppConfigurationResponseLanguageInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(num)])
          ]),
          () => ListBuilder<BuiltList<num>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatConversation)]),
          () => ListBuilder<ChatConversation>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatConversation)]),
          () => ListBuilder<ChatConversation>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatConversation)]),
          () => ListBuilder<ChatConversation>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatConversation)]),
          () => ListBuilder<ChatConversation>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatMessage)]),
          () => ListBuilder<ChatMessage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatMessage)]),
          () => ListBuilder<ChatMessage>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ChatValidationErrorResponseErrorsInner)]),
          () => ListBuilder<ChatValidationErrorResponseErrorsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ConsumerAddress)]),
          () => ListBuilder<ConsumerAddress>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ConsumerFavouriteFoodItem)]),
          () => ListBuilder<ConsumerFavouriteFoodItem>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ConsumerFavouriteRestaurantItem)]),
          () => ListBuilder<ConsumerFavouriteRestaurantItem>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ConsumerOrderListItem)]),
          () => ListBuilder<ConsumerOrderListItem>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ConsumerPlaceOrderErrorErrorsInner)]),
          () => ListBuilder<ConsumerPlaceOrderErrorErrorsInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ConsumerPlaceOrderLineItem)]),
          () => ListBuilder<ConsumerPlaceOrderLineItem>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ConsumerPlaceOrderLineItem)]),
          () => ListBuilder<ConsumerPlaceOrderLineItem>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ConsumerRestaurantSummary)]),
          () => ListBuilder<ConsumerRestaurantSummary>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner)
          ]),
          () => ListBuilder<
              ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ConsumerSuggestedFoodsResponseDataInner)]),
          () => ListBuilder<ConsumerSuggestedFoodsResponseDataInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ConsumerZoneDataItem)]),
          () => ListBuilder<ConsumerZoneDataItem>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(DeliveryManEarningHistoryItem)]),
          () => ListBuilder<DeliveryManEarningHistoryItem>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(DeliveryManEarningOrderItem)]),
          () => ListBuilder<DeliveryManEarningOrderItem>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(DeliveryManMyOrderCard)]),
          () => ListBuilder<DeliveryManMyOrderCard>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(DeliveryManOrderDetailItem)]),
          () => ListBuilder<DeliveryManOrderDetailItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(DeliveryManOrderDetailItemAddonLinesInner)
          ]),
          () => ListBuilder<DeliveryManOrderDetailItemAddonLinesInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(DeliveryManOrderSummary)]),
          () => ListBuilder<DeliveryManOrderSummary>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NotificationInboxItem)]),
          () => ListBuilder<NotificationInboxItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PlaceOrderLineItem)]),
          () => ListBuilder<PlaceOrderLineItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PlaceOrderLineItem)]),
          () => ListBuilder<PlaceOrderLineItem>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(VendorOrderLineItem)]),
          () => ListBuilder<VendorOrderLineItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(VendorOrderSummary)]),
          () => ListBuilder<VendorOrderSummary>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(VendorOrderSummary)]),
          () => ListBuilder<VendorOrderSummary>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(VendorPosOrderHistoryItem)]),
          () => ListBuilder<VendorPosOrderHistoryItem>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(VendorRestaurantMetaTranslation)]),
          () => ListBuilder<VendorRestaurantMetaTranslation>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(VendorRestaurantSetupOptionsCuisinesInner)
          ]),
          () => ListBuilder<VendorRestaurantSetupOptionsCuisinesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(VendorRestaurantSetupOptionsLanguagesInner)
          ]),
          () => ListBuilder<VendorRestaurantSetupOptionsLanguagesInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(VendorWhoamiRestaurant)]),
          () => ListBuilder<VendorWhoamiRestaurant>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(VendorRestaurantSetupPayloadTranslationsValue)
          ]),
          () => MapBuilder<String,
              VendorRestaurantSetupPayloadTranslationsValue>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(VendorRestaurantSetupScheduleItem)]),
          () => ListBuilder<VendorRestaurantSetupScheduleItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(num)]),
          () => ListBuilder<num>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(num)]),
          () => ListBuilder<num>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(num)]),
          () => ListBuilder<num>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(num)]),
          () => ListBuilder<num>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(JsonObject)]),
          () => ListBuilder<JsonObject?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(JsonObject)]),
          () => ListBuilder<JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(LegalPagesBundleResponseDataValue)
          ]),
          () => MapBuilder<String, LegalPagesBundleResponseDataValue>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(int)]),
          () => MapBuilder<String, int>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => MapBuilder<String, JsonObject?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
