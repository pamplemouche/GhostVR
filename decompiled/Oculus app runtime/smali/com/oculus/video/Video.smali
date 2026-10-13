.class public Lcom/oculus/video/Video;
.super Lorg/json/JSONObject;
.source "Video.java"


# instance fields
.field private final dashManifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

.field private projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

.field private final videoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/oculus/video/VideoPlayer_Android;->isSideLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ":/"

    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/Video;->videoUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/video/Video;->getDashManifestPlaylist()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    new-instance v1, Lcom/oculus/video/source/dash/OculusDashManifestParser;

    invoke-direct {v1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parse(Ljava/lang/String;)Lcom/oculus/video/source/dash/OculusDashManifest;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    :cond_1
    iput-object p1, p0, Lcom/oculus/video/Video;->dashManifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 63
    new-instance p1, Lcom/oculus/video/projection/VideoProjection;

    invoke-direct {p1, p0}, Lcom/oculus/video/projection/VideoProjection;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/oculus/video/Video;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    return-void
.end method

.method private clearProjectionMetadata()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "ProjectionMetadataSource"

    .line 180
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Projection"

    .line 181
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "StereoMode"

    .line 182
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "FovX"

    .line 183
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "FovY"

    .line 184
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Horizon"

    .line 185
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Meridian"

    .line 186
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "RightFov"

    .line 187
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Pose"

    .line 188
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "VR180MeshData"

    .line 189
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static createFromDashManifestXml(Ljava/lang/String;)Lcom/oculus/video/Video;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "DashManifestXml"

    .line 40
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    new-instance p0, Lcom/oculus/video/Video;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/video/Video;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static createFromVideoUrl(Ljava/lang/String;)Lcom/oculus/video/Video;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "VideoUrl"

    .line 34
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    new-instance p0, Lcom/oculus/video/Video;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/video/Video;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static extractSubtitleMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/16 v1, 0x2e

    .line 632
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "."

    .line 633
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/4 v1, -0x1

    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x17a81

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3

    const v3, 0x1bdf5

    if-eq v2, v3, :cond_2

    const v3, 0x1be01    # 1.59996E-40f

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "ssa"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_2

    :cond_2
    const-string v2, "srt"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    const-string v2, "ass"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, -0x1

    :goto_2
    if-eqz p0, :cond_6

    if-eq p0, v0, :cond_5

    if-eq p0, v4, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    const-string p0, "text/x-ssa"

    return-object p0

    :cond_6
    const-string p0, "application/x-subrip"

    return-object p0
.end method

.method private getDashManifestPlaylist()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "DashManifestXml"

    .line 239
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public canUseExoPlayer()Z
    .locals 1

    :try_start_0
    const-string v0, "CanUseExoPlayer"

    .line 502
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAes128Iv()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "Aes128Iv"

    .line 624
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getAes128Key()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "Aes128Key"

    .line 616
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getAudioChannelLayout()Lcom/oculus/video/audio/AudioChannelLayout;
    .locals 1

    :try_start_0
    const-string v0, "AudioChannelLayout"

    .line 455
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/video/audio/AudioChannelLayout;->fromString(Ljava/lang/String;)Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 457
    :catch_0
    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object v0
.end method

.method public getAudioMimeType()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "AudioMimeType"

    .line 552
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getAudioRendererName()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "AudioRendererName"

    .line 519
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getAudioTracks()Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    const-string v0, "AudioTracks"

    .line 433
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailableSubtitles()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getSubtitleTracks()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 484
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 485
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "Channel"

    .line 275
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getClientVideoData()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "ClientVideoData"

    .line 576
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/oculus/video/Video;->dashManifest:Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    return-object v0
.end method

.method public getDrmProxyUrl()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "DrmProxyUrl"

    .line 353
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getDrmSecurityLevel()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "DrmSecurityLevel"

    .line 315
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    :try_start_0
    const-string v0, "Duration"

    .line 299
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFovX()D
    .locals 2

    :try_start_0
    const-string v0, "FovX"

    .line 393
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFovY()D
    .locals 2

    :try_start_0
    const-string v0, "FovY"

    .line 401
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrameAspectRatio()F
    .locals 2

    :try_start_0
    const-string v0, "FrameAspectRatio"

    .line 600
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-float v0, v0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameRate()F
    .locals 1

    :try_start_0
    const-string v0, "FrameRate"

    .line 608
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameRotation()I
    .locals 1

    :try_start_0
    const-string v0, "FrameRotation"

    .line 592
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHttpRequestHeaders()Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    const-string v0, "HttpRequestHeaders"

    .line 536
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitialHeight()I
    .locals 1

    :try_start_0
    const-string v0, "InitialHeight"

    .line 291
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInitialWidth()I
    .locals 1

    :try_start_0
    const-string v0, "InitialWidth"

    .line 283
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsSeekable()Z
    .locals 1

    :try_start_0
    const-string v0, "IsSeekable"

    .line 307
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public getOverrideProjectionMetadata()Z
    .locals 1

    :try_start_0
    const-string v0, "OverrideProjectionMetadata"

    .line 247
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryAudioTrackIndex()I
    .locals 2

    .line 462
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getAudioTracks()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getProjectionMetadata()Lcom/oculus/video/projection/VideoProjection;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/oculus/video/Video;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    return-object v0
.end method

.method public getProjectionType()Lcom/oculus/video/projection/ProjectionType;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/oculus/video/Video;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    invoke-virtual {v0}, Lcom/oculus/video/projection/VideoProjection;->getProjectionType()Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "Provider"

    .line 267
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getSpatialAudioFocusWidthDegrees()D
    .locals 2

    :try_start_0
    const-string v0, "FocusWidthDegrees"

    .line 425
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSpatialAudioOffFocusLevel()D
    .locals 2

    :try_start_0
    const-string v0, "OffFocusLevel"

    .line 417
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStereoMode()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "StereoMode"

    .line 371
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getSubtitleMimeTypes()Lorg/json/JSONArray;
    .locals 1

    :try_start_0
    const-string v0, "SubtitleMimeTypes"

    .line 560
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleTracks()Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    const-string v0, "SubtitleTracks"

    .line 472
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncMode()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SyncMode"

    .line 568
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "none"

    return-object v0
.end method

.method public getVideoFullPath()Ljava/lang/String;
    .locals 3

    .line 334
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 339
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "VideoId"

    .line 259
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getVideoMimeType()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "VideoMimeType"

    .line 544
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getVideoRendererName()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "VideoRendererName"

    .line 511
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/oculus/video/Video;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "VideoUrl"

    .line 323
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public hasCameraMotionData()Z
    .locals 1

    :try_start_0
    const-string v0, "HasCameraMotionData"

    .line 527
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasSpatialAudio()Z
    .locals 3

    .line 440
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getAudioTracks()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 442
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 444
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public hasSubtitle()Z
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getSubtitleTracks()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is3D()Z
    .locals 3

    .line 378
    sget-object v0, Lcom/oculus/video/Video$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    iget-object v1, p0, Lcom/oculus/video/Video;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    invoke-virtual {v1}, Lcom/oculus/video/projection/VideoProjection;->getStereoMode()Lcom/oculus/video/projection/ImageStereoMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isLiveMedia()Z
    .locals 1

    :try_start_0
    const-string v0, "IsLiveMedia"

    .line 584
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpatialAudioFocusEnabled()Z
    .locals 1

    :try_start_0
    const-string v0, "EnableFocus"

    .line 409
    invoke-virtual {p0, v0}, Lcom/oculus/video/Video;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioChannelLayout(Lcom/oculus/video/audio/AudioChannelLayout;)Lcom/oculus/video/Video;
    .locals 1

    :try_start_0
    const-string v0, "AudioChannelLayout"

    .line 128
    iget-object p1, p1, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public setAudioMimeType(Ljava/lang/String;)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "AudioMimeType"

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setAudioRendererName(Ljava/lang/String;)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "AudioRendererName"

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setAudioTracks(Lorg/json/JSONObject;)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "AudioTracks"

    .line 114
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setCanUseExoPlayer(Z)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "CanUseExoPlayer"

    .line 154
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setDuration(J)Lcom/oculus/video/Video;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-string v0, "Duration"

    .line 77
    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/video/Video;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setFrameAspectRatio(F)Lcom/oculus/video/Video;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    float-to-double v0, p1

    const-string p1, "FrameAspectRatio"

    .line 136
    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setFrameRate(F)Lcom/oculus/video/Video;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    float-to-double v0, p1

    const-string p1, "FrameRate"

    .line 144
    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setFrameRotation(I)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "FrameRotation"

    .line 149
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setHasCameraMotionData(Z)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "HasCameraMotionData"

    .line 175
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setInitialHeight(I)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "InitialHeight"

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setInitialWidth(I)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "InitialWidth"

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setIsSeekable(Z)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "IsSeekable"

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;)Lcom/oculus/video/Video;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oculus.mediagallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oculus.cinema"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {p1}, Lcom/oculus/video/projection/VideoProjection;->getMetadataSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/oculus/video/Video;->getOverrideProjectionMetadata()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    invoke-virtual {p1}, Lcom/oculus/video/projection/VideoProjection;->getMetadataSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "API"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object p0

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/oculus/video/Video;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    invoke-static {v0, p1}, Lcom/oculus/video/projection/VideoProjection;->selectPreferred(Lcom/oculus/video/projection/VideoProjection;Lcom/oculus/video/projection/VideoProjection;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/Video;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    if-ne v0, v1, :cond_5

    return-object p0

    .line 220
    :cond_5
    invoke-virtual {p1}, Lcom/oculus/video/projection/VideoProjection;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_6

    return-object p0

    .line 226
    :cond_6
    invoke-direct {p0}, Lcom/oculus/video/Video;->clearProjectionMetadata()V

    .line 228
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 229
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 233
    :cond_7
    iput-object p1, p0, Lcom/oculus/video/Video;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    return-object p0
.end method

.method public setSubtitleMimeTypes(Ljava/util/Collection;)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p1, "SubtitleMimeTypes"

    invoke-virtual {p0, p1, v0}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setSubtitleTracks(Lorg/json/JSONObject;)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "SubtitleTracks"

    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setVideoMimeType(Ljava/lang/String;)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "VideoMimeType"

    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public setVideoRendererName(Ljava/lang/String;)Lcom/oculus/video/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "VideoRendererName"

    .line 162
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/Video;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method
