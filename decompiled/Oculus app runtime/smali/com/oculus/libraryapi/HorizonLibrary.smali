.class public Lcom/oculus/libraryapi/HorizonLibrary;
.super Ljava/lang/Object;
.source "HorizonLibrary.java"

# interfaces
.implements Lcom/oculus/libraryapi/LibraryProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "HorizonLibrary"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    return-void
.end method

.method private callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    iget-object v1, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/SecureLibraryProvider;->get(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 298
    sget-object p1, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string p2, "Unable to guarantee a secure connection to Oculus Library. Please check that the correctly signed version of horizon is installed."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 305
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 310
    :try_start_1
    sget-object p2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string p3, "Exception while using provider"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :catch_1
    move-exception p1

    .line 307
    :try_start_2
    sget-object p2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string p3, "Content provider process died"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw p1
.end method

.method private static createContentValuesForUpdate(Ljava/util/Map;)Landroid/content/ContentValues;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 524
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 525
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 526
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "user_quality_rating"

    const-string v6, "is_favorite"

    const-string v7, "total_activity_increment_ms"

    const-string v8, "total_activity_ms"

    const-string v9, "is_unseen"

    const-string v10, "installed_binary_id"

    const-string v11, "recent_activity_ms"

    const-string v12, "status"

    const-string v13, "cloud_storage_status"

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_6
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_7
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_8
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 557
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-editable column: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 554
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :pswitch_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 548
    :pswitch_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 545
    :pswitch_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 542
    :pswitch_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 539
    :pswitch_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 536
    :pswitch_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 533
    :pswitch_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v1}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    :pswitch_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v1}, Lcom/oculus/library/model/AppStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4cee6680 -> :sswitch_8
        -0x3532300e -> :sswitch_7
        -0x301f9b0e -> :sswitch_6
        -0x28df046c -> :sswitch_5
        -0x166c6ab7 -> :sswitch_4
        -0x14cc1ba5 -> :sswitch_3
        0x101034eb -> :sswitch_2
        0x12d21d11 -> :sswitch_1
        0x3e75b3d1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static extractFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;
    .locals 99

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "id"

    .line 328
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "package_name"

    .line 329
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "status"

    .line 330
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cloud_storage_status"

    .line 331
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "display_name"

    .line 332
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "comfort_rating"

    .line 333
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "apk_full_size_bytes"

    .line 334
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "obb_full_size_bytes"

    .line 335
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "patch_download_size_bytes"

    .line 336
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "download_size_bytes"

    .line 337
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "downloaded_size_bytes"

    .line 338
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "installed_version_code"

    .line 339
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "installed_version_name"

    .line 340
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "installed_binary_id"

    .line 341
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v1, "latest_version_code"

    .line 342
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v15

    const-string v15, "latest_version_name"

    .line 343
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "latest_target_sdk_version"

    .line 344
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "installable_on_external_storage"

    .line 346
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "entitlement_hash"

    .line 348
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "app_grouping_id"

    .line 349
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "app_scoped_user_id"

    .line 350
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "is_favorite"

    .line 351
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "is_unseen"

    .line 352
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "livestreaming_status"

    .line 353
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "livestreaming_status_audio_hooking"

    .line 355
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "chromecast_audio_enabled"

    .line 356
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "microphone_usage"

    .line 357
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "recent_activity_ms"

    .line 358
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "user_quality_rating"

    .line 359
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "total_activity_ms"

    .line 360
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "images_blob"

    .line 362
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "permissions_blob"

    .line 363
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "min_recommended_version_code"

    .line 365
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "min_required_version_code"

    .line 367
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "supported_input_devices_blob"

    .line 369
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "is_demo_of"

    .line 370
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "play_modes"

    .line 371
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    .line 401
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v15

    new-array v15, v15, [Lcom/oculus/library/model/App;

    move/from16 v40, v1

    move/from16 v42, v14

    const/4 v1, 0x0

    .line 403
    :goto_0
    array-length v14, v15

    if-ge v1, v14, :cond_4

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    .line 405
    invoke-static {v0, v2, v14}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 406
    invoke-static {v0, v3, v14}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 407
    sget-object v16, Lcom/oculus/library/model/AppStatus;->UNKNOWN:Lcom/oculus/library/model/AppStatus;

    .line 408
    invoke-virtual/range {v16 .. v16}, Lcom/oculus/library/model/AppStatus;->name()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v4, v14}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/oculus/library/model/AppStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;

    move-result-object v46

    .line 409
    sget-object v14, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    .line 412
    invoke-virtual {v14}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v14

    .line 411
    invoke-static {v0, v5, v14}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 410
    invoke-static {v14}, Lcom/oculus/library/model/CloudStorageStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v47

    const/4 v14, 0x0

    .line 413
    invoke-static {v0, v6, v14}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 414
    sget-object v14, Lcom/oculus/library/model/ComfortRating;->UNKNOWN:Lcom/oculus/library/model/ComfortRating;

    .line 416
    invoke-virtual {v14}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v7, v14}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 415
    invoke-static {v14}, Lcom/oculus/library/model/ComfortRating;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;

    move-result-object v49

    move v14, v2

    move/from16 v94, v3

    const-wide/16 v2, -0x1

    .line 417
    invoke-static {v0, v8, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v52

    .line 418
    invoke-static {v0, v9, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v54

    .line 419
    invoke-static {v0, v11, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v58

    .line 420
    invoke-static {v0, v12, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v60

    .line 421
    invoke-static {v0, v10, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v56

    .line 422
    invoke-static {v0, v13, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v62

    move/from16 v95, v4

    move/from16 v4, v42

    move/from16 v42, v5

    const/4 v5, 0x0

    .line 423
    invoke-static {v0, v4, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v64

    move/from16 v96, v4

    move/from16 v4, v40

    .line 424
    invoke-static {v0, v4, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v66

    move/from16 v2, v18

    .line 425
    invoke-static {v0, v2, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const/16 v3, 0x13

    move/from16 v5, v19

    .line 426
    invoke-static {v0, v5, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v69

    move/from16 v3, v20

    const/4 v2, 0x0

    .line 428
    invoke-static {v0, v3, v2}, Lcom/oculus/libraryapi/HorizonLibrary;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v72

    move/from16 v2, v33

    const/4 v3, 0x0

    .line 430
    invoke-static {v0, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getBlobWithDefault(Landroid/database/Cursor;I[B)[B

    move-result-object v4

    move/from16 v2, v34

    .line 431
    invoke-static {v0, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getBlobWithDefault(Landroid/database/Cursor;I[B)[B

    move-result-object v5

    move/from16 v2, v37

    move/from16 v37, v6

    .line 433
    invoke-static {v0, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getBlobWithDefault(Landroid/database/Cursor;I[B)[B

    move-result-object v6

    .line 435
    sget-object v3, Lcom/oculus/library/model/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 437
    invoke-static {v4, v3}, Lcom/oculus/library/model/ParcelableModelHelper;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v3

    .line 436
    invoke-static {v3}, Lcom/oculus/library/model/ParcelableModelHelper;->convertImageListToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v51

    .line 439
    sget-object v3, Lcom/oculus/library/model/AppPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 440
    invoke-static {v5, v3}, Lcom/oculus/library/model/ParcelableModelHelper;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v70

    .line 442
    sget-object v3, Lcom/oculus/library/model/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 443
    invoke-static {v6, v3}, Lcom/oculus/library/model/ParcelableModelHelper;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v71

    move/from16 v3, v21

    const/4 v4, 0x0

    .line 446
    invoke-static {v0, v3, v4}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v73

    move/from16 v5, v22

    .line 447
    invoke-static {v0, v5, v4}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v75

    move/from16 v6, v23

    .line 448
    invoke-static {v0, v6, v4}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v74

    move/from16 v21, v2

    move/from16 v4, v24

    const/4 v2, 0x0

    .line 449
    invoke-static {v0, v4, v2}, Lcom/oculus/libraryapi/HorizonLibrary;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v80

    move/from16 v22, v3

    move/from16 v3, v25

    .line 450
    invoke-static {v0, v3, v2}, Lcom/oculus/libraryapi/HorizonLibrary;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v81

    move/from16 v2, v26

    const/4 v3, 0x0

    .line 452
    invoke-static {v0, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/oculus/library/model/LivestreamingStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v76

    move/from16 v3, v27

    const/4 v2, 0x0

    .line 454
    invoke-static {v0, v3, v2}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v4

    const/4 v2, 0x1

    if-ne v4, v2, :cond_1

    move/from16 v27, v3

    move/from16 v23, v5

    move/from16 v4, v28

    const/4 v3, 0x0

    const/16 v77, 0x1

    goto :goto_1

    :cond_1
    move/from16 v27, v3

    move/from16 v23, v5

    move/from16 v4, v28

    const/4 v3, 0x0

    const/16 v77, 0x0

    .line 455
    :goto_1
    invoke-static {v0, v4, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v5

    if-ne v5, v2, :cond_2

    const/16 v78, 0x1

    goto :goto_2

    :cond_2
    const/16 v78, 0x0

    :goto_2
    const/high16 v2, -0x80000000

    move/from16 v5, v35

    .line 457
    invoke-static {v0, v5, v2}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v3

    move/from16 v28, v4

    move/from16 v4, v36

    .line 459
    invoke-static {v0, v4, v2}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v2

    move/from16 v4, v29

    const/4 v5, 0x0

    .line 462
    invoke-static {v0, v4, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v79

    move/from16 v16, v6

    const-wide/16 v5, 0x0

    move/from16 v97, v4

    move/from16 v4, v30

    .line 463
    invoke-static {v0, v4, v5, v6}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v82

    move/from16 v41, v8

    move/from16 v4, v31

    move/from16 v31, v7

    const/4 v7, 0x0

    .line 464
    invoke-static {v0, v4, v7}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v8

    move/from16 v7, v32

    .line 465
    invoke-static {v0, v7, v5, v6}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v86

    move/from16 v5, v17

    const/4 v6, 0x0

    .line 466
    invoke-static {v0, v5, v6}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v65

    move/from16 v17, v4

    move/from16 v4, v38

    .line 468
    invoke-static {v0, v4, v6}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 469
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""

    move/from16 v32, v5

    move/from16 v5, v39

    .line 470
    invoke-static {v0, v5, v4}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_3

    aget-object v43, v0, v5

    move-object/from16 v50, v0

    .line 472
    :try_start_0
    invoke-static/range {v43 .. v43}, Lcom/oculus/library/model/PlayMode;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/PlayMode;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 474
    :catch_0
    sget-object v0, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v50

    goto :goto_3

    .line 478
    :cond_3
    new-instance v0, Lcom/oculus/library/model/App;

    move-object/from16 v43, v0

    .line 486
    invoke-virtual/range {v49 .. v49}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v50

    int-to-long v4, v8

    move-wide/from16 v84, v4

    int-to-long v3, v3

    move-wide/from16 v88, v3

    int-to-long v2, v2

    move-wide/from16 v90, v2

    move-object/from16 v93, v6

    invoke-direct/range {v43 .. v93}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Ljava/util/List;)V

    aput-object v0, v15, v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move v2, v14

    move/from16 v6, v37

    move/from16 v8, v41

    move/from16 v5, v42

    move/from16 v3, v94

    move/from16 v4, v95

    move/from16 v42, v96

    move/from16 v29, v97

    move/from16 v37, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v16

    move/from16 v98, v32

    move/from16 v32, v7

    move/from16 v7, v31

    move/from16 v31, v17

    move/from16 v17, v98

    goto/16 :goto_0

    .line 519
    :cond_4
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    return-object v15
.end method

.method private static getBlobWithDefault(Landroid/database/Cursor;I[B)[B
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p2

    .line 600
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    return-object p0
.end method

.method private static getBooleanWithDefault(Landroid/database/Cursor;IZ)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p2

    .line 592
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getIntWithDefault(Landroid/database/Cursor;II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p2

    .line 568
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method private static getLongWithDefault(Landroid/database/Cursor;IJ)J
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-wide p2

    .line 576
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p2

    .line 584
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 639
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 640
    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 641
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 642
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "cancel_download_package"

    const/4 v1, 0x0

    .line 266
    invoke-direct {p0, v0, p1, v1}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 p1, 0x1

    return p1
.end method

.method public customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V
    .locals 3

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_0

    .line 209
    new-instance v1, Lcom/oculus/library/model/InstallCallbackReceiver;

    invoke-direct {v1, p4}, Lcom/oculus/library/model/InstallCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallCallback;)V

    .line 211
    invoke-virtual {v1}, Lcom/oculus/library/model/InstallCallbackReceiver;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/libraryapi/HorizonLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    const-string v2, "result_receiver"

    .line 209
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 214
    invoke-virtual {p3}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object p3

    const-string v1, "extra_request_origin"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p3, "extra_update_config_apk"

    .line 216
    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_2

    const-string p3, "extra_update_config_obb"

    .line 218
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    const/4 p2, 0x0

    const-string p3, "install_custom_package"

    .line 221
    invoke-direct {p0, p3, p2, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p3, 0x0

    const-string v0, "extra_response_callback_supported"

    .line 223
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_3
    if-eqz p4, :cond_4

    .line 232
    iget-object p1, p1, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/oculus/appmanager/info/model/InstallResult;->createForSuccess(Ljava/lang/String;J)Lcom/oculus/appmanager/info/model/InstallResult;

    move-result-object p1

    .line 232
    invoke-interface {p4, p1}, Lcom/oculus/library/model/InstallCallback;->onInstallResult(Lcom/oculus/appmanager/info/model/InstallResult;)V

    :cond_4
    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V
    .locals 3

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 154
    new-instance v1, Lcom/oculus/library/model/InstallCallbackReceiver;

    invoke-direct {v1, p3}, Lcom/oculus/library/model/InstallCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallCallback;)V

    .line 156
    invoke-virtual {v1}, Lcom/oculus/library/model/InstallCallbackReceiver;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/libraryapi/HorizonLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    const-string v2, "result_receiver"

    .line 154
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 159
    invoke-virtual {p2}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "extra_request_origin"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p2, "install_package"

    .line 162
    invoke-direct {p0, p2, p1, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    const-string v1, "extra_response_callback_supported"

    .line 164
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oculus/appmanager/info/model/InstallResult;->createForSuccess(Ljava/lang/String;J)Lcom/oculus/appmanager/info/model/InstallResult;

    move-result-object p1

    .line 173
    invoke-interface {p3, p1}, Lcom/oculus/library/model/InstallCallback;->onInstallResult(Lcom/oculus/appmanager/info/model/InstallResult;)V

    :cond_3
    return-void
.end method

.method public downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallResult;
    .locals 3

    const/4 v0, 0x1

    .line 181
    new-array v1, v0, [Lcom/oculus/appmanager/info/model/InstallResult;

    .line 182
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 183
    new-instance v0, Lcom/oculus/libraryapi/HorizonLibrary$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/libraryapi/HorizonLibrary$1;-><init>(Lcom/oculus/libraryapi/HorizonLibrary;[Lcom/oculus/appmanager/info/model/InstallResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 191
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V

    .line 193
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 198
    aget-object p1, v1, p1

    return-object p1

    .line 196
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p2, Lcom/oculus/appmanager/info/model/InstallResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 195
    invoke-static {p1, v0, v1, p2}, Lcom/oculus/appmanager/info/model/InstallResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallResultError;)Lcom/oculus/appmanager/info/model/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public getAllApps()[Lcom/oculus/library/model/App;
    .locals 8

    .line 111
    iget-object v0, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    iget-object v1, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/SecureLibraryProvider;->get(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v2, "Unable to guarantee a secure connection to Oculus Library. Please check that the correctly signed version of horizon is installed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 119
    :cond_0
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllPackages()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    .line 122
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 123
    invoke-static {v2}, Lcom/oculus/libraryapi/HorizonLibrary;->extractFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 128
    :try_start_1
    sget-object v3, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v4, "Exception while using provider"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :catch_1
    move-exception v2

    .line 125
    :try_start_2
    sget-object v3, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v4, "Content provider process died"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .locals 1

    .line 275
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllDownloads()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getAllInstallsUri()Landroid/net/Uri;
    .locals 1

    .line 280
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllInstalls()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 9

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    iget-object v2, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/oculus/libraryapi/SecureLibraryProvider;->get(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    sget-object p1, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v0, "Unable to guarantee a secure connection to Oculus Library. Please check that the correctly signed version of horizon is installed."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 77
    :cond_1
    invoke-static {p1}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryByPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    .line 80
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/oculus/libraryapi/HorizonLibrary;->extractFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;

    move-result-object p1

    .line 82
    array-length v2, p1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 83
    aget-object p1, p1, v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object p1

    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    :try_start_1
    sget-object v2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v3, "Exception while using provider"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :catch_1
    move-exception p1

    .line 88
    :try_start_2
    sget-object v2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v3, "Content provider process died"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw p1
.end method

.method public getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 5

    .line 100
    invoke-virtual {p0}, Lcom/oculus/libraryapi/HorizonLibrary;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v0

    .line 101
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 102
    iget-object v4, v3, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getQueryAllUri()Landroid/net/Uri;
    .locals 1

    .line 285
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllPackages()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getQueryByPackageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 290
    invoke-static {p1}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryByPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Landroid/os/ResultReceiver;)V
    .locals 2

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    invoke-direct {p0, p1}, Lcom/oculus/libraryapi/HorizonLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    const-string v1, "result_receiver"

    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "refetch"

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, v1, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public save(Lcom/oculus/library/model/App;)V
    .locals 3

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    iget-wide v1, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "recent_activity_ms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-wide v1, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total_activity_ms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-wide v1, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "user_quality_rating"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    const-string v2, "status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    const-string v2, "cloud_storage_status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-boolean v1, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_unseen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p1, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    const-string v2, "installed_binary_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object p1, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->update(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/UninstallCallback;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 241
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 242
    invoke-virtual {p2}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "extra_request_origin"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string p2, "uninstall_package"

    .line 244
    invoke-direct {p0, p2, p1, p3}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/UninstallResult;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 254
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    invoke-virtual {p2}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object p2

    const-string v2, "extra_request_origin"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string p2, "uninstall_package"

    .line 257
    invoke-direct {p0, p2, p1, v1}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v0
.end method

.method protected update(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    iget-object v1, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/SecureLibraryProvider;->get(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 608
    sget-object p1, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string p2, "Unable to guarantee a secure connection to Oculus Library. Please check that the correctly signed version of horizon is installed."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 616
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryByPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 617
    invoke-static {p2}, Lcom/oculus/libraryapi/HorizonLibrary;->createContentValuesForUpdate(Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object p2

    const/4 v1, 0x0

    .line 615
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 623
    :try_start_1
    sget-object p2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v1, "Exception while using provider"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 621
    sget-object p2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v1, "Content provider process died"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 625
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw p1
.end method
