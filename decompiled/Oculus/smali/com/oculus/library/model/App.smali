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

.field public final appMediaCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppMediaCapability;",
            ">;"
        }
    .end annotation
.end field

.field public final appScopedUserId:Ljava/lang/String;

.field public final applicationGroupingId:Ljava/lang/String;

.field public final category:Lcom/oculus/library/model/Category;

.field public final chromecastAudioEnabled:Z

.field public final cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

.field public final comfortRating:Lcom/oculus/library/model/ComfortRating;

.field public final comfortRatingName:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final downloadSizeBytes:J

.field public final downloadedSizeBytes:J

.field public final entitlementHash:Ljava/lang/String;

.field public final grantExpirationMs:J

.field public final grantReason:Lcom/oculus/library/model/GrantReason;

.field public final grantTimeMs:J

.field public final headTracking:Lcom/oculus/library/model/HeadTracking;

.field public final id:Ljava/lang/String;

.field public final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/List",
            "<",
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

.field public final platform:Lcom/oculus/library/model/SupportedPlatform;

.field public final playModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Lcom/oculus/library/model/SupportedPlatform;Ljava/util/List;Ljava/util/List;Lcom/oculus/library/model/Category;Lcom/oculus/library/model/HeadTracking;Lcom/oculus/library/model/GrantReason;JJ)V
    .locals 5
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
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/library/model/Image$ImageName;",
            "Lcom/oculus/library/model/Image;",
            ">;JJJJJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;",
            "Ljava/util/List",
            "<",
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
            "Lcom/oculus/library/model/SupportedPlatform;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppMediaCapability;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/PlayMode;",
            ">;",
            "Lcom/oculus/library/model/Category;",
            "Lcom/oculus/library/model/HeadTracking;",
            "Lcom/oculus/library/model/GrantReason;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-static/range {p30 .. p30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null entitlement hash"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    .line 202
    iput-object p4, p0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    .line 203
    iput-object p5, p0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    .line 204
    iput-object p6, p0, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    .line 205
    iput-object p7, p0, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    .line 206
    iput-object p8, p0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    .line 207
    iput-wide p9, p0, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    .line 208
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    .line 209
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    .line 210
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    .line 211
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    .line 212
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/oculus/library/model/App;->versionCode:J

    .line 213
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    .line 214
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/oculus/library/model/App;->latestVersionCode:J

    .line 215
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    .line 216
    move/from16 v0, p26

    iput v0, p0, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    .line 217
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 218
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 219
    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    .line 220
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    .line 221
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    .line 224
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    .line 225
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    .line 226
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    .line 227
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    .line 228
    move/from16 v0, p37

    iput-boolean v0, p0, Lcom/oculus/library/model/App;->isFavorite:Z

    .line 229
    move/from16 v0, p38

    iput-boolean v0, p0, Lcom/oculus/library/model/App;->isUnseen:Z

    .line 230
    move-wide/from16 v0, p39

    iput-wide v0, p0, Lcom/oculus/library/model/App;->recentActivityMs:J

    .line 231
    move-wide/from16 v0, p41

    iput-wide v0, p0, Lcom/oculus/library/model/App;->userQualityRating:J

    .line 232
    move-wide/from16 v0, p43

    iput-wide v0, p0, Lcom/oculus/library/model/App;->totalActivityMs:J

    .line 233
    move-wide/from16 v0, p45

    iput-wide v0, p0, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    .line 234
    move-wide/from16 v0, p47

    iput-wide v0, p0, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    .line 235
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    .line 236
    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    .line 237
    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    .line 238
    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    .line 239
    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    .line 240
    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    .line 241
    move-object/from16 v0, p55

    iput-object v0, p0, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    .line 242
    move-wide/from16 v0, p56

    iput-wide v0, p0, Lcom/oculus/library/model/App;->grantTimeMs:J

    .line 243
    move-wide/from16 v0, p58

    iput-wide v0, p0, Lcom/oculus/library/model/App;->grantExpirationMs:J

    .line 244
    return-void
.end method


# virtual methods
.method public hasUpdate()Z
    .locals 4

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/oculus/library/model/App;->versionCode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/oculus/library/model/App;->latestVersionCode:J

    iget-wide v2, p0, Lcom/oculus/library/model/App;->versionCode:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstalled()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v1, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRated()Z
    .locals 4

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/oculus/library/model/App;->userQualityRating:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
