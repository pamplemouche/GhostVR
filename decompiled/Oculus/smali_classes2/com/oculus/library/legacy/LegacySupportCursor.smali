.class public Lcom/oculus/library/legacy/LegacySupportCursor;
.super Landroid/database/MatrixCursor;
.source "LegacySupportCursor.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "app_grouping_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "app_scoped_user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "comfort_rating"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "apk_full_size_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "obb_full_size_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "downloaded_size_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "download_size_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "patch_download_size_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "entitlement_hash"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "images_blob"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "installed_version_code"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "installed_version_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "installed_binary_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_unseen"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "latest_version_code"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "latest_version_name"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "latest_target_sdk_version"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "installable_on_external_storage"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "livestreaming_status"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "livestreaming_status_audio_hooking"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "chromecast_audio_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "microphone_usage"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "permissions_blob"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "recent_activity_ms"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "cloud_storage_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "supported_input_devices_blob"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "user_quality_rating"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "total_activity_ms"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "min_recommended_version_code"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "min_required_version_code"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "is_demo_of"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "play_modes"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "app_media_capabilities"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "supported_platform"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "head_tracking"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "grant_reason"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "grant_time"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "grant_expiration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/library/legacy/LegacySupportCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/oculus/library/legacy/LegacySupportCursor;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 67
    return-void
.end method


