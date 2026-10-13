.class public Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;
.super Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;
.source "FacebookLiveStreamingManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

.field private mStreamID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->FACEBOOK:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    invoke-direct {p0, p2, v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;)V

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->jsonFromHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearLiveVideoMinutiae()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mStreamID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mAccessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v1, "clearLiveVideoMinutiae"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mStreamID:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getGraphUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?og_action_type_id=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$2;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$2;-><init>(Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    sget-object v1, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to clear live video minutiae, error:"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static createGraphURL(Lcom/oculus/horizon/service_media/LiveStreamingLocation;Lcom/oculus/horizon/service_media/LiveStreamingAudience;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->TIMELINE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    if-ne p0, v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://ghostvr.pamplemouche.com/fb-graph/me/live_videos?privacy=%7B%22value%22%3A%22"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-virtual {p1}, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->toGraphAPIString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%22%7D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    .line 313
    :cond_0
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->GROUP:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    if-ne p0, v0, :cond_1

    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 315
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "graph.facebook.com"

    .line 316
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "live_videos"

    .line 318
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_1
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->PAGE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    if-ne p0, v0, :cond_2

    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 324
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "graph.facebook.com"

    .line 325
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "live_videos"

    .line 327
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->getCurrentFBAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v1, "No access token"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getGraphUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://ghostvr.pamplemouche.com/fb-graph/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPageAccessToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 338
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    .line 340
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "graph.facebook.com"

    .line 341
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "fields"

    const-string v3, "access_token"

    .line 343
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->jsonFromHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 347
    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    :goto_1
    sget-object v2, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not get page access token while starting livestream"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 348
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getStartRenderingCommentsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.home.START_RENDERING_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v1, "overlays_type"

    const-string v2, "livestreaming_comments"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "broadcast_id"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mStreamID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    return-object v0
.end method

.method private getStreamID(Lcom/oculus/horizon/service_media/LiveStreamingLocation;Lcom/oculus/horizon/service_media/LiveStreamingAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 363
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->createGraphURL(Lcom/oculus/horizon/service_media/LiveStreamingLocation;Lcom/oculus/horizon/service_media/LiveStreamingAudience;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    sget-object v2, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->PAGE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    if-ne p1, v2, :cond_1

    .line 366
    invoke-direct {p0, p4, p5}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getPageAccessToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 368
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->jsonFromHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 373
    :goto_0
    if-eqz v0, :cond_0

    .line 374
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    :cond_0
    :goto_1
    return-object v1

    .line 371
    :cond_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p5}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->jsonFromHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    :goto_2
    sget-object v2, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not get streamID while starting livestream"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 376
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private getVideoInformation()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mStreamID:Ljava/lang/String;

    .line 271
    invoke-static {v2}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getGraphUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?fields=total_views,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "comments.limit(0).summary(total_count),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reactions.limit(0).summary(total_count)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mAccessToken:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->jsonFromHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 279
    const-string v2, "total_views"

    .line 280
    const-string v2, "total_count"

    .line 283
    const-string v2, "total_views"

    const-string v3, "total_views"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "comments"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "summary"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 287
    const-string v3, "comment_count"

    const-string v4, "total_count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string v2, "reactions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "summary"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 291
    const-string v2, "reaction_count"

    const-string v3, "total_count"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    sget-object v1, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private jsonFromHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 257
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OAuth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 260
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 262
    sget-object v1, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private updateLiveVideoMinutiae(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->clearLiveVideoMinutiae()V

    .line 223
    :goto_0
    return-void

    .line 197
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 203
    sget-object v1, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLiveVideoMinutiae for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mStreamID:Ljava/lang/String;

    .line 206
    invoke-static {v2}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getGraphUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?og_action_type_id=1136670953035860"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&og_phrase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :try_start_1
    iget-object v1, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$1;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$1;-><init>(Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    sget-object v1, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to clear live video minutiae, error:"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    sget-object v1, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public handleUnsupportedApplication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->clearLiveVideoMinutiae()V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->setIsLivestreaming(Z)V

    .line 134
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 52
    const-string v0, "location_selector"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v1, "Missing Location parameter"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    const-string v0, "microphone_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v1, "Missing MicrophoneStatus parameter"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const-string v0, "location_selector"

    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->TIMELINE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    .line 62
    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 63
    invoke-static {v0}, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->fromValue(I)Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    move-result-object v1

    .line 65
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->TIMELINE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    if-ne v1, v0, :cond_2

    const-string v0, "audience_selector"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v1, "Missing Audience parameter"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "audience_selector"

    sget-object v2, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->ONLY_ME:Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    .line 72
    invoke-virtual {v2}, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->getValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    invoke-static {v0}, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->fromValue(I)Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    move-result-object v2

    .line 75
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->GROUP:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    if-ne v1, v0, :cond_3

    const-string v0, "group_selector"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v1, "Missing Group id parameter"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_3
    const-string v0, "group_selector"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->PAGE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    if-ne v1, v0, :cond_4

    const-string v0, "page_selector"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v1, "Missing Page id parameter"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_4
    const-string v0, "page_selector"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    .line 90
    if-nez v5, :cond_5

    .line 91
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v1, "No access token. Is your FB connected?"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_FB_CONNECT:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move-object v0, p0

    .line 95
    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getStreamID(Lcom/oculus/horizon/service_media/LiveStreamingLocation;Lcom/oculus/horizon/service_media/LiveStreamingAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-nez v0, :cond_6

    .line 97
    sget-object v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v1, "No stream id. Check your internet?"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_SESSION_ID:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 102
    :cond_6
    sget-object v1, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->TAG:Ljava/lang/String;

    const-string v2, "initializeMWSConnection with %s : %s"

    invoke-static {v1, v2, v0, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v1, v5, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->initializeMWSConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-object v5, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mAccessToken:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mStreamID:Ljava/lang/String;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->setIsInitialized(Z)V

    move-object v0, v6

    .line 109
    goto/16 :goto_0
.end method

.method public startStreaming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startLiveStreaming(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p2, p3}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->updateLiveVideoMinutiae(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->setIsLivestreaming(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getCommentsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getStartRenderingCommentsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    :cond_0
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public stopStreaming(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getIsLivestreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getVideoInformation()Landroid/os/Bundle;

    move-result-object v0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->stopLiveStreaming()V

    .line 168
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->clearLiveVideoMinutiae()V

    .line 169
    iget-object v1, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oculus.vrshell.home.STOP_RENDERING_OVERLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    return-object v0
.end method

.method public updateCommentVisibility(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0, p2}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->setCommentsVisible(Z)V

    .line 150
    if-eqz p2, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->getStartRenderingCommentsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.home.STOP_RENDERING_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
