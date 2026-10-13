.class public Lcom/facebook/quicklog/identifiers/Messenger;
.super Ljava/lang/Object;
.source "Messenger.java"


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
    .line 328
    packed-switch p0, :pswitch_data_0

    .line 573
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 330
    :pswitch_1
    const-string v0, "MESSENGER_SEND_MESSAGE"

    goto :goto_0

    .line 332
    :pswitch_2
    const-string v0, "MESSENGER_WARM_START"

    goto :goto_0

    .line 334
    :pswitch_3
    const-string v0, "MESSENGER_COLD_START"

    goto :goto_0

    .line 336
    :pswitch_4
    const-string v0, "MESSENGER_LUKE_WARM_START"

    goto :goto_0

    .line 338
    :pswitch_5
    const-string v0, "MESSENGER_EXTERNAL_INTENT"

    goto :goto_0

    .line 340
    :pswitch_6
    const-string v0, "MESSENGER_NAVIGATION_EVENT"

    goto :goto_0

    .line 342
    :pswitch_7
    const-string v0, "MESSENGER_NAVIGATION"

    goto :goto_0

    .line 344
    :pswitch_8
    const-string v0, "MESSENGER_THREADLIST_TO_THREADVIEW"

    goto :goto_0

    .line 346
    :pswitch_9
    const-string v0, "MESSENGER_EXTERNAL_TO_THREADVIEW"

    goto :goto_0

    .line 348
    :pswitch_a
    const-string v0, "MESSENGER_THREADLIST_DB_FETCH"

    goto :goto_0

    .line 350
    :pswitch_b
    const-string v0, "MESSENGER_THREAD_DATA_FETCH"

    goto :goto_0

    .line 352
    :pswitch_c
    const-string v0, "MESSENGER_THREADLIST_DATA_FETCH"

    goto :goto_0

    .line 354
    :pswitch_d
    const-string v0, "MESSENGER_FIRST_COLD_START"

    goto :goto_0

    .line 356
    :pswitch_e
    const-string v0, "MESSENGER_THREAD_LIST_FRAGMENT_CREATE"

    goto :goto_0

    .line 358
    :pswitch_f
    const-string v0, "MESSENGER_THREAD_VIEW_FRAGMENT_CREATE"

    goto :goto_0

    .line 360
    :pswitch_10
    const-string v0, "MESSENGER_THREAD_VIEW_MESSAGES_FRAGMENT_CREATE"

    goto :goto_0

    .line 362
    :pswitch_11
    const-string v0, "MESSENGER_CANONICAL_PRESENCE_CHECKS"

    goto :goto_0

    .line 364
    :pswitch_12
    const-string v0, "MESSENGER_DISPLAYED_PAGE_PRESENCE_ONLINE_VALUES"

    goto :goto_0

    .line 366
    :pswitch_13
    const-string v0, "MESSENGER_CANONICAL_PRESENCE_DOUBLESTALE"

    goto :goto_0

    .line 368
    :pswitch_14
    const-string v0, "MESSENGER_CANONICAL_PRESENCE_LASTREAD_STALE_MORETHANTHRESHOLD"

    goto :goto_0

    .line 370
    :pswitch_15
    const-string v0, "MESSENGER_CANONICAL_PRESENCE_LASTREAD_STALE_LESSTHANTHRESHOLD"

    goto :goto_0

    .line 372
    :pswitch_16
    const-string v0, "MESSENGER_CANONICAL_PRESENCE_LASTSENT_STALE_LESSTHANTHRESHOLD"

    goto :goto_0

    .line 374
    :pswitch_17
    const-string v0, "MESSENGER_CANONICAL_PRESENCE_LASTSENT_STALE_MORETHANTHRESHOLD"

    goto :goto_0

    .line 376
    :pswitch_18
    const-string v0, "MESSENGER_CANONICAL_NEW_PRESENCE_PUSH"

    goto :goto_0

    .line 378
    :pswitch_19
    const-string v0, "MESSENGER_CANONICAL_NO_PRESENCE"

    goto :goto_0

    .line 380
    :pswitch_1a
    const-string v0, "MESSENGER_USER_TYPING"

    goto :goto_0

    .line 382
    :pswitch_1b
    const-string v0, "MESSENGER_MAIN_ACTIVITY_CREATE"

    goto :goto_0

    .line 384
    :pswitch_1c
    const-string v0, "MESSENGER_HOME_CREATE_VIEW"

    goto :goto_0

    .line 386
    :pswitch_1d
    const-string v0, "MESSENGER_HOME_CREATE_VIEW_TO_ONACTIVITYCREATED"

    goto :goto_0

    .line 388
    :pswitch_1e
    const-string v0, "MESSENGER_HOME_ONACTIVITYCREATED"

    goto :goto_0

    .line 390
    :pswitch_1f
    const-string v0, "MESSENGER_HOME_ONACTIVITYCREATED_TO_THREAD_LIST_CREATE"

    goto :goto_0

    .line 392
    :pswitch_20
    const-string v0, "MESSENGER_THREAD_LIST_LAYOUT"

    goto :goto_0

    .line 394
    :pswitch_21
    const-string v0, "MESSENGER_THREAD_LIST_LAYOUT_TO_DRAW"

    goto :goto_0

    .line 396
    :pswitch_22
    const-string v0, "MESSENGER_MESSAGE_SEND_EXPERIENCE"

    goto :goto_0

    .line 398
    :pswitch_23
    const-string v0, "MESSENGER_THREAD_LIST_SCROLL"

    goto :goto_0

    .line 400
    :pswitch_24
    const-string v0, "MESSENGER_LOCAL_MEDIA_LOAD"

    goto :goto_0

    .line 402
    :pswitch_25
    const-string v0, "MESSENGER_CAMERA_PHOTO_PROCESSING"

    goto :goto_0

    .line 404
    :pswitch_26
    const-string v0, "MESSENGER_CAMERA_VIDEO_PROCESSING"

    goto :goto_0

    .line 406
    :pswitch_27
    const-string v0, "MESSENGER_CAMERA_EFFECT_PICKER_LOAD"

    goto :goto_0

    .line 408
    :pswitch_28
    const-string v0, "MESSENGER_CAMERA_EFFECT_SEARCH"

    goto :goto_0

    .line 410
    :pswitch_29
    const-string v0, "MESSENGER_CAMERA_EFFECT_FETCH_CACHE"

    goto :goto_0

    .line 412
    :pswitch_2a
    const-string v0, "MESSENGER_CAMERA_EFFECT_FETCH_NETWORK"

    goto :goto_0

    .line 414
    :pswitch_2b
    const-string v0, "MESSENGER_CAMERA_EFFECT_APPLY"

    goto/16 :goto_0

    .line 416
    :pswitch_2c
    const-string v0, "MESSENGER_CAMERA_EFFECT_PICKER_FEATURED_LOAD"

    goto/16 :goto_0

    .line 418
    :pswitch_2d
    const-string v0, "MESSENGER_CAMERA_EFFECT_PICKER_SECTION_LOAD"

    goto/16 :goto_0

    .line 420
    :pswitch_2e
    const-string v0, "MESSENGER_MEASURE_PASS"

    goto/16 :goto_0

    .line 422
    :pswitch_2f
    const-string v0, "MESSENGER_LAYOUT_PASS"

    goto/16 :goto_0

    .line 424
    :pswitch_30
    const-string v0, "MESSENGER_DRAW_PASS"

    goto/16 :goto_0

    .line 426
    :pswitch_31
    const-string v0, "MESSENGER_UI_DATA_REFRESH"

    goto/16 :goto_0

    .line 428
    :pswitch_32
    const-string v0, "MESSENGER_COMPONENTS_REFRESH"

    goto/16 :goto_0

    .line 430
    :pswitch_33
    const-string v0, "MESSENGER_THREAD_MESSAGES_SCROLL"

    goto/16 :goto_0

    .line 432
    :pswitch_34
    const-string v0, "MESSENGER_MESSENGER_ANDROID_FETCH_THREADSUMMARY_PERF"

    goto/16 :goto_0

    .line 434
    :pswitch_35
    const-string v0, "MESSENGER_MESSENGER_ANDROID_FETCH_MESSAGES_PERF"

    goto/16 :goto_0

    .line 436
    :pswitch_36
    const-string v0, "MESSENGER_MESSENGER_ANDROID_FETCH_USERLIST_PERF"

    goto/16 :goto_0

    .line 438
    :pswitch_37
    const-string v0, "MESSENGER_MESSENGER_ANDROID_FETCH_THREAD_WITHOUT_OPTIMIZATION"

    goto/16 :goto_0

    .line 440
    :pswitch_38
    const-string v0, "MESSENGER_MESSENGER_ANDROID_FETCH_THREAD_WITH_OPTIMIZATION"

    goto/16 :goto_0

    .line 442
    :pswitch_39
    const-string v0, "MESSENGER_ANDROID_OMNISTORE_COMPONENT_MANAGER_INIT"

    goto/16 :goto_0

    .line 444
    :pswitch_3a
    const-string v0, "MESSENGER_ANDROID_OMNISTORE_ON_SENDER_AVAILABLE"

    goto/16 :goto_0

    .line 446
    :pswitch_3b
    const-string v0, "MESSENGER_ANDROID_OMNISTORE_PROVIDE_SUBSCRIPTION_INFO"

    goto/16 :goto_0

    .line 448
    :pswitch_3c
    const-string v0, "MESSENGER_ANDROID_OMNISTORE_ON_COLLECTION_AVAILABLE"

    goto/16 :goto_0

    .line 450
    :pswitch_3d
    const-string v0, "MESSENGER_ANDROID_OMNISTORE_COMPONENT_MANAGER_OPEN"

    goto/16 :goto_0

    .line 452
    :pswitch_3e
    const-string v0, "MESSENGER_TINCAN_PRIVATE_ATTACHMENT_LOGGING"

    goto/16 :goto_0

    .line 454
    :pswitch_3f
    const-string v0, "MESSENGER_LOADING_LATENCY"

    goto/16 :goto_0

    .line 456
    :pswitch_40
    const-string v0, "MESSENGER_ANDROID_TAB_NAVIGATION"

    goto/16 :goto_0

    .line 458
    :pswitch_41
    const-string v0, "MESSENGER_INBOX_LOAD_MORE_WAIT"

    goto/16 :goto_0

    .line 460
    :pswitch_42
    const-string v0, "MESSENGER_MESSAGES_LOAD_MORE_WAIT"

    goto/16 :goto_0

    .line 462
    :pswitch_43
    const-string v0, "MESSENGER_INBOX_DISPLAY"

    goto/16 :goto_0

    .line 464
    :pswitch_44
    const-string v0, "MESSENGER_INBOX_DAY_UNIT_DISPLAY"

    goto/16 :goto_0

    .line 466
    :pswitch_45
    const-string v0, "MESSENGER_THREAD_LIST_DISPLAY"

    goto/16 :goto_0

    .line 468
    :pswitch_46
    const-string v0, "MESSENGER_FETCH_MORE_THREADS"

    goto/16 :goto_0

    .line 470
    :pswitch_47
    const-string v0, "MESSENGER_THREADLIST_TO_THREADVIEW_V2"

    goto/16 :goto_0

    .line 472
    :pswitch_48
    const-string v0, "MESSENGER_CRITICAL_PATH_GRAPHQL_DELAY"

    goto/16 :goto_0

    .line 474
    :pswitch_49
    const-string v0, "MESSENGER_DELTA_APPLICATION_DONE"

    goto/16 :goto_0

    .line 476
    :pswitch_4a
    const-string v0, "MESSENGER_CRITICAL_PATH_TASK_DELAY"

    goto/16 :goto_0

    .line 478
    :pswitch_4b
    const-string v0, "MESSENGER_CAMERA_TIME_TO_CAPTURE_PHOTO"

    goto/16 :goto_0

    .line 480
    :pswitch_4c
    const-string v0, "MESSENGER_CAMERA_TIME_TO_INTERACT"

    goto/16 :goto_0

    .line 482
    :pswitch_4d
    const-string v0, "MESSENGER_CAMERA_TIME_BACK_FROM_PREVIEW"

    goto/16 :goto_0

    .line 484
    :pswitch_4e
    const-string v0, "MESSENGER_CAMERA_TIME_TO_NATIVE_CAPTURE_PHOTO"

    goto/16 :goto_0

    .line 486
    :pswitch_4f
    const-string v0, "MESSENGER_RTC_EFFECT_REMOVED"

    goto/16 :goto_0

    .line 488
    :pswitch_50
    const-string v0, "MESSENGER_ASSISTANT_VOICE_RESPONSE"

    goto/16 :goto_0

    .line 490
    :pswitch_51
    const-string v0, "MESSENGER_MESSAGE_SEND_PERFORMANCE_FUNNEL"

    goto/16 :goto_0

    .line 492
    :pswitch_52
    const-string v0, "MESSENGER_MEDIA_TRAY_INIT"

    goto/16 :goto_0

    .line 494
    :pswitch_53
    const-string v0, "MESSENGER_MEDIA_TRAY_PREPARE_ATTACHMENT"

    goto/16 :goto_0

    .line 496
    :pswitch_54
    const-string v0, "MESSENGER_DEEP_LINKING_THREAD_FETCH"

    goto/16 :goto_0

    .line 498
    :pswitch_55
    const-string v0, "MESSENGER_COLD_START_TO_THREADVIEW"

    goto/16 :goto_0

    .line 500
    :pswitch_56
    const-string v0, "MESSENGER_ANDROID_GROUP_CREATE_FLOW"

    goto/16 :goto_0

    .line 502
    :pswitch_57
    const-string v0, "MESSENGER_ANDROID_GROUP_SHARE_LINK_FLOW"

    goto/16 :goto_0

    .line 504
    :pswitch_58
    const-string v0, "MESSENGER_MEDIA_PICKER_INIT"

    goto/16 :goto_0

    .line 506
    :pswitch_59
    const-string v0, "MESSENGER_GROUP_MEMBER_REQUESTS"

    goto/16 :goto_0

    .line 508
    :pswitch_5a
    const-string v0, "MESSENGER_REACTION"

    goto/16 :goto_0

    .line 510
    :pswitch_5b
    const-string v0, "MESSENGER_REACTION_PANEL_SHOW_UP"

    goto/16 :goto_0

    .line 512
    :pswitch_5c
    const-string v0, "MESSENGER_ANDROID_OMNIPICKER"

    goto/16 :goto_0

    .line 514
    :pswitch_5d
    const-string v0, "MESSENGER_ANDROID_GROUP_ADD_MEMBERS_FLOW"

    goto/16 :goto_0

    .line 516
    :pswitch_5e
    const-string v0, "MESSENGER_POSTCAPTURE_FACE_DETECTION"

    goto/16 :goto_0

    .line 518
    :pswitch_5f
    const-string v0, "MESSENGER_THREADVIEW_TO_THREADLIST_BACK_NAV"

    goto/16 :goto_0

    .line 520
    :pswitch_60
    const-string v0, "MESSENGER_THREAD_METADATA_FETCH"

    goto/16 :goto_0

    .line 522
    :pswitch_61
    const-string v0, "MESSENGER_COLD_START_IN_BACKGROUND"

    goto/16 :goto_0

    .line 524
    :pswitch_62
    const-string v0, "MESSENGER_CRITICAL_PATH_ACTIVE"

    goto/16 :goto_0

    .line 526
    :pswitch_63
    const-string v0, "MESSENGER_CAMERA_TIME_TO_DISPLAY_PHOTO"

    goto/16 :goto_0

    .line 528
    :pswitch_64
    const-string v0, "MESSENGER_MEDIA_TRAY_SCROLL"

    goto/16 :goto_0

    .line 530
    :pswitch_65
    const-string v0, "MESSENGER_MEDIA_PICKER_SCROLL"

    goto/16 :goto_0

    .line 532
    :pswitch_66
    const-string v0, "MESSENGER_CAMERA_TIME_TO_START_VIDEO_CAPTURE"

    goto/16 :goto_0

    .line 534
    :pswitch_67
    const-string v0, "MESSENGER_CAMERA_TIME_TO_STOP_VIDEO_CAPTURE"

    goto/16 :goto_0

    .line 536
    :pswitch_68
    const-string v0, "MESSENGER_MONTAGE_AND_ACTIVE_NOW_LOADING_ANDROID"

    goto/16 :goto_0

    .line 538
    :pswitch_69
    const-string v0, "MESSENGER_MQTT_COLD_START_INIT"

    goto/16 :goto_0

    .line 540
    :pswitch_6a
    const-string v0, "MESSENGER_ANDROID_SEQUENTIAL_RANKING_LOAD_TIME"

    goto/16 :goto_0

    .line 542
    :pswitch_6b
    const-string v0, "MESSENGER_POST_CHROME_ANDROID"

    goto/16 :goto_0

    .line 544
    :pswitch_6c
    const-string v0, "MESSENGER_THREADS_DB_AUTO_MIGRATION_UPGRADE_TIME"

    goto/16 :goto_0

    .line 546
    :pswitch_6d
    const-string v0, "MESSENGER_THREADS_DB_AUTO_MIGRATION_DATA_MIGRATION_TIME"

    goto/16 :goto_0

    .line 548
    :pswitch_6e
    const-string v0, "MESSENGER_MONTAGE_VIEWER_LOAD_TTRC"

    goto/16 :goto_0

    .line 550
    :pswitch_6f
    const-string v0, "MESSENGER_VOICE_RECORDING_TO_RESPONSE_ANDROID"

    goto/16 :goto_0

    .line 552
    :pswitch_70
    const-string v0, "MESSENGER_MONTAGE_AND_ACTIVE_NOW_HSCROLL"

    goto/16 :goto_0

    .line 554
    :pswitch_71
    const-string v0, "MESSENGER_RTC_SNAPSHOT"

    goto/16 :goto_0

    .line 556
    :pswitch_72
    const-string v0, "MESSENGER_RTC_PEER_SNAPSHOT"

    goto/16 :goto_0

    .line 558
    :pswitch_73
    const-string v0, "MESSENGER_RTC_SELF_SNAPSHOT"

    goto/16 :goto_0

    .line 560
    :pswitch_74
    const-string v0, "MESSENGER_MONTAGE_PEOPLE_TRAY_LOAD"

    goto/16 :goto_0

    .line 562
    :pswitch_75
    const-string v0, "MESSENGER_MONTAGE_OMNI_DELTA_HANDLING"

    goto/16 :goto_0

    .line 564
    :pswitch_76
    const-string v0, "MESSENGER_MONTAGE_INBOX_LOAD_TTI"

    goto/16 :goto_0

    .line 566
    :pswitch_77
    const-string v0, "MESSENGER_M_SUGGESTIONS_GENERATED_ANDROID"

    goto/16 :goto_0

    .line 568
    :pswitch_78
    const-string v0, "MESSENGER_INBOX_UNIT_DB_FETCH"

    goto/16 :goto_0

    .line 570
    :pswitch_79
    const-string v0, "MESSENGER_SCROLL_PERF"

    goto/16 :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_0
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_0
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_0
        :pswitch_3e
        :pswitch_3f
        :pswitch_0
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_46
        :pswitch_0
        :pswitch_47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_48
        :pswitch_49
        :pswitch_0
        :pswitch_4a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_0
        :pswitch_0
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_0
        :pswitch_4f
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_51
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_0
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_0
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_0
        :pswitch_0
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_0
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_0
        :pswitch_72
        :pswitch_73
        :pswitch_0
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
    .end packed-switch
.end method
