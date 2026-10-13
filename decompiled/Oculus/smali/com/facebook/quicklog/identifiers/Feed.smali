.class public Lcom/facebook/quicklog/identifiers/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


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
    .line 267
    sparse-switch p0, :sswitch_data_0

    .line 484
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 269
    :sswitch_0
    const-string v0, "FEED_NNF_COLD_START"

    goto :goto_0

    .line 271
    :sswitch_1
    const-string v0, "NNFWarmStart"

    goto :goto_0

    .line 273
    :sswitch_2
    const-string v0, "FEED_PERMALINK_FROM_FEED_LOAD"

    goto :goto_0

    .line 275
    :sswitch_3
    const-string v0, "FEED_COLD_START_DB_CACHE"

    goto :goto_0

    .line 277
    :sswitch_4
    const-string v0, "FEED_WARM_TTI"

    goto :goto_0

    .line 279
    :sswitch_5
    const-string v0, "NNFColdStartTTI"

    goto :goto_0

    .line 281
    :sswitch_6
    const-string v0, "FEED_WARM_START"

    goto :goto_0

    .line 283
    :sswitch_7
    const-string v0, "FEED_PERMALINK_ON_CREATE_TO_LOAD_IF_NO_NAVIGATIONAL_METRICS"

    goto :goto_0

    .line 285
    :sswitch_8
    const-string v0, "FEED_PERMALINK_NOTIFICATION_LOAD"

    goto :goto_0

    .line 287
    :sswitch_9
    const-string v0, "FEED_NNF_PERMALINK_ANDROID_NOTIFICATION_WARM_LOAD"

    goto :goto_0

    .line 289
    :sswitch_a
    const-string v0, "NNFVisibleTailFetchTime"

    goto :goto_0

    .line 291
    :sswitch_b
    const-string v0, "FEED_NNF_PERMALINK_ANDROID_NOTIFICATION_COLD_LOAD"

    goto :goto_0

    .line 293
    :sswitch_c
    const-string v0, "NNFBackpressToFeed"

    goto :goto_0

    .line 295
    :sswitch_d
    const-string v0, "NNFBackpressToFeedWithCreation"

    goto :goto_0

    .line 297
    :sswitch_e
    const-string v0, "FEED_NNF_HOT_TTI"

    goto :goto_0

    .line 299
    :sswitch_f
    const-string v0, "FEED_NNF_FRAGMENT_VIEW_CREATE_TAG"

    goto :goto_0

    .line 301
    :sswitch_10
    const-string v0, "FEED_NNF_FIRST_RUN_COLD_START_TAG"

    goto :goto_0

    .line 303
    :sswitch_11
    const-string v0, "FEED_NNF_COLD_START_CHROME_LOAD_TIME_TAG"

    goto :goto_0

    .line 305
    :sswitch_12
    const-string v0, "NNFNavigateToFeedWithCreation"

    goto :goto_0

    .line 307
    :sswitch_13
    const-string v0, "FEED_NNF_FEED_TAIL_FETCH_TIME"

    goto :goto_0

    .line 309
    :sswitch_14
    const-string v0, "FEED_NNF_FEED_TAIL_FETCH_RENDER_TIME"

    goto :goto_0

    .line 311
    :sswitch_15
    const-string v0, "FEED_NNF_FEED_PULL_TO_REFRESH_NETWORK_TIME"

    goto :goto_0

    .line 313
    :sswitch_16
    const-string v0, "NNFPullToRefreshNetworkAndRenderTime"

    goto :goto_0

    .line 315
    :sswitch_17
    const-string v0, "FEED_NNF_FEED_TAIL_FETCH_NETWORK_CALL_TIME"

    goto :goto_0

    .line 317
    :sswitch_18
    const-string v0, "FEED_NNF_FEED_TAIL_FETCH_NOT_CONNECTED_CALL_TIME"

    goto :goto_0

    .line 319
    :sswitch_19
    const-string v0, "NNFNavigateToOtherFeed"

    goto :goto_0

    .line 321
    :sswitch_1a
    const-string v0, "FEED_NNF_WARM_DATA_FETCHED_TO_FIRST_RENDER_TAG"

    goto :goto_0

    .line 323
    :sswitch_1b
    const-string v0, "FEED_NNF_WARM_FRAGMENT_CREATE_TO_DATA_FETCHED_TAG"

    goto :goto_0

    .line 325
    :sswitch_1c
    const-string v0, "FEED_NNF_COLD_DATA_FETCHED_TO_FIRST_RENDER_TAG"

    goto :goto_0

    .line 327
    :sswitch_1d
    const-string v0, "FEED_NNF_HOT_AND_CACHED_RENDER_TIME"

    goto :goto_0

    .line 329
    :sswitch_1e
    const-string v0, "FEED_NNF_HOT_AND_FRESH_RENDER_TIME_NOT_VISIBLE"

    goto :goto_0

    .line 331
    :sswitch_1f
    const-string v0, "FEED_COLD_START_NETWORK"

    goto :goto_0

    .line 333
    :sswitch_20
    const-string v0, "FEED_NNF_COLD_START_DB_CACHE_TAG"

    goto :goto_0

    .line 335
    :sswitch_21
    const-string v0, "FEED_NNF_COLD_FRAGMENT_CREATE_TO_DATA_FETCHED_TAG"

    goto :goto_0

    .line 337
    :sswitch_22
    const-string v0, "FEED_NNF_COLD_FRESH_CONTENT_START_TAG"

    goto :goto_0

    .line 339
    :sswitch_23
    const-string v0, "FEED_NNF_FEED_PULL_TO_REFRESH_BEFORE_EXECUTE_TIME"

    goto :goto_0

    .line 341
    :sswitch_24
    const-string v0, "NNFNavigateToFeed"

    goto :goto_0

    .line 343
    :sswitch_25
    const-string v0, "FEED_NNF_COLD_MAINTAB_CREATE_TO_FEED_CREATE_TAG"

    goto :goto_0

    .line 345
    :sswitch_26
    const-string v0, "FEED_NNF_WARM_MAINTAB_CREATE_TO_FEED_CREATE_TAG"

    goto :goto_0

    .line 347
    :sswitch_27
    const-string v0, "FEED_NNF_FRESH_FETCH_TAG"

    goto :goto_0

    .line 349
    :sswitch_28
    const-string v0, "FEED_NNF_COLD_TTI"

    goto :goto_0

    .line 351
    :sswitch_29
    const-string v0, "FEED_COLD_START_STEP"

    goto :goto_0

    .line 353
    :sswitch_2a
    const-string v0, "FEED_WARM_START_STEP"

    goto/16 :goto_0

    .line 355
    :sswitch_2b
    const-string v0, "FEED_EVENTS_NETWORK_TIME"

    goto/16 :goto_0

    .line 357
    :sswitch_2c
    const-string v0, "FEED_FRIEND_LIST_FEED_NEWTORK_TIME"

    goto/16 :goto_0

    .line 359
    :sswitch_2d
    const-string v0, "FEED_GROUPS_NETWORK_TIME"

    goto/16 :goto_0

    .line 361
    :sswitch_2e
    const-string v0, "FEED_HASHTAG_FEED_NETWORK_TIME"

    goto/16 :goto_0

    .line 363
    :sswitch_2f
    const-string v0, "FEED_NNF_NETWORK_TIME"

    goto/16 :goto_0

    .line 365
    :sswitch_30
    const-string v0, "FEED_NNF_NETWORK_TIME_CHUNKED_REMAINDER"

    goto/16 :goto_0

    .line 367
    :sswitch_31
    const-string v0, "FEED_NNF_NETWORK_TIME_TAIL"

    goto/16 :goto_0

    .line 369
    :sswitch_32
    const-string v0, "FEED_NNF_NETWORK_TIME_UNSET"

    goto/16 :goto_0

    .line 371
    :sswitch_33
    const-string v0, "FEED_REACTION_FEED_NETWORK_TIME"

    goto/16 :goto_0

    .line 373
    :sswitch_34
    const-string v0, "FEED_PAGE_FEED_NETWORK_TIME"

    goto/16 :goto_0

    .line 375
    :sswitch_35
    const-string v0, "FEED_FEED_SCROLLING"

    goto/16 :goto_0

    .line 377
    :sswitch_36
    const-string v0, "FEED_FRESH_FEED_RERANK"

    goto/16 :goto_0

    .line 379
    :sswitch_37
    const-string v0, "FEED_INSPIRATIONCAMERA_COLD_TTI"

    goto/16 :goto_0

    .line 381
    :sswitch_38
    const-string v0, "FEED_INSPIRATIONCAMERA_WARM_TTI"

    goto/16 :goto_0

    .line 383
    :sswitch_39
    const-string v0, "FEED_INSPIRATION_DIVEBAR_CAMERA_TTI"

    goto/16 :goto_0

    .line 385
    :sswitch_3a
    const-string v0, "FEED_INSPIRATION_DIVEBAR_FEED_TO_CAMERA"

    goto/16 :goto_0

    .line 387
    :sswitch_3b
    const-string v0, "FEED_INSPIRATION_DIVEBAR_CAMERA_TO_FEED"

    goto/16 :goto_0

    .line 389
    :sswitch_3c
    const-string v0, "FEED_TOUCH_LATENCY"

    goto/16 :goto_0

    .line 391
    :sswitch_3d
    const-string v0, "FEED_POST_STARTUP"

    goto/16 :goto_0

    .line 393
    :sswitch_3e
    const-string v0, "FEED_DB_CACHE_LOAD"

    goto/16 :goto_0

    .line 395
    :sswitch_3f
    const-string v0, "FEED_FBLITE_IN_FB4A_COLD_TTI"

    goto/16 :goto_0

    .line 397
    :sswitch_40
    const-string v0, "FEED_POST_RESUME"

    goto/16 :goto_0

    .line 399
    :sswitch_41
    const-string v0, "FEED_INSPIRATION_FEED_NETWORK_TIME"

    goto/16 :goto_0

    .line 401
    :sswitch_42
    const-string v0, "FEED_PERMALINK_NOTIFICATION_FLYOUT_LOAD"

    goto/16 :goto_0

    .line 403
    :sswitch_43
    const-string v0, "FEED_NETWORK_FETCH"

    goto/16 :goto_0

    .line 405
    :sswitch_44
    const-string v0, "FEED_CACHE_FETCH"

    goto/16 :goto_0

    .line 407
    :sswitch_45
    const-string v0, "FEED_LOAD"

    goto/16 :goto_0

    .line 409
    :sswitch_46
    const-string v0, "NNF_NETWORK_TIME_HEAD"

    goto/16 :goto_0

    .line 411
    :sswitch_47
    const-string v0, "FEED_PD_COMPAT_RENDER"

    goto/16 :goto_0

    .line 413
    :sswitch_48
    const-string v0, "FEED_CREATOR_APP_PAGE_FOLLOWING_FEED_NETWORK_TIME"

    goto/16 :goto_0

    .line 415
    :sswitch_49
    const-string v0, "FEED_LOAD_STORY_PERMALINK_FROM_ANYWHERE"

    goto/16 :goto_0

    .line 417
    :sswitch_4a
    const-string v0, "FEED_TAIL_LOAD_TTI"

    goto/16 :goto_0

    .line 419
    :sswitch_4b
    const-string v0, "FEED_LOAD_ANY_DESTINATION_FROM_NOTIFICATIONS"

    goto/16 :goto_0

    .line 421
    :sswitch_4c
    const-string v0, "FEED_LOAD_THREADED_PERMALINK_FROM_ANYWHERE"

    goto/16 :goto_0

    .line 423
    :sswitch_4d
    const-string v0, "FEED_STORY_DELIVERY"

    goto/16 :goto_0

    .line 425
    :sswitch_4e
    const-string v0, "FEED_TAIL_NETWORK_FETCH"

    goto/16 :goto_0

    .line 427
    :sswitch_4f
    const-string v0, "FEED_FEED_UNIT_EXISTS"

    goto/16 :goto_0

    .line 429
    :sswitch_50
    const-string v0, "FEED_CONSUMPTION_RESTORATION_ANDROID"

    goto/16 :goto_0

    .line 431
    :sswitch_51
    const-string v0, "FEED_PHOTOS_FEED_TTI"

    goto/16 :goto_0

    .line 433
    :sswitch_52
    const-string v0, "FEED_PERMALINK_FROM_NOTIF_HEAD_LOAD"

    goto/16 :goto_0

    .line 435
    :sswitch_53
    const-string v0, "FEED_CACHE_WRITE"

    goto/16 :goto_0

    .line 437
    :sswitch_54
    const-string v0, "FEED_IMAGE_LOG_FAKE_MOBILE_LAB_AVG_ANDROID"

    goto/16 :goto_0

    .line 439
    :sswitch_55
    const-string v0, "FEED_SCROLL_PERF"

    goto/16 :goto_0

    .line 441
    :sswitch_56
    const-string v0, "FEED_LOAD_ANY_DESTINATION_FROM_PRELOAD_CAROUSEL"

    goto/16 :goto_0

    .line 443
    :sswitch_57
    const-string v0, "FEED_LOAD_STORY_PERMALINK_FROM_PRELOAD_CAROUSEL"

    goto/16 :goto_0

    .line 445
    :sswitch_58
    const-string v0, "FEED_LOAD_THREADED_PERMALINK_FROM_PRELOAD_CAROUSEL"

    goto/16 :goto_0

    .line 447
    :sswitch_59
    const-string v0, "FEED_FRESH_FEED_JS_ORDER_COLLECTION"

    goto/16 :goto_0

    .line 449
    :sswitch_5a
    const-string v0, "FEED_LIVE_VPV_ANDROID"

    goto/16 :goto_0

    .line 451
    :sswitch_5b
    const-string v0, "FEED_LIVE_VPV_ELIGIBLE_ANDROID"

    goto/16 :goto_0

    .line 453
    :sswitch_5c
    const-string v0, "FEED_IMAGE_REQUEST"

    goto/16 :goto_0

    .line 455
    :sswitch_5d
    const-string v0, "FEED_FEED_ANDROID_LOAD_DB"

    goto/16 :goto_0

    .line 457
    :sswitch_5e
    const-string v0, "FEED_MOBILE_BOOST_SCROLL_DURATION_ANDROID"

    goto/16 :goto_0

    .line 459
    :sswitch_5f
    const-string v0, "FEED_FEED_SCROLLING_START_UP"

    goto/16 :goto_0

    .line 461
    :sswitch_60
    const-string v0, "FEED_CONTENT_PREFETCHING_ANDROID"

    goto/16 :goto_0

    .line 463
    :sswitch_61
    const-string v0, "FEED_STORY_INVALIDATION_FB4A"

    goto/16 :goto_0

    .line 465
    :sswitch_62
    const-string v0, "FEED_FEED_EARLY_NETWORK_REQUEST"

    goto/16 :goto_0

    .line 467
    :sswitch_63
    const-string v0, "FEED_FEED_EDGE_PRIVACY_INVALIDATION_FB4A"

    goto/16 :goto_0

    .line 469
    :sswitch_64
    const-string v0, "FEED_LIVE_FEED_INVALIDATION"

    goto/16 :goto_0

    .line 471
    :sswitch_65
    const-string v0, "FEED_LIVE_FEED_INVALIDATION_ADS"

    goto/16 :goto_0

    .line 473
    :sswitch_66
    const-string v0, "FEED_FEED_UNIT_SERIALIZATION_FB4A"

    goto/16 :goto_0

    .line 475
    :sswitch_67
    const-string v0, "FEED_NETWORK_FETCH_THROTTLE"

    goto/16 :goto_0

    .line 477
    :sswitch_68
    const-string v0, "FEED_FEED_UNIT_SERIALIZATION_SKIP"

    goto/16 :goto_0

    .line 479
    :sswitch_69
    const-string v0, "FEED_SHOWCASE_EPHEMERAL_FEED"

    goto/16 :goto_0

    .line 481
    :sswitch_6a
    const-string v0, "FEED_SHOWCASE_ANDROID"

    goto/16 :goto_0

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0xd -> :sswitch_3
        0x13 -> :sswitch_4
        0x16 -> :sswitch_5
        0x1e -> :sswitch_6
        0x2f -> :sswitch_7
        0x30 -> :sswitch_8
        0x31 -> :sswitch_9
        0x32 -> :sswitch_a
        0x34 -> :sswitch_b
        0x35 -> :sswitch_c
        0x36 -> :sswitch_d
        0x38 -> :sswitch_e
        0x39 -> :sswitch_f
        0x3a -> :sswitch_10
        0x3c -> :sswitch_11
        0x3d -> :sswitch_12
        0x3e -> :sswitch_13
        0x3f -> :sswitch_14
        0x40 -> :sswitch_15
        0x41 -> :sswitch_16
        0x42 -> :sswitch_17
        0x43 -> :sswitch_18
        0x44 -> :sswitch_19
        0x46 -> :sswitch_1a
        0x47 -> :sswitch_1b
        0x48 -> :sswitch_1c
        0x49 -> :sswitch_1d
        0x4a -> :sswitch_1e
        0x4d -> :sswitch_1f
        0x52 -> :sswitch_20
        0x53 -> :sswitch_21
        0x54 -> :sswitch_22
        0x55 -> :sswitch_23
        0x58 -> :sswitch_24
        0x5a -> :sswitch_25
        0x5b -> :sswitch_26
        0x70 -> :sswitch_27
        0x71 -> :sswitch_28
        0x7d -> :sswitch_29
        0x7e -> :sswitch_2a
        0x7f -> :sswitch_2b
        0x80 -> :sswitch_2c
        0x82 -> :sswitch_2d
        0x83 -> :sswitch_2e
        0x87 -> :sswitch_2f
        0x88 -> :sswitch_30
        0x89 -> :sswitch_31
        0x8a -> :sswitch_32
        0x8b -> :sswitch_33
        0x93 -> :sswitch_34
        0x96 -> :sswitch_35
        0xa5 -> :sswitch_36
        0xa6 -> :sswitch_37
        0xa7 -> :sswitch_38
        0xa9 -> :sswitch_39
        0xab -> :sswitch_3a
        0xac -> :sswitch_3b
        0xae -> :sswitch_3c
        0xaf -> :sswitch_3d
        0xb0 -> :sswitch_3e
        0xb3 -> :sswitch_3f
        0xb5 -> :sswitch_40
        0xb6 -> :sswitch_41
        0xb7 -> :sswitch_42
        0xb8 -> :sswitch_43
        0xb9 -> :sswitch_44
        0xba -> :sswitch_45
        0xbc -> :sswitch_46
        0xc0 -> :sswitch_47
        0xc1 -> :sswitch_48
        0xc3 -> :sswitch_49
        0xc4 -> :sswitch_4a
        0xc5 -> :sswitch_4b
        0xc6 -> :sswitch_4c
        0xc9 -> :sswitch_4d
        0xca -> :sswitch_4e
        0xcb -> :sswitch_4f
        0xce -> :sswitch_50
        0xd4 -> :sswitch_51
        0xdb -> :sswitch_52
        0xdd -> :sswitch_53
        0xe2 -> :sswitch_54
        0xe6 -> :sswitch_55
        0xe7 -> :sswitch_56
        0xe8 -> :sswitch_57
        0xe9 -> :sswitch_58
        0xef -> :sswitch_59
        0xf1 -> :sswitch_5a
        0xf4 -> :sswitch_5b
        0xf5 -> :sswitch_5c
        0xf8 -> :sswitch_5d
        0xfb -> :sswitch_5e
        0x102 -> :sswitch_5f
        0x105 -> :sswitch_60
        0x107 -> :sswitch_61
        0x109 -> :sswitch_62
        0x10b -> :sswitch_63
        0x10c -> :sswitch_64
        0x10d -> :sswitch_65
        0x10e -> :sswitch_66
        0x10f -> :sswitch_67
        0x111 -> :sswitch_68
        0x112 -> :sswitch_69
        0x113 -> :sswitch_6a
    .end sparse-switch
.end method