# virtual methods
.method public setUp(Lcom/google/common/collect/ImmutableList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    .line 71
    const/16 v1, 0x2c

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    :goto_1
    aput-object v1, v5, v2

    const/4 v2, 0x2

    if-eqz p2, :cond_1

    iget-object v1, v0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    :goto_2
    aput-object v1, v5, v2

    const/4 v1, 0x3

    iget-object v2, v0, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    aput-object v2, v5, v1

    const/4 v1, 0x4

    iget-object v2, v0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x5

    iget-wide v2, v0, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x6

    iget-wide v2, v0, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x7

    iget-wide v2, v0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x8

    iget-wide v2, v0, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x9

    iget-wide v2, v0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v2, 0xa

    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    :goto_3
    aput-object v1, v5, v2

    const/16 v1, 0xb

    iget-object v2, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    .line 83
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/library/model/ParcelableModelHelper;->marshallParcelableList(Ljava/util/List;)[B

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0xc

    iget-wide v2, v0, Lcom/oculus/library/model/App;->versionCode:J

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0xd

    iget-object v2, v0, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    aput-object v2, v5, v1

    const/16 v1, 0xe

    iget-object v2, v0, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    aput-object v2, v5, v1

    const/16 v2, 0xf

    if-eqz p2, :cond_4

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->isFavorite:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 87
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    aput-object v1, v5, v2

    const/16 v2, 0x10

    if-eqz p2, :cond_6

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->isUnseen:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 88
    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_7
    aput-object v1, v5, v2

    const/16 v1, 0x11

    iget-wide v2, v0, Lcom/oculus/library/model/App;->latestVersionCode:J

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x12

    iget-object v2, v0, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    aput-object v2, v5, v1

    const/16 v1, 0x13

    iget v2, v0, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v2, 0x14

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 92
    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/16 v2, 0x15

    if-eqz p2, :cond_8

    iget-object v1, v0, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    .line 93
    invoke-virtual {v1}, Lcom/oculus/library/model/LivestreamingStatus;->name()Ljava/lang/String;

    move-result-object v1

    :goto_9
    aput-object v1, v5, v2

    const/16 v2, 0x16

    if-eqz p2, :cond_a

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 94
    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/16 v2, 0x17

    if-eqz p2, :cond_c

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 95
    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/16 v2, 0x18

    if-eqz p2, :cond_d

    iget-object v1, v0, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    .line 96
    invoke-virtual {v1}, Lcom/oculus/library/model/MicrophoneUsage;->name()Ljava/lang/String;

    move-result-object v1

    :goto_c
    aput-object v1, v5, v2

    const/16 v1, 0x19

    iget-object v2, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    aput-object v2, v5, v1

    const/16 v1, 0x1a

    iget-object v2, v0, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 98
    invoke-static {v2}, Lcom/oculus/library/model/ParcelableModelHelper;->marshallParcelableList(Ljava/util/List;)[B

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v2, 0x1b

    if-eqz p2, :cond_e

    iget-wide v6, v0, Lcom/oculus/library/model/App;->recentActivityMs:J

    .line 99
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_d
    aput-object v1, v5, v2

    const/16 v1, 0x1c

    iget-object v2, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    aput-object v2, v5, v1

    const/16 v1, 0x1d

    iget-object v2, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    aput-object v2, v5, v1

    const/16 v1, 0x1e

    iget-object v2, v0, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 102
    invoke-static {v2}, Lcom/oculus/library/model/ParcelableModelHelper;->marshallParcelableList(Ljava/util/List;)[B

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v2, 0x1f

    if-eqz p2, :cond_f

    iget-wide v6, v0, Lcom/oculus/library/model/App;->userQualityRating:J

    .line 103
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_e
    aput-object v1, v5, v2

    const/16 v2, 0x20

    if-eqz p2, :cond_10

    iget-wide v6, v0, Lcom/oculus/library/model/App;->totalActivityMs:J

    .line 104
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_f
    aput-object v1, v5, v2

    const/16 v1, 0x21

    if-eqz p2, :cond_11

    iget-wide v2, v0, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    .line 105
    :goto_10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x22

    if-eqz p2, :cond_12

    iget-wide v2, v0, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    .line 106
    :goto_11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v2, 0x23

    if-eqz p2, :cond_13

    iget-object v1, v0, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    :goto_12
    aput-object v1, v5, v2

    const/16 v2, 0x24

    if-eqz p2, :cond_14

    iget-object v1, v0, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    .line 109
    invoke-static {v1}, Lcom/oculus/cache/library/LibraryDBCacheContentValuesHelper;->convertPlayModesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    :goto_13
    aput-object v1, v5, v2

    const/16 v2, 0x25

    if-eqz p2, :cond_15

    iget-object v1, v0, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    .line 111
    invoke-virtual {v1}, Lcom/oculus/library/model/Category;->name()Ljava/lang/String;

    move-result-object v1

    :goto_14
    aput-object v1, v5, v2

    const/16 v2, 0x26

    if-eqz p2, :cond_16

    iget-object v1, v0, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    .line 113
    invoke-static {v1}, Lcom/oculus/cache/library/LibraryDBCacheContentValuesHelper;->convertCapabilitiesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    :goto_15
    aput-object v1, v5, v2

    const/16 v2, 0x27

    if-eqz p2, :cond_17

    iget-object v1, v0, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    .line 116
    invoke-virtual {v1}, Lcom/oculus/library/model/SupportedPlatform;->name()Ljava/lang/String;

    move-result-object v1

    :goto_16
    aput-object v1, v5, v2

    const/16 v2, 0x28

    if-eqz p2, :cond_18

    iget-object v1, v0, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    .line 117
    invoke-virtual {v1}, Lcom/oculus/library/model/HeadTracking;->name()Ljava/lang/String;

    move-result-object v1

    :goto_17
    aput-object v1, v5, v2

    const/16 v2, 0x29

    if-eqz p2, :cond_19

    iget-object v1, v0, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    .line 118
    invoke-virtual {v1}, Lcom/oculus/library/model/GrantReason;->name()Ljava/lang/String;

    move-result-object v1

    :goto_18
    aput-object v1, v5, v2

    const/16 v1, 0x2a

    if-eqz p2, :cond_1a

    iget-wide v2, v0, Lcom/oculus/library/model/App;->grantTimeMs:J

    .line 119
    :goto_19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v2, 0x2b

    if-eqz p2, :cond_1b

    iget-wide v0, v0, Lcom/oculus/library/model/App;->grantExpirationMs:J

    .line 120
    :goto_1a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    .line 122
    invoke-virtual {p0, v5}, Lcom/oculus/library/legacy/LegacySupportCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 71
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 81
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 84
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 87
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 88
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 91
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 93
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 94
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 96
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_c

    .line 99
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_d

    .line 103
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_e

    .line 104
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_11
    const-wide/32 v2, -0x80000000

    goto/16 :goto_10

    .line 105
    :cond_12
    const-wide/32 v2, -0x80000000

    goto/16 :goto_11

    .line 106
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_12

    .line 109
    :cond_14
    sget-object v1, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    goto/16 :goto_13

    .line 111
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_14

    .line 113
    :cond_16
    sget-object v1, Lcom/oculus/library/model/AppMediaCapability;->UNKNOWN:Lcom/oculus/library/model/AppMediaCapability;

    goto/16 :goto_15

    .line 116
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_16

    .line 117
    :cond_18
    sget-object v1, Lcom/oculus/library/model/HeadTracking;->UNKNOWN:Lcom/oculus/library/model/HeadTracking;

    invoke-virtual {v1}, Lcom/oculus/library/model/HeadTracking;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    .line 118
    :cond_19
    const/4 v1, 0x0

    goto :goto_18

    :cond_1a
    const-wide/16 v2, -0x1

    goto :goto_19

    .line 119
    :cond_1b
    const-wide/16 v0, -0x1

    goto :goto_1a

    .line 124
    :cond_1c
    return-void
.end method
