.class public Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;
.super Lcom/oculus/android/exoplayer2/drm/HttpMediaDrmCallback;
.source "OculusHttpMediaDrmCallback.java"


# static fields
.field private static final FACEBOOK_WIDEVINE_PROXY:Ljava/lang/String; = "https://www.facebook.com/video/drm/"

.field private static final VENUES_WIDEVINE_PROXY:Ljava/lang/String; = "https://ghostvr.pamplemouche.com/oculus/"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, p2}, Lcom/oculus/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method private getResponseString(Ljava/lang/String;Lcom/oculus/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-interface {p2}, Lcom/oculus/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 70
    iget-object v0, p0, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;->dataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;->executePost(Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    .line 72
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 66
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public executeKeyRequest(Ljava/util/UUID;Lcom/oculus/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-interface {p2}, Lcom/oculus/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-boolean v1, p0, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    :cond_1
    const-string v1, "https://ghostvr.pamplemouche.com/oculus/"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Unexpected uuid."

    if-eqz v1, :cond_2

    .line 39
    sget-object v1, Lcom/oculus/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1, v3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 41
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p0, v0, p2}, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;->getResponseString(Ljava/lang/String;Lcom/oculus/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "license"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "https://www.facebook.com/video/drm/"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    sget-object v1, Lcom/oculus/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1, v3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 46
    invoke-direct {p0, v0, p2}, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;->getResponseString(Ljava/lang/String;Lcom/oculus/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    .line 48
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oculus/android/exoplayer2/drm/HttpMediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/oculus/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object p1

    return-object p1
.end method
