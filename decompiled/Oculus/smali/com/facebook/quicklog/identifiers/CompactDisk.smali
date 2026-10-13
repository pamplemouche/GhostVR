.class public Lcom/facebook/quicklog/identifiers/CompactDisk;
.super Ljava/lang/Object;
.source "CompactDisk.java"


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
    .line 277
    packed-switch p0, :pswitch_data_0

    .line 490
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 279
    :pswitch_1
    const-string v0, "COMPACT_DISK_INITIALIZE_MANIFEST"

    goto :goto_0

    .line 281
    :pswitch_2
    const-string v0, "COMPACT_DISK_DISK_CACHE_HIT"

    goto :goto_0

    .line 283
    :pswitch_3
    const-string v0, "COMPACT_DISK_DISK_CACHE_MISS"

    goto :goto_0

    .line 285
    :pswitch_4
    const-string v0, "COMPACT_DISK_DISK_CACHE_FAILURE"

    goto :goto_0

    .line 287
    :pswitch_5
    const-string v0, "COMPACT_DISK_DISK_CACHE_INSERT"

    goto :goto_0

    .line 289
    :pswitch_6
    const-string v0, "COMPACT_DISK_DISK_CACHE_REMOVE"

    goto :goto_0

    .line 291
    :pswitch_7
    const-string v0, "COMPACT_DISK_DISK_CACHE_TRASH_COLLECTION"

    goto :goto_0

    .line 293
    :pswitch_8
    const-string v0, "COMPACT_DISK_DISK_CACHE_INITIALIZE"

    goto :goto_0

    .line 295
    :pswitch_9
    const-string v0, "COMPACT_DISK_COMPACT_DISK_SUMMARY_STATS"

    goto :goto_0

    .line 297
    :pswitch_a
    const-string v0, "COMPACT_DISK_CD_GET_UNMANAGED_STORE"

    goto :goto_0

    .line 299
    :pswitch_b
    const-string v0, "COMPACT_DISK_CD_GET_MIGRATED_UNMANAGED_STORE"

    goto :goto_0

    .line 301
    :pswitch_c
    const-string v0, "COMPACT_DISK_CD_GET_FILE_DISK_CACHE"

    goto :goto_0

    .line 303
    :pswitch_d
    const-string v0, "COMPACT_DISK_CD_GET_DISK_CACHE"

    goto :goto_0

    .line 305
    :pswitch_e
    const-string v0, "COMPACT_DISK_CD_GET_MIGRATED_DISK_CACHE"

    goto :goto_0

    .line 307
    :pswitch_f
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_INSERT"

    goto :goto_0

    .line 309
    :pswitch_10
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_GET_RESOURCE"

    goto :goto_0

    .line 311
    :pswitch_11
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_GET_ALL_RESOURCES"

    goto :goto_0

    .line 313
    :pswitch_12
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_REMOVE"

    goto :goto_0

    .line 315
    :pswitch_13
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_MEM_CONTAINS"

    goto :goto_0

    .line 317
    :pswitch_14
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_MEM_GET_RESOURCE_META"

    goto :goto_0

    .line 319
    :pswitch_15
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_GET_SIZE"

    goto :goto_0

    .line 321
    :pswitch_16
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_CLEAR"

    goto :goto_0

    .line 323
    :pswitch_17
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_UPDATE_ACCESS_TIME"

    goto :goto_0

    .line 325
    :pswitch_18
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_UPDATE_EXTRA"

    goto :goto_0

    .line 327
    :pswitch_19
    const-string v0, "COMPACT_DISK_CD_GET_REGENERATING_DISK_CACHE"

    goto :goto_0

    .line 329
    :pswitch_1a
    const-string v0, "COMPACT_DISK_CD_GET_MIGRATED_REGENERATING_DISK_CACHE"

    goto :goto_0

    .line 331
    :pswitch_1b
    const-string v0, "COMPACT_DISK_CD_DIR_DISK_CACHE_COMMIT"

    goto :goto_0

    .line 333
    :pswitch_1c
    const-string v0, "COMPACT_DISK_CD_DIR_DISK_CACHE_GET_ALL_RESOURCES"

    goto :goto_0

    .line 335
    :pswitch_1d
    const-string v0, "COMPACT_DISK_CD_DIR_DISK_CACHE_REMOVE"

    goto :goto_0

    .line 337
    :pswitch_1e
    const-string v0, "COMPACT_DISK_CD_DIR_DISK_CACHE_GET_SIZE"

    goto :goto_0

    .line 339
    :pswitch_1f
    const-string v0, "COMPACT_DISK_CD_DIR_DISK_CACHE_GET_RESOURCE"

    goto :goto_0

    .line 341
    :pswitch_20
    const-string v0, "COMPACT_DISK_CD_DIR_DISK_CACHE_INSERT"

    goto :goto_0

    .line 343
    :pswitch_21
    const-string v0, "COMPACT_DISK_CD_DIR_DISK_CACHE_INSERT_AND_LOCK"

    goto :goto_0

    .line 345
    :pswitch_22
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_COMMIT"

    goto :goto_0

    .line 347
    :pswitch_23
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_LOCK"

    goto :goto_0

    .line 349
    :pswitch_24
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_UNLOCK"

    goto :goto_0

    .line 351
    :pswitch_25
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_INSERT"

    goto :goto_0

    .line 353
    :pswitch_26
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_INSERT_AND_LOCK"

    goto :goto_0

    .line 355
    :pswitch_27
    const-string v0, "COMPACT_DISK_CD_GET_DIR_DISK_CACHE"

    goto :goto_0

    .line 357
    :pswitch_28
    const-string v0, "COMPACT_DISK_CD_COMP_CACHE_INIT"

    goto :goto_0

    .line 359
    :pswitch_29
    const-string v0, "COMPACT_DISK_CD_COMP_CACHE_MAIN_CACHE_EVICT"

    goto :goto_0

    .line 361
    :pswitch_2a
    const-string v0, "COMPACT_DISK_CD_COMP_CACHE_BACK_CACHE_HIT_BG"

    goto :goto_0

    .line 363
    :pswitch_2b
    const-string v0, "COMPACT_DISK_CD_COMP_CACHE_GET_RESOURCE"

    goto/16 :goto_0

    .line 365
    :pswitch_2c
    const-string v0, "COMPACT_DISK_CD_COMP_CACHE_CLEAR"

    goto/16 :goto_0

    .line 367
    :pswitch_2d
    const-string v0, "COMPACT_DISK_CD_COMP_CACHE_GET_MODIFICATION_TIME"

    goto/16 :goto_0

    .line 369
    :pswitch_2e
    const-string v0, "COMPACT_DISK_CD_COMP_CACHE_GET_ALL_METAS"

    goto/16 :goto_0

    .line 371
    :pswitch_2f
    const-string v0, "COMPACT_DISK_CD_COMP_CACHE_INSERT"

    goto/16 :goto_0

    .line 373
    :pswitch_30
    const-string v0, "COMPACT_DISK_CD_COMP_CACHE_REMOVE"

    goto/16 :goto_0

    .line 375
    :pswitch_31
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_INSERT_FILE"

    goto/16 :goto_0

    .line 377
    :pswitch_32
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_GET_FILE_RESOURCE"

    goto/16 :goto_0

    .line 379
    :pswitch_33
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_REMOVE"

    goto/16 :goto_0

    .line 381
    :pswitch_34
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_GET_ALL_METAS"

    goto/16 :goto_0

    .line 383
    :pswitch_35
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_UNLOCK_ALL"

    goto/16 :goto_0

    .line 385
    :pswitch_36
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_GET_RESOURCE"

    goto/16 :goto_0

    .line 387
    :pswitch_37
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_GET_SIZE"

    goto/16 :goto_0

    .line 389
    :pswitch_38
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_MEM_CONTAINS"

    goto/16 :goto_0

    .line 391
    :pswitch_39
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_GET_RESOURCE_META"

    goto/16 :goto_0

    .line 393
    :pswitch_3a
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_UPDATE_ACCESS_TIME"

    goto/16 :goto_0

    .line 395
    :pswitch_3b
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_UPDATE_EXTRA"

    goto/16 :goto_0

    .line 397
    :pswitch_3c
    const-string v0, "COMPACT_DISK_CD_FILE_DISK_CACHE_CLEAR"

    goto/16 :goto_0

    .line 399
    :pswitch_3d
    const-string v0, "COMPACT_DISK_CDX_GET_UNMANAGED_STORE_FACTORY_FUNC"

    goto/16 :goto_0

    .line 401
    :pswitch_3e
    const-string v0, "COMPACT_DISK_CDX_GET_UNMANAGED_STORE_REMOVE_IF_EXCEED_SIZE"

    goto/16 :goto_0

    .line 403
    :pswitch_3f
    const-string v0, "COMPACT_DISK_CDX_GET_UNMANAGED_STORE_REMOVE_IF_EXCEED_SIZE_CB"

    goto/16 :goto_0

    .line 405
    :pswitch_40
    const-string v0, "COMPACT_DISK_CDX_GET_DISK_CACHE"

    goto/16 :goto_0

    .line 407
    :pswitch_41
    const-string v0, "COMPACT_DISK_CDX_GET_FILE_DISK_CACHE"

    goto/16 :goto_0

    .line 409
    :pswitch_42
    const-string v0, "COMPACT_DISK_CDX_GET_UNMANAGED_STORE"

    goto/16 :goto_0

    .line 411
    :pswitch_43
    const-string v0, "COMPACT_DISK_CDX_MANIFEST_SYNC_PERSISTENCE"

    goto/16 :goto_0

    .line 413
    :pswitch_44
    const-string v0, "COMPACT_DISK_CDX_MANIFEST_SYNC_PERSISTENCE_ERROR_HANDLE"

    goto/16 :goto_0

    .line 415
    :pswitch_45
    const-string v0, "COMPACT_DISK_CDX_MANIFEST_LOAD"

    goto/16 :goto_0

    .line 417
    :pswitch_46
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_GET_DISK_CACHE"

    goto/16 :goto_0

    .line 419
    :pswitch_47
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_IS_ENABLED"

    goto/16 :goto_0

    .line 421
    :pswitch_48
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_GET_RESOURCE"

    goto/16 :goto_0

    .line 423
    :pswitch_49
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_HAS_KEY_SYNC"

    goto/16 :goto_0

    .line 425
    :pswitch_4a
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_HAS_KEY"

    goto/16 :goto_0

    .line 427
    :pswitch_4b
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_PROBE"

    goto/16 :goto_0

    .line 429
    :pswitch_4c
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_INSERT"

    goto/16 :goto_0

    .line 431
    :pswitch_4d
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_REMOVE"

    goto/16 :goto_0

    .line 433
    :pswitch_4e
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_GET_SIZE"

    goto/16 :goto_0

    .line 435
    :pswitch_4f
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_GET_COUNT"

    goto/16 :goto_0

    .line 437
    :pswitch_50
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_CLEAR_OLD_ENTRIES"

    goto/16 :goto_0

    .line 439
    :pswitch_51
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_CLEAR_ALL"

    goto/16 :goto_0

    .line 441
    :pswitch_52
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_GET_DUMP_INFO"

    goto/16 :goto_0

    .line 443
    :pswitch_53
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_TRIM_TO_MINIMUM"

    goto/16 :goto_0

    .line 445
    :pswitch_54
    const-string v0, "COMPACT_DISK_CD_FRESCO_DEFAULT_TRIM_TO_NOTHING"

    goto/16 :goto_0

    .line 447
    :pswitch_55
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_GET_DISK_CACHE"

    goto/16 :goto_0

    .line 449
    :pswitch_56
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_IS_ENABLED"

    goto/16 :goto_0

    .line 451
    :pswitch_57
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_GET_RESOURCE"

    goto/16 :goto_0

    .line 453
    :pswitch_58
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_HAS_KEY_SYNC"

    goto/16 :goto_0

    .line 455
    :pswitch_59
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_HAS_KEY"

    goto/16 :goto_0

    .line 457
    :pswitch_5a
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_PROBE"

    goto/16 :goto_0

    .line 459
    :pswitch_5b
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_INSERT"

    goto/16 :goto_0

    .line 461
    :pswitch_5c
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_REMOVE"

    goto/16 :goto_0

    .line 463
    :pswitch_5d
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_GET_SIZE"

    goto/16 :goto_0

    .line 465
    :pswitch_5e
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_GET_COUNT"

    goto/16 :goto_0

    .line 467
    :pswitch_5f
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_CLEAR_OLD_ENTRIES"

    goto/16 :goto_0

    .line 469
    :pswitch_60
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_CLEAR_ALL"

    goto/16 :goto_0

    .line 471
    :pswitch_61
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_GET_DUMP_INFO"

    goto/16 :goto_0

    .line 473
    :pswitch_62
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_TRIM_TO_MINIMUM"

    goto/16 :goto_0

    .line 475
    :pswitch_63
    const-string v0, "COMPACT_DISK_CD_FRESCO_CD_TRIM_TO_NOTHING"

    goto/16 :goto_0

    .line 477
    :pswitch_64
    const-string v0, "COMPACT_DISK_CD_DISK_CACHE_HAS_RESOURCE"

    goto/16 :goto_0

    .line 479
    :pswitch_65
    const-string v0, "COMPACT_DISK_PROVIDE_COMPACT_DISK_MANAGER"

    goto/16 :goto_0

    .line 481
    :pswitch_66
    const-string v0, "COMPACT_DISK_PROVIDE_DEPENDENCY_MANAGER"

    goto/16 :goto_0

    .line 483
    :pswitch_67
    const-string v0, "COMPACT_DISK_SHARED_FOLDER_SNAP"

    goto/16 :goto_0

    .line 485
    :pswitch_68
    const-string v0, "COMPACT_DISK_SHARED_FOLDER_UNSNAP"

    goto/16 :goto_0

    .line 487
    :pswitch_69
    const-string v0, "COMPACT_DISK_CD_RUN_GLOBAL_STALE_REMOVAL"

    goto/16 :goto_0

    .line 277
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
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
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
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
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
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_0
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
    .end packed-switch
.end method
