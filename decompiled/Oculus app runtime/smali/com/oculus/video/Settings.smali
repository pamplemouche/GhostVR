.class public final Lcom/oculus/video/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/Settings$GK;
    }
.end annotation


# static fields
.field private static final BOARD_SAMSUNG_GALAXY_NOTE_4:Ljava/lang/String; = "APQ8084"

.field private static final BOARD_SAMSUNG_GALAXY_S6:Ljava/lang/String; = "universal7420"

.field private static final CHANNEL_OCULUS_GALLERY:Ljava/lang/String; = "com.oculus.mediagallery"

.field private static final CHANNEL_OCULUS_HOME:Ljava/lang/String; = "com.oculus.vrshell.home"

.field private static final FRAME_DROP_PERCENTAGE_THRESHOLD:F = 10.0f

.field private static final MAX_INITIAL_BITRATE_GEAR_OR_SYNC:I = 0x300000

.field private static final MAX_INITIAL_BITRATE_OCULUS:I = 0x700000

.field private static final METADATA_KEY_OC_ACCESS_TOKEN:Ljava/lang/String; = "com.oculus.accessToken"

.field private static final MIN_FRAME_DROP_EVALUATION_INTERVAL_MS:J = 0x7530L

.field private static final OCULUS_DEVICE_BRAND_NAME:Ljava/lang/String; = "oculus"

.field private static final PACKAGE_NAME_VENUES:Ljava/lang/String; = "com.oculus.venues"

.field private static final PACKAGE_NAME_VIDEO_SDK_UNITY_TEST:Ljava/lang/String; = "com.oculus.videosdkunitytest"

.field private static final PACKAGE_NAME_VIDEO_SDK_UNIT_TESTS:Ljava/lang/String; = "com.oculus.videosdkunittests"

.field private static final PROVIDER_FACEBOOK:Ljava/lang/String; = "facebook"

.field private static final PROVIDER_OCULUS_APP_STORE:Ljava/lang/String; = "null"

.field private static final PROVIDER_OCULUS_MOVIE_STORE:Ljava/lang/String; = "oculus"

.field private static TAG:Ljava/lang/String; = "Settings"

.field private static final VENUES_VIDEO_PROXY_URL_SUBSTRING:Ljava/lang/String; = "venues_video_proxy"

