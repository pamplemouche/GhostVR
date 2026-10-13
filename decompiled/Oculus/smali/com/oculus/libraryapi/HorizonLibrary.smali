.class public Lcom/oculus/libraryapi/HorizonLibrary;
.super Ljava/lang/Object;
.source "HorizonLibrary.java"

# interfaces
.implements Lcom/oculus/libraryapi/LibraryProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/oculus/libraryapi/HorizonLibrary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    .line 59
    return-void
.end method

.method private callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    iget-object v2, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oculus/libraryapi/SecureLibraryProvider;->get(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 311
    if-nez v1, :cond_0

    .line 312
    sget-object v1, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v2, "Unable to guarantee a secure connection to Oculus Library. Please check that the correctly signed version of horizon is installed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    return-object v0

    .line 319
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 327
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 320
    :catch_0
    move-exception v2

    .line 321
    :try_start_1
    sget-object v3, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v4, "Content provider process died"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 323
    :catch_1
    move-exception v2

    .line 324
    :try_start_2
    sget-object v3, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v4, "Exception while using provider"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method

.method private static createContentValuesForUpdate(Ljava/util/Map;)Landroid/content/ContentValues;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 577
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 578
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 579
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 610
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-editable column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :sswitch_0
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "cloud_storage_status"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "is_favorite"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "is_unseen"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "user_quality_rating"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v5, "recent_activity_ms"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v5, "total_activity_increment_ms"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v5, "total_activity_ms"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v5, "installed_binary_id"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    .line 581
    :pswitch_0
    const-string/jumbo v1, "status"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v0}, Lcom/oculus/library/model/AppStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :pswitch_1
    const-string v1, "cloud_storage_status"

    .line 586
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v0}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    :pswitch_2
    const-string v1, "is_favorite"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 592
    :pswitch_3
    const-string v1, "is_unseen"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 595
    :pswitch_4
    const-string/jumbo v1, "user_quality_rating"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 598
    :pswitch_5
    const-string/jumbo v1, "recent_activity_ms"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 601
    :pswitch_6
    const-string/jumbo v1, "total_activity_increment_ms"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 604
    :pswitch_7
    const-string/jumbo v1, "total_activity_ms"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 607
    :pswitch_8
    const-string v1, "installed_binary_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 613
    :cond_1
    return-object v3

    .line 579
    :sswitch_data_0
    .sparse-switch
        -0x4cee6680 -> :sswitch_1
        -0x3532300e -> :sswitch_0
        -0x301f9b0e -> :sswitch_5
        -0x28df046c -> :sswitch_8
        -0x166c6ab7 -> :sswitch_3
        -0x14cc1ba5 -> :sswitch_7
        0x101034eb -> :sswitch_6
        0x12d21d11 -> :sswitch_2
        0x3e75b3d1 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected static extractFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;
    .locals 112

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    const/4 v4, 0x0

    .line 573
    :goto_0
    return-object v4

    .line 342
    :cond_0
    const-string v4, "id"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v66

    .line 343
    const-string v4, "package_name"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v67

    .line 344
    const-string/jumbo v4, "status"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v68

    .line 345
    const-string v4, "cloud_storage_status"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v69

    .line 346
    const-string v4, "display_name"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v70

    .line 347
    const-string v4, "comfort_rating"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v71

    .line 348
    const-string v4, "apk_full_size_bytes"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v72

    .line 349
    const-string v4, "obb_full_size_bytes"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v73

    .line 350
    const-string v4, "patch_download_size_bytes"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v74

    .line 351
    const-string v4, "download_size_bytes"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v75

    .line 352
    const-string v4, "downloaded_size_bytes"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v76

    .line 353
    const-string v4, "installed_version_code"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v77

    .line 354
    const-string v4, "installed_version_name"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v78

    .line 355
    const-string v4, "installed_binary_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v79

    .line 356
    const-string v4, "latest_version_code"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v80

    .line 357
    const-string v4, "latest_version_name"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v81

    .line 358
    const-string v4, "latest_target_sdk_version"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v82

    .line 359
    const-string v4, "installable_on_external_storage"

    .line 360
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v83

    .line 362
    const-string v4, "entitlement_hash"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 363
    const-string v4, "app_grouping_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v85

    .line 364
    const-string v4, "app_scoped_user_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    .line 365
    const-string v4, "is_favorite"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v87

    .line 366
    const-string v4, "is_unseen"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v88

    .line 367
    const-string v4, "livestreaming_status"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v89

    .line 368
    const-string v4, "livestreaming_status_audio_hooking"

    .line 369
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v90

    .line 370
    const-string v4, "chromecast_audio_enabled"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v91

    .line 371
    const-string v4, "microphone_usage"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v92

    .line 372
    const-string/jumbo v4, "recent_activity_ms"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v93

    .line 373
    const-string/jumbo v4, "user_quality_rating"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v94

    .line 374
    const-string/jumbo v4, "total_activity_ms"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v95

    .line 376
    const-string v4, "images_blob"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v96

    .line 377
    const-string v4, "permissions_blob"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    .line 378
    const-string v4, "min_recommended_version_code"

    .line 379
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v98

    .line 380
    const-string v4, "min_required_version_code"

    .line 381
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v99

    .line 382
    const-string/jumbo v4, "supported_input_devices_blob"

    .line 383
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v100

    .line 384
    const-string v4, "is_demo_of"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v101

    .line 385
    const-string/jumbo v4, "supported_platform"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 386
    const-string v4, "app_media_capabilities"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v103

    .line 387
    const-string v4, "play_modes"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v104

    .line 388
    const-string v4, "category"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v105

    .line 389
    const-string v4, "head_tracking"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v106

    .line 390
    const-string v4, "grant_reason"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v107

    .line 391
    const-string v4, "grant_time"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v108

    .line 426
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v0, v4, [Lcom/oculus/library/model/App;

    move-object/from16 v65, v0

    .line 428
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, v65

    array-length v5, v0

    if-ge v4, v5, :cond_5

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 430
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 431
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 432
    sget-object v5, Lcom/oculus/library/model/AppStatus;->UNKNOWN:Lcom/oculus/library/model/AppStatus;

    .line 433
    invoke-virtual {v5}, Lcom/oculus/library/model/AppStatus;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oculus/library/model/AppStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;

    move-result-object v8

    .line 434
    sget-object v5, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    .line 437
    invoke-virtual {v5}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v5

    .line 436
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 435
    invoke-static {v5}, Lcom/oculus/library/model/CloudStorageStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v9

    .line 438
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 439
    sget-object v5, Lcom/oculus/library/model/ComfortRating;->UNKNOWN:Lcom/oculus/library/model/ComfortRating;

    .line 441
    invoke-virtual {v5}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 440
    invoke-static {v5}, Lcom/oculus/library/model/ComfortRating;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;

    move-result-object v11

    .line 442
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-static {v0, v1, v12, v13}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v14

    .line 443
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-static {v0, v1, v12, v13}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v16

    .line 444
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-static {v0, v1, v12, v13}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v20

    .line 445
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-static {v0, v1, v12, v13}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v22

    .line 446
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-static {v0, v1, v12, v13}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v18

    .line 447
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v77

    invoke-static {v0, v1, v12, v13}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v24

    .line 448
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 449
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-static {v0, v1, v12, v13}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v28

    .line 450
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v81

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 451
    const/16 v5, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v31

    .line 452
    const/4 v5, 0x0

    .line 453
    move-object/from16 v0, p0

    move/from16 v1, v83

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v34

    .line 455
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getBlobWithDefault(Landroid/database/Cursor;I[B)[B

    move-result-object v5

    .line 456
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-static {v0, v1, v12}, Lcom/oculus/libraryapi/HorizonLibrary;->getBlobWithDefault(Landroid/database/Cursor;I[B)[B

    move-result-object v12

    .line 457
    const/4 v13, 0x0

    .line 458
    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-static {v0, v1, v13}, Lcom/oculus/libraryapi/HorizonLibrary;->getBlobWithDefault(Landroid/database/Cursor;I[B)[B

    move-result-object v27

    .line 460
    sget-object v13, Lcom/oculus/library/model/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 462
    invoke-static {v5, v13}, Lcom/oculus/library/model/ParcelableModelHelper;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v5

    .line 461
    invoke-static {v5}, Lcom/oculus/library/model/ParcelableModelHelper;->convertImageListToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    .line 464
    sget-object v5, Lcom/oculus/library/model/AppPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 465
    invoke-static {v12, v5}, Lcom/oculus/library/model/ParcelableModelHelper;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v32

    .line 467
    sget-object v5, Lcom/oculus/library/model/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 468
    move-object/from16 v0, v27

    invoke-static {v0, v5}, Lcom/oculus/library/model/ParcelableModelHelper;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v33

    .line 471
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v84

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 472
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v85

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 473
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v86

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 474
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v42

    .line 475
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v88

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v43

    .line 476
    const/4 v5, 0x0

    .line 477
    move-object/from16 v0, p0

    move/from16 v1, v89

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oculus/library/model/LivestreamingStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v38

    .line 478
    const/4 v5, 0x0

    .line 479
    move-object/from16 v0, p0

    move/from16 v1, v90

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_1

    const/16 v39, 0x1

    .line 480
    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v91

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_2

    const/16 v40, 0x1

    .line 481
    :goto_3
    const/high16 v5, -0x80000000

    .line 482
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v50

    .line 483
    const/high16 v5, -0x80000000

    .line 484
    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v52

    .line 486
    const/4 v5, 0x0

    .line 487
    move-object/from16 v0, p0

    move/from16 v1, v92

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v41

    .line 488
    const-wide/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v93

    move-wide/from16 v2, v44

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v44

    .line 489
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v46

    .line 490
    const-wide/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v95

    move-wide/from16 v2, v48

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v48

    .line 491
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 493
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v101

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 494
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 495
    const-string v5, ""

    move-object/from16 v0, p0

    move/from16 v1, v104

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v0, v12

    move/from16 v47, v0

    const/4 v5, 0x0

    :goto_4
    move/from16 v0, v47

    if-ge v5, v0, :cond_3

    aget-object v51, v12, v5

    .line 497
    :try_start_0
    invoke-static/range {v51 .. v51}, Lcom/oculus/library/model/PlayMode;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/PlayMode;

    move-result-object v51

    move-object/from16 v0, v57

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 479
    :cond_1
    const/16 v39, 0x0

    goto/16 :goto_2

    .line 480
    :cond_2
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 498
    :catch_0
    move-exception v51

    .line 499
    sget-object v51, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    move-object/from16 v0, v57

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 502
    :cond_3
    sget-object v5, Lcom/oculus/library/model/SupportedPlatform;->UNKNOWN:Lcom/oculus/library/model/SupportedPlatform;

    .line 504
    invoke-virtual {v5}, Lcom/oculus/library/model/SupportedPlatform;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v102

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-static {v5}, Lcom/oculus/library/model/SupportedPlatform;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/SupportedPlatform;

    move-result-object v55

    .line 506
    new-instance v109, Ljava/util/HashSet;

    invoke-direct/range {v109 .. v109}, Ljava/util/HashSet;-><init>()V

    .line 507
    const-string v5, ""

    move-object/from16 v0, p0

    move/from16 v1, v103

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, ";"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v0, v12

    move/from16 v47, v0

    const/4 v5, 0x0

    :goto_6
    move/from16 v0, v47

    if-ge v5, v0, :cond_4

    aget-object v51, v12, v5

    .line 508
    invoke-static/range {v51 .. v51}, Lcom/oculus/library/model/AppMediaCapability;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/AppMediaCapability;

    move-result-object v51

    move-object/from16 v0, v109

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 511
    :cond_4
    sget-object v5, Lcom/oculus/library/model/HeadTracking;->UNKNOWN:Lcom/oculus/library/model/HeadTracking;

    .line 513
    invoke-virtual {v5}, Lcom/oculus/library/model/HeadTracking;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 512
    invoke-static {v5}, Lcom/oculus/library/model/HeadTracking;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/HeadTracking;

    move-result-object v59

    .line 515
    sget-object v5, Lcom/oculus/library/model/Category;->UNKNOWN:Lcom/oculus/library/model/Category;

    .line 516
    invoke-virtual {v5}, Lcom/oculus/library/model/Category;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v105

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oculus/library/model/Category;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/Category;

    move-result-object v58

    .line 518
    sget-object v5, Lcom/oculus/library/model/GrantReason;->UNKNOWN:Lcom/oculus/library/model/GrantReason;

    .line 520
    invoke-virtual {v5}, Lcom/oculus/library/model/GrantReason;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-static {v0, v1, v5}, Lcom/oculus/libraryapi/HorizonLibrary;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-static {v5}, Lcom/oculus/library/model/GrantReason;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/GrantReason;

    move-result-object v60

    .line 521
    const-wide/16 v62, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v108

    move-wide/from16 v2, v62

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v61

    .line 522
    const-wide/16 v110, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v108

    move-wide/from16 v2, v110

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/libraryapi/HorizonLibrary;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v63

    .line 524
    new-instance v5, Lcom/oculus/library/model/App;

    .line 532
    invoke-virtual {v11}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v12

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    new-instance v56, Ljava/util/ArrayList;

    move-object/from16 v0, v56

    move-object/from16 v1, v109

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v5 .. v64}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Lcom/oculus/library/model/SupportedPlatform;Ljava/util/List;Ljava/util/List;Lcom/oculus/library/model/Category;Lcom/oculus/library/model/HeadTracking;Lcom/oculus/library/model/GrantReason;JJ)V

    aput-object v5, v65, v4

    .line 428
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 572
    :cond_5
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    move-object/from16 v4, v65

    .line 573
    goto/16 :goto_0
.end method

.method private static getBlobWithDefault(Landroid/database/Cursor;I[B)[B
    .locals 1

    .prologue
    .line 649
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 653
    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    goto :goto_0
.end method

.method private static getBooleanWithDefault(Landroid/database/Cursor;IZ)Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 645
    :goto_0
    return p2

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getIntWithDefault(Landroid/database/Cursor;II)I
    .locals 1

    .prologue
    .line 617
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 621
    :goto_0
    return p2

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLongWithDefault(Landroid/database/Cursor;IJ)J
    .locals 2

    .prologue
    .line 625
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 629
    :goto_0
    return-wide p2

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 637
    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 689
    if-nez p1, :cond_0

    .line 690
    const/4 v0, 0x0

    .line 697
    :goto_0
    return-object v0

    .line 692
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 693
    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 694
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 695
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 271
    const-string v0, "cancel_download_package"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 4

    .prologue
    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    if-eqz p4, :cond_0

    .line 214
    const-string/jumbo v1, "result_receiver"

    new-instance v2, Lcom/oculus/library/model/InstallerCallbackReceiver;

    invoke-direct {v2, p4}, Lcom/oculus/library/model/InstallerCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallerCallback;)V

    .line 216
    invoke-virtual {v2}, Lcom/oculus/library/model/InstallerCallbackReceiver;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oculus/libraryapi/HorizonLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 218
    :cond_0
    if-eqz p3, :cond_1

    .line 219
    const-string v1, "extra_request_origin"

    invoke-virtual {p3}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1
    const-string v1, "extra_update_config_apk"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    if-eqz p2, :cond_2

    .line 223
    const-string v1, "extra_update_config_obb"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    :cond_2
    const-string v1, "install_custom_package"

    const/4 v2, 0x0

    .line 226
    invoke-direct {p0, v1, v2, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_4

    const-string v1, "extra_response_callback_supported"

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    :cond_3
    :goto_0
    return-void

    .line 236
    :cond_4
    if-eqz p4, :cond_3

    .line 237
    iget-object v0, p1, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForSuccess(Ljava/lang/String;J)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    .line 237
    invoke-interface {p4, v0}, Lcom/oculus/library/model/InstallerCallback;->onInstallerResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    goto :goto_0
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    if-eqz p3, :cond_0

    .line 159
    const-string/jumbo v1, "result_receiver"

    new-instance v2, Lcom/oculus/library/model/InstallerCallbackReceiver;

    invoke-direct {v2, p3}, Lcom/oculus/library/model/InstallerCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallerCallback;)V

    .line 161
    invoke-virtual {v2}, Lcom/oculus/library/model/InstallerCallbackReceiver;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oculus/libraryapi/HorizonLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    :cond_0
    if-eqz p2, :cond_1

    .line 164
    const-string v1, "extra_request_origin"

    invoke-virtual {p2}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    const-string v1, "install_package"

    .line 167
    invoke-direct {p0, v1, p1, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_3

    const-string v1, "extra_response_callback_supported"

    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    :cond_2
    :goto_0
    return-void

    .line 177
    :cond_3
    if-eqz p3, :cond_2

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForSuccess(Ljava/lang/String;J)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    .line 178
    invoke-interface {p3, v0}, Lcom/oculus/library/model/InstallerCallback;->onInstallerResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    goto :goto_0
.end method

.method public downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 186
    new-array v0, v2, [Lcom/oculus/appmanager/info/model/InstallerResult;

    .line 187
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 188
    new-instance v2, Lcom/oculus/libraryapi/HorizonLibrary$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/oculus/libraryapi/HorizonLibrary$1;-><init>(Lcom/oculus/libraryapi/HorizonLibrary;[Lcom/oculus/appmanager/info/model/InstallerResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 196
    invoke-virtual {p0, p1, p2, v2}, Lcom/oculus/libraryapi/HorizonLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 198
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 200
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllApps()[Lcom/oculus/library/model/App;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 116
    iget-object v0, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    iget-object v1, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/SecureLibraryProvider;->get(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v1, "Unable to guarantee a secure connection to Oculus Library. Please check that the correctly signed version of horizon is installed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 136
    :goto_0
    return-object v0

    .line 124
    :cond_0
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllPackages()Landroid/net/Uri;

    move-result-object v1

    .line 127
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 128
    invoke-static {v1}, Lcom/oculus/libraryapi/HorizonLibrary;->extractFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 136
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v0, v1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    :try_start_1
    sget-object v2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v3, "Content provider process died"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v0, v6

    goto :goto_0

    .line 132
    :catch_1
    move-exception v1

    .line 133
    :try_start_2
    sget-object v2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v3, "Exception while using provider"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllDownloads()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getAllInstallsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllInstalls()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 99
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    iget-object v1, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/SecureLibraryProvider;->get(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v1, "Unable to guarantee a secure connection to Oculus Library. Please check that the correctly signed version of horizon is installed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p1}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryByPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/oculus/libraryapi/HorizonLibrary;->extractFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;

    move-result-object v1

    .line 87
    array-length v2, v1

    if-lez v2, :cond_2

    .line 88
    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v0, v6

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    :try_start_1
    sget-object v2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v3, "Content provider process died"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v0, v6

    goto :goto_0

    .line 95
    :catch_1
    move-exception v1

    .line 96
    :try_start_2
    sget-object v2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v3, "Exception while using provider"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
.end method

.method public getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/oculus/libraryapi/HorizonLibrary;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v2

    .line 106
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 107
    iget-object v4, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    :goto_1
    return-object v0

    .line 106
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 300
    const-string v1, "get_device_id"

    invoke-direct {p0, v1, v0, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_0

    .line 302
    const-string v0, "extra_device_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_0
    return-object v0
.end method

.method public getQueryAllUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllPackages()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getQueryByPackageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 295
    invoke-static {p1}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryByPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Landroid/os/ResultReceiver;)V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string/jumbo v1, "result_receiver"

    .line 65
    invoke-direct {p0, p1}, Lcom/oculus/libraryapi/HorizonLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    const-string/jumbo v1, "refetch"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 67
    return-void
.end method

.method public save(Lcom/oculus/library/model/App;)V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    const-string/jumbo v1, "recent_activity_ms"

    iget-wide v2, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v1, "total_activity_ms"

    iget-wide v2, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v1, "user_quality_rating"

    iget-wide v2, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v1, "status"

    iget-object v2, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "cloud_storage_status"

    iget-object v2, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "is_unseen"

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "installed_binary_id"

    iget-object v2, p1, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->update(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    if-eqz p2, :cond_0

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    const-string v1, "extra_request_origin"

    invoke-virtual {p2}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    const-string/jumbo v1, "uninstall_package"

    invoke-direct {p0, v1, p1, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 253
    return-void
.end method

.method public uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 258
    if-eqz p2, :cond_0

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    const-string v2, "extra_request_origin"

    invoke-virtual {p2}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    const-string/jumbo v2, "uninstall_package"

    invoke-direct {p0, v2, p1, v0}, Lcom/oculus/libraryapi/HorizonLibrary;->callContentResolver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 264
    return-object v1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected update(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mLibraryProvider:Lcom/oculus/libraryapi/SecureLibraryProvider;

    iget-object v1, p0, Lcom/oculus/libraryapi/HorizonLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/SecureLibraryProvider;->get(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 660
    if-nez v1, :cond_0

    .line 661
    sget-object v0, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v1, "Unable to guarantee a secure connection to Oculus Library. Please check that the correctly signed version of horizon is installed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 669
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryByPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 670
    invoke-static {p2}, Lcom/oculus/libraryapi/HorizonLibrary;->createContentValuesForUpdate(Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 668
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    .line 674
    :try_start_1
    sget-object v2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v3, "Content provider process died"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 675
    :catch_1
    move-exception v0

    .line 676
    :try_start_2
    sget-object v2, Lcom/oculus/libraryapi/HorizonLibrary;->TAG:Ljava/lang/String;

    const-string v3, "Exception while using provider"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 678
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method
