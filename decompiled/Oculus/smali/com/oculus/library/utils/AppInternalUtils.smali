.class public Lcom/oculus/library/utils/AppInternalUtils;
.super Ljava/lang/Object;
.source "AppInternalUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arePermissionsEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 158
    :cond_0
    if-ne p0, p1, :cond_2

    .line 160
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, p0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static areTwoAppsEqual(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 22
    :cond_0
    if-ne p0, p1, :cond_2

    :goto_0
    move v1, v0

    .line 153
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 22
    goto :goto_0

    .line 25
    :cond_3
    iget-object v2, p0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    iget-object v3, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    if-ne v2, v3, :cond_1

    .line 29
    iget-object v2, p0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    iget-object v3, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    if-ne v2, v3, :cond_1

    .line 33
    iget-object v2, p0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    :cond_4
    iget-wide v2, p0, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    iget-wide v4, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v3, Lcom/oculus/library/model/AppStatus;->DOWNLOADING:Lcom/oculus/library/model/AppStatus;

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    iget-wide v4, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 48
    :cond_5
    iget-wide v2, p0, Lcom/oculus/library/model/App;->versionCode:J

    iget-wide v4, p1, Lcom/oculus/library/model/App;->versionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_6
    iget-wide v2, p0, Lcom/oculus/library/model/App;->latestVersionCode:J

    iget-wide v4, p1, Lcom/oculus/library/model/App;->latestVersionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    :cond_7
    iget v2, p0, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    iget v3, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    if-ne v2, v3, :cond_1

    .line 69
    iget-object v2, p0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    :cond_8
    iget-object v2, p0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_9
    iget-object v2, p0, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    iget-object v3, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    if-ne v2, v3, :cond_1

    .line 81
    iget-object v2, p0, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :cond_a
    iget-object v2, p0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    iget-object v3, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_b
    iget-object v2, p0, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    iget-object v3, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oculus/library/utils/AppInternalUtils;->arePermissionsEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-boolean v2, p0, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    if-ne v2, v3, :cond_1

    .line 99
    iget-boolean v2, p0, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    if-ne v2, v3, :cond_1

    .line 103
    iget-boolean v2, p0, Lcom/oculus/library/model/App;->isFavorite:Z

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    if-ne v2, v3, :cond_1

    .line 106
    iget-boolean v2, p0, Lcom/oculus/library/model/App;->isUnseen:Z

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    if-ne v2, v3, :cond_1

    .line 110
    iget-wide v2, p0, Lcom/oculus/library/model/App;->recentActivityMs:J

    iget-wide v4, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 114
    iget-wide v2, p0, Lcom/oculus/library/model/App;->userQualityRating:J

    iget-wide v4, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 118
    iget-wide v2, p0, Lcom/oculus/library/model/App;->totalActivityMs:J

    iget-wide v4, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :cond_c
    iget-object v2, p0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :cond_d
    iget-object v2, p0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_e
    iget-object v2, p0, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    iget-object v3, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    if-ne v2, v3, :cond_1

    .line 144
    iget-object v2, p0, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    iget-object v3, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    if-ne v2, v3, :cond_1

    .line 148
    iget-wide v2, p0, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    iget-wide v4, p1, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    iget-wide v4, p1, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v1, v0

    .line 153
    goto/16 :goto_1

    .line 33
    :cond_f
    iget-object v2, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 51
    :cond_10
    iget-object v2, p1, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto/16 :goto_1

    .line 60
    :cond_11
    iget-object v2, p1, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto/16 :goto_1

    .line 69
    :cond_12
    iget-object v2, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    if-eqz v2, :cond_8

    goto/16 :goto_1

    .line 73
    :cond_13
    iget-object v2, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_9

    goto/16 :goto_1

    .line 82
    :cond_14
    iget-object v2, p1, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    if-eqz v2, :cond_a

    goto/16 :goto_1

    .line 87
    :cond_15
    iget-object v2, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    if-eqz v2, :cond_b

    goto/16 :goto_1

    .line 123
    :cond_16
    iget-object v2, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    if-eqz v2, :cond_c

    goto/16 :goto_1

    .line 129
    :cond_17
    iget-object v2, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    if-eqz v2, :cond_d

    goto/16 :goto_1

    .line 135
    :cond_18
    iget-object v2, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    if-eqz v2, :cond_e

    goto/16 :goto_1
.end method