.field private static final VIDEO_SOURCE_WHITELISTED_MODULES:[Ljava/lang/String;

.field private static final VIDEO_SOURCE_WHITELISTED_PROVIDERS:[Ljava/lang/String;

.field private static appVersion:Ljava/lang/String; = "1.0"

.field private static appVersionCode:Ljava/lang/String; = "1"

.field private static oculusAppId:Ljava/lang/String; = null

.field private static packageName:Ljava/lang/String; = "oculus_video_sdk"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "facebook"

    const-string v1, "oculus"

    const-string v2, "null"

    .line 194
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/video/Settings;->VIDEO_SOURCE_WHITELISTED_PROVIDERS:[Ljava/lang/String;

    const-string v0, "com.oculus.venues"

    .line 200
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/video/Settings;->VIDEO_SOURCE_WHITELISTED_MODULES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyticsRedactVideoSource(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 204
    sget-object v0, Lcom/oculus/video/Settings;->packageName:Ljava/lang/String;

    const-string v1, "com.oculus.videosdkunittests"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/oculus/video/Settings;->packageName:Ljava/lang/String;

    const-string v2, "com.oculus.videosdkunitytest"

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    sget-object v0, Lcom/oculus/video/Settings;->packageName:Ljava/lang/String;

    const-string v2, "com.oculus.venues"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "venues_video_proxy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 215
    :cond_1
    invoke-static {p0}, Lcom/oculus/video/VideoPlayer_Android;->isSideLoaded(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/oculus/video/Settings;->VIDEO_SOURCE_WHITELISTED_PROVIDERS:[Ljava/lang/String;

    .line 216
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/oculus/video/Settings;->VIDEO_SOURCE_WHITELISTED_MODULES:[Ljava/lang/String;

    .line 217
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/oculus/video/Settings;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static blendMixed360Manifest()Z
    .locals 1

    .line 297
    sget-object v0, Lcom/oculus/video/Settings$GK;->BLEND_MIXED360_MANIFEST:Lcom/oculus/video/Settings$GK;

    invoke-virtual {v0}, Lcom/oculus/video/Settings$GK;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oculus/video/Settings;->useVideoDirectDecoder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blendSSIM360Manifest()Z
    .locals 1

    .line 301
    invoke-static {}, Lcom/oculus/video/Settings;->blendMixed360Manifest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oculus/video/Settings$GK;->BLEND_SSIM360_MANIFEST:Lcom/oculus/video/Settings$GK;

    invoke-virtual {v0}, Lcom/oculus/video/Settings$GK;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/oculus/video/Settings;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVersionCode()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/oculus/video/Settings;->appVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getBandwidthMeterMaxWeight()I
    .locals 2

    .line 183
    sget-object v0, Lcom/oculus/video/Settings;->packageName:Ljava/lang/String;

    const-string v1, "com.oculus.venues"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x186a0

    return v0

    :cond_0
    const/16 v0, 0x7d0

    return v0
.end method

.method public static getMaxInitialBitrate()I
    .locals 2

    .line 151
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "oculus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x700000

    return v0

    :cond_0
    const/high16 v0, 0x300000

    return v0
.end method

.method public static getOculusAppId()Ljava/lang/String;
    .locals 1

    .line 135
    sget-object v0, Lcom/oculus/video/Settings;->oculusAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 127
    sget-object v0, Lcom/oculus/video/Settings;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getTrackSelectionBandwidthFraction()F
    .locals 2

    .line 175
    sget-object v0, Lcom/oculus/video/Settings;->packageName:Ljava/lang/String;

    const-string v1, "com.oculus.venues"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f59999a    # 0.85f

    return v0

    :cond_0
    const/high16 v0, 0x3f400000    # 0.75f

    return v0
.end method

.method public static setAppData(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 104
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/oculus/video/Settings;->packageName:Ljava/lang/String;

    .line 105
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/oculus/video/Settings;->appVersion:Ljava/lang/String;

    .line 106
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/video/Settings;->appVersionCode:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 110
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.oculus.accessToken"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "\\|"

    .line 112
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 113
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    aget-object v0, p0, v2

    const-string v1, "OC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 116
    aget-object p0, p0, v0

    sput-object p0, Lcom/oculus/video/Settings;->oculusAppId:Ljava/lang/String;

    goto :goto_1

    .line 114
    :cond_2
    :goto_0
    sget-object p0, Lcom/oculus/video/Settings;->TAG:Ljava/lang/String;

    const-string v0, "Invalid access token"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 122
    sget-object v0, Lcom/oculus/video/Settings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 120
    sget-object v0, Lcom/oculus/video/Settings;->TAG:Ljava/lang/String;

    const-string v1, "setAppData NameNotFoundException : "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static useAndroidPastPath()Z
    .locals 2

    .line 282
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "oculus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useAudioSpatialization(Lcom/oculus/video/Video;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 255
    :cond_0
    sget-object v1, Lcom/oculus/video/Settings$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    invoke-virtual {p0}, Lcom/oculus/video/Video;->getAudioChannelLayout()Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    return v2

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getProjectionType()Lcom/oculus/video/projection/ProjectionType;

    move-result-object v1

    sget-object v3, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    if-eq v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/oculus/video/Video;->getFovX()D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_2

    return v0

    .line 265
    :cond_2
    sget-object v1, Lcom/oculus/video/Settings$GK;->ENABLE_HOME_VIRTUALIZATION:Lcom/oculus/video/Settings$GK;

    invoke-virtual {v1}, Lcom/oculus/video/Settings$GK;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getChannel()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.oculus.vrshell.home"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 268
    :goto_0
    sget-object v3, Lcom/oculus/video/Settings$GK;->ENABLE_GALLERY_VIRTUALIZATION:Lcom/oculus/video/Settings$GK;

    invoke-virtual {v3}, Lcom/oculus/video/Settings$GK;->isOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getChannel()Ljava/lang/String;

    move-result-object p0

    const-string v3, "com.oculus.mediagallery"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-nez v1, :cond_5

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static useDataCache(Lcom/oculus/video/Video;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    .line 227
    sget-object v2, Lcom/oculus/video/Settings$GK;->DISABLE_CACHE:Lcom/oculus/video/Settings$GK;

    invoke-virtual {v2}, Lcom/oculus/video/Settings$GK;->isOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http"

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/oculus/video/Video;->isLiveMedia()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getSyncMode()Ljava/lang/String;

    move-result-object p0

    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static useExoPlayerFastSeek(Lcom/oculus/video/Video;)Z
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getProvider()Ljava/lang/String;

    move-result-object p0

    const-string v0, "oculus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 292
    :cond_0
    sget-object p0, Lcom/oculus/video/Settings$GK;->USE_EXOPLAYER_FAST_SEEK:Lcom/oculus/video/Settings$GK;

    invoke-virtual {p0}, Lcom/oculus/video/Settings$GK;->isOn()Z

    move-result p0

    return p0
.end method

.method public static useFrameDropBasedTrackSelection(JF)Z
    .locals 3

    .line 169
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "oculus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7530

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/high16 p0, 0x41200000    # 10.0f

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static useSpatialAudioAsyncConsumer()Z
    .locals 2

    .line 246
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "APQ8084"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static useVideoDirectDecoder()Z
    .locals 2

    .line 240
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "universal7420"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
