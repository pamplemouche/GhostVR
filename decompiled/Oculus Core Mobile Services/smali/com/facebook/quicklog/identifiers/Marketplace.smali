.class public Lcom/facebook/quicklog/identifiers/Marketplace;
.super Ljava/lang/Object;
.source "Marketplace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_0

    .line 301
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 168
    :pswitch_1
    const-string v0, "MARKETPLACE_RELAY"

    goto :goto_0

    .line 170
    :pswitch_2
    const-string v0, "MARKETPLACE_SURFACE_ROOT"

    goto :goto_0

    .line 172
    :pswitch_3
    const-string v0, "MARKETPLACE_RELAY_MUTATION"

    goto :goto_0

    .line 174
    :pswitch_4
    const-string v0, "MARKETPLACE_FEED_LOAD"

    goto :goto_0

    .line 176
    :pswitch_5
    const-string v0, "MARKETPLACE_PRODUCT_DETAILS"

    goto :goto_0

    .line 178
    :pswitch_6
    const-string v0, "MARKETPLACE_FEED_IMAGE_LOAD"

    goto :goto_0

    .line 180
    :pswitch_7
    const-string v0, "MARKETPLACE_HOME_TTI"

    goto :goto_0

    .line 182
    :pswitch_8
    const-string v0, "MARKETPLACE_SEARCH_RESULT_TTI"

    goto :goto_0

    .line 184
    :pswitch_9
    const-string v0, "MARKETPLACE_TAB_TTI"

    goto :goto_0

    .line 186
    :pswitch_a
    const-string v0, "MARKETPLACE_SHOPS_TTI"

    goto :goto_0

    .line 188
    :pswitch_b
    const-string v0, "MARKETPLACE_HOME_LOAD"

    goto :goto_0

    .line 190
    :pswitch_c
    const-string v0, "MARKETPLACE_DAILY_DEALS_TTI"

    goto :goto_0

    .line 192
    :pswitch_d
    const-string v0, "MARKETPLACE_SEARCH_NULLSTATE_TTI"

    goto :goto_0

    .line 194
    :pswitch_e
    const-string v0, "MARKETPLACE_FEED_AFTER_TTI_FIRST_PAGINATION_DELAY"

    goto :goto_0

    .line 196
    :pswitch_f
    const-string v0, "MARKETPLACE_COMPOSER_POST_TTI"

    goto :goto_0

    .line 198
    :pswitch_10
    const-string v0, "MARKETPLACE_B2C_PRODUCT_DETAILS"

    goto :goto_0

    .line 200
    :pswitch_11
    const-string v0, "MARKETPLACE_RENTAL_MAP_VIEW_TTI_MOBILE"

    goto :goto_0

    .line 202
    :pswitch_12
    const-string v0, "MARKETPLACE_COMPOSER_EDIT_TTI"

    goto :goto_0

    .line 204
    :pswitch_13
    const-string v0, "MARKETPLACE_INDIA_HOME_LOAD"

    goto :goto_0

    .line 206
    :pswitch_14
    const-string v0, "MARKETPLACE_AUTOS_TTI"

    goto :goto_0

    .line 208
    :pswitch_15
    const-string v0, "PRODUCT_DETAILS_LOAD"

    goto :goto_0

    .line 210
    :pswitch_16
    const-string v0, "MARKETPLACE_PDP_ANIMATION_TAP_LATENCY"

    goto :goto_0

    .line 212
    :pswitch_17
    const-string v0, "MARKETPLACE_MARKETPLACE_NOTIFICATIONS_TTI"

    goto :goto_0

    .line 214
    :pswitch_18
    const-string v0, "MARKETPLACE_FEED_ITEM_PDP_MEASURE"

    goto :goto_0

    .line 216
    :pswitch_19
    const-string v0, "MARKETPLACE_COMPOSER_TTI"

    goto :goto_0

    .line 218
    :pswitch_1a
    const-string v0, "MARKETPLACE_EDIT_COMPOSER_TTI"

    goto :goto_0

    .line 220
    :pswitch_1b
    const-string v0, "MARKETPLACE_FOLLOWING_INFORMATION_TTI"

    goto :goto_0

    .line 222
    :pswitch_1c
    const-string v0, "MARKETPLACE_YOU_TTI"

    goto :goto_0

    .line 224
    :pswitch_1d
    const-string v0, "MARKETPLACE_BUYING_TTI"

    goto :goto_0

    .line 226
    :pswitch_1e
    const-string v0, "MARKETPLACE_FOLLOWING_TTI"

    goto :goto_0

    .line 228
    :pswitch_1f
    const-string v0, "MARKETPLACE_INBOX_TTI"

    goto :goto_0

    .line 230
    :pswitch_20
    const-string v0, "MARKETPLACE_MULTIPLE_PROFILE_SELLING_TTI"

    goto :goto_0

    .line 232
    :pswitch_21
    const-string v0, "MARKETPLACE_UNIFIED_INVENTORY_TTI"

    goto :goto_0

    .line 234
    :pswitch_22
    const-string v0, "MARKETPLACE_VERTICALS_CONTACTED_LISTINGS_TTI"

    goto :goto_0

    .line 236
    :pswitch_23
    const-string v0, "MARKETPLACE_RECENTLY_VIEWED_TTI"

    goto :goto_0

    .line 238
    :pswitch_24
    const-string v0, "MARKETPLACE_SAVED_ITEMS_TTI"

    goto :goto_0

    .line 240
    :pswitch_25
    const-string v0, "MARKETPLACE_SELLER_FOLLOWER_TTI"

    goto :goto_0

    .line 242
    :pswitch_26
    const-string v0, "MARKETPLACE_SERVICE_QUOTES_TTI"

    goto :goto_0

    .line 244
    :pswitch_27
    const-string v0, "MARKETPLACE_SAVED_LIST_ITEMS_TTI"

    goto :goto_0

    .line 246
    :pswitch_28
    const-string v0, "MARKETPLACE_INITIAL_MESSAGING_TTI"

    goto :goto_0

    .line 248
    :pswitch_29
    const-string v0, "MARKETPLACE_MESSAGING_TTI"

    goto :goto_0

    .line 250
    :pswitch_2a
    const-string v0, "MARKETPLACE_PROFILE_TTI"

    goto :goto_0

    .line 252
    :pswitch_2b
    const-string v0, "MARKETPLACE_BUY_SELL_GROUP_HOME_TTI"

    goto/16 :goto_0

    .line 254
    :pswitch_2c
    const-string v0, "MARKETPLACE_FILTERED_CATEGORY_SEARCH_TTI"

    goto/16 :goto_0

    .line 256
    :pswitch_2d
    const-string v0, "MARKETPLACE_HOME_SERVICES_TTI"

    goto/16 :goto_0

    .line 258
    :pswitch_2e
    const-string v0, "MARKETPLACE_VEHICLES_SEARCH_TTI"

    goto/16 :goto_0

    .line 260
    :pswitch_2f
    const-string v0, "MARKETPLACE_VEHICLES_CATEGORIES_SEARCH_TTI"

    goto/16 :goto_0

    .line 262
    :pswitch_30
    const-string v0, "MARKETPLACE_PROPERTY_FOR_SALE_TTI"

    goto/16 :goto_0

    .line 264
    :pswitch_31
    const-string v0, "MARKETPLACE_PROPERTY_FOR_RENT_TTI"

    goto/16 :goto_0

    .line 266
    :pswitch_32
    const-string v0, "MARKETPLACE_DEBUG_SETTINGS_TTI"

    goto/16 :goto_0

    .line 268
    :pswitch_33
    const-string v0, "MARKETPLACE_HOME_TTRC"

    goto/16 :goto_0

    .line 270
    :pswitch_34
    const-string v0, "MARKETPLACE_FEED_AFTER_TTI_PAGINATION_DELAY"

    goto/16 :goto_0

    .line 272
    :pswitch_35
    const-string v0, "MARKETPLACE_HOME_PAGINATION_TTI"

    goto/16 :goto_0

    .line 274
    :pswitch_36
    const-string v0, "MARKETPLACE_SEARCH_PAGINATION_TTI"

    goto/16 :goto_0

    .line 276
    :pswitch_37
    const-string v0, "MARKETPLACE_SEARCH_RESULT_TTRC"

    goto/16 :goto_0

    .line 278
    :pswitch_38
    const-string v0, "MARKETPLACE_SHIPPING_NUX_TTI"

    goto/16 :goto_0

    .line 280
    :pswitch_39
    const-string v0, "MARKETPLACE_YOU_SALES_TTI"

    goto/16 :goto_0

    .line 282
    :pswitch_3a
    const-string v0, "MARKETPLACE_CATEGORY_SURFACE_RESULT_TTRC"

    goto/16 :goto_0

    .line 284
    :pswitch_3b
    const-string v0, "MARKETPLACE_BANK_ACCOUNT_EDIT_TTI"

    goto/16 :goto_0

    .line 286
    :pswitch_3c
    const-string v0, "MARKETPLACE_SELLER_PAYMENT_INFO_TTI"

    goto/16 :goto_0

    .line 288
    :pswitch_3d
    const-string v0, "MARKETPLACE_ECOMM_UNIFIED_LANDING_TTRC"

    goto/16 :goto_0

    .line 290
    :pswitch_3e
    const-string v0, "MARKETPLACE_ECOMM_UNIFIED_LANDING_TTI"

    goto/16 :goto_0

    .line 292
    :pswitch_3f
    const-string v0, "MARKETPLACE_ALL_TRANSACTIONS_TTI"

    goto/16 :goto_0

    .line 294
    :pswitch_40
    const-string v0, "MARKETPLACE_ALL_PAYOUTS_TTI"

    goto/16 :goto_0

    .line 296
    :pswitch_41
    const-string v0, "MARKETPLACE_DAILY_DEALS_TTRC"

    goto/16 :goto_0

    .line 298
    :pswitch_42
    const-string v0, "MARKETPLACE_MOTORS_PRODUCT_DETAILS_LOAD"

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_0
        :pswitch_42
    .end packed-switch
.end method
