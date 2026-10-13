.class public Lcom/oculus/library/model/App;
.super Ljava/lang/Object;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/library/model/App$Builder;
    }
.end annotation


# instance fields
.field public final apkFullSizeBytes:J

.field public final appScopedUserId:Ljava/lang/String;

.field public final applicationGroupingId:Ljava/lang/String;

.field public final chromecastAudioEnabled:Z

.field public final cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

.field public final comfortRating:Lcom/oculus/library/model/ComfortRating;

.field public final comfortRatingName:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final downloadSizeBytes:J

.field public final downloadedSizeBytes:J

.field public final entitlementHash:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oculus/library/model/Image$ImageName;",
            "Lcom/oculus/library/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field public final installableOnExternalStorage:Z

.field public final installedBinaryId:Ljava/lang/String;

.field public final isDemoOf:Ljava/lang/String;

.field public final isFavorite:Z

.field public final isUnseen:Z

.field public final latestPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;"
        }
    .end annotation
.end field

.field public final latestTargetSdkVersion:I

.field public final latestVersionCode:J

.field public final latestVersionName:Ljava/lang/String;

.field public final livestreamingAudioHookingEnabled:Z

.field public final livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

.field public final microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

.field public final minRecommendedVersionCode:J

.field public final minRequiredVersionCode:J

.field public final obbFullSizeBytes:J

.field public final packageName:Ljava/lang/String;

.field public final patchSizeBytes:J

.field public final playModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/library/model/PlayMode;",
            ">;"
        }
    .end annotation
.end field

.field public final recentActivityMs:J

.field public final status:Lcom/oculus/library/model/AppStatus;

.field public final supportedInputDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final totalActivityMs:J

.field public final userQualityRating:J

.field public final versionCode:J

.field public final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/library/model/AppStatus;",
            "Lcom/oculus/library/model/CloudStorageStatus;",
            "Ljava/lang/String;",
            "Lcom/oculus/library/model/ComfortRating;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/oculus/library/model/Image$ImageName;",
            "Lcom/oculus/library/model/Image;",
            ">;JJJJJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/library/model/LivestreamingStatus;",
            "ZZ",
            "Lcom/oculus/library/model/MicrophoneUsage;",
            "ZZJJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/PlayMode;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static/range {p30 .. p30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    .line 136
    iput-object v1, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    move-object v1, p2

    .line 137
    iput-object v1, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    move-object v1, p3

    .line 138
    iput-object v1, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    move-object v1, p4

    .line 139
    iput-object v1, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    move-object v1, p5

    .line 140
    iput-object v1, v0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    move-object v1, p6

    .line 141
    iput-object v1, v0, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    move-object v1, p7

    .line 142
    iput-object v1, v0, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    move-object v1, p8

    .line 143
    iput-object v1, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    move-wide v1, p9

    .line 144
    iput-wide v1, v0, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    move-wide v1, p11

    .line 145
    iput-wide v1, v0, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    move-wide/from16 v1, p13

    .line 146
    iput-wide v1, v0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    move-wide/from16 v1, p15

    .line 147
    iput-wide v1, v0, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    move-wide/from16 v1, p17

    .line 148
    iput-wide v1, v0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    move-wide/from16 v1, p19

    .line 149
    iput-wide v1, v0, Lcom/oculus/library/model/App;->versionCode:J

    move-object/from16 v1, p21

    .line 150
    iput-object v1, v0, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    move-wide/from16 v1, p23

    .line 151
    iput-wide v1, v0, Lcom/oculus/library/model/App;->latestVersionCode:J

    move-object/from16 v1, p25

    .line 152
    iput-object v1, v0, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    move/from16 v1, p26

    .line 153
    iput v1, v0, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    move-object/from16 v1, p27

    .line 154
    iput-object v1, v0, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    move-object/from16 v1, p28

    .line 155
    iput-object v1, v0, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    move/from16 v1, p29

    .line 156
    iput-boolean v1, v0, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    move-object/from16 v1, p30

    .line 157
    iput-object v1, v0, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 158
    iput-object v1, v0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 159
    iput-object v1, v0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 160
    iput-object v1, v0, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    move/from16 v1, p34

    .line 161
    iput-boolean v1, v0, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    move/from16 v1, p35

    .line 162
    iput-boolean v1, v0, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    move-object/from16 v1, p36

    .line 163
    iput-object v1, v0, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    move-object/from16 v1, p22

    .line 164
    iput-object v1, v0, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    move/from16 v1, p37

    .line 165
    iput-boolean v1, v0, Lcom/oculus/library/model/App;->isFavorite:Z

    move/from16 v1, p38

    .line 166
    iput-boolean v1, v0, Lcom/oculus/library/model/App;->isUnseen:Z

    move-wide/from16 v1, p39

    .line 167
    iput-wide v1, v0, Lcom/oculus/library/model/App;->recentActivityMs:J

    move-wide/from16 v1, p41

    .line 168
    iput-wide v1, v0, Lcom/oculus/library/model/App;->userQualityRating:J

    move-wide/from16 v1, p43

    .line 169
    iput-wide v1, v0, Lcom/oculus/library/model/App;->totalActivityMs:J

    move-wide/from16 v1, p45

    .line 170
    iput-wide v1, v0, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    move-wide/from16 v1, p47

    .line 171
    iput-wide v1, v0, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    move-object/from16 v1, p49

    .line 172
    iput-object v1, v0, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    move-object/from16 v1, p50

    .line 173
    iput-object v1, v0, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    return-void

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null entitlement hash"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public hasUpdate()Z
    .locals 5

    .line 177
    iget-wide v0, p0, Lcom/oculus/library/model/App;->versionCode:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/oculus/library/model/App;->latestVersionCode:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstalled()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v1, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRated()Z
    .locals 5

    .line 185
    iget-wide v0, p0, Lcom/oculus/library/model/App;->userQualityRating:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
