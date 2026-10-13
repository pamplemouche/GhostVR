.class public Lcom/oculus/browser/OculusExplore;
.super Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/OVRServiceManager$Listener;


# static fields
.field public static final APP_IMAGE_MEDIUM_SIZE:Ljava/lang/String; = "720x405"

.field public static final CACHE_LIFE:J = 0x1388L

.field public static final ENDPOINT:Ljava/lang/String; = "https://ghostvr.pamplemouche.com/oculus/graphql"

.field public static final LOCK:Ljava/lang/Object;

.field public static final NODE:Ljava/lang/String; = "id, trace_id,prime_render_info {  title,  image_click_info {    navigate_info {      location    }  },  image.size_tag(h192) {    uri  }}"

.field public static final TAG:Ljava/lang/String; = "OculusExplore"

.field public static final VIEWER:Ljava/lang/String; = "viewer() {  oculus_browser_new_tab {    edges {      node {id, trace_id,prime_render_info {  title,  image_click_info {    navigate_info {      location    }  },  image.size_tag(h192) {    uri  }}      }    }  }}"

.field public static mInstance:Lcom/oculus/browser/OculusExplore;


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mCache:Ljava/lang/String;

.field public mCacheTimestamp:J

.field public mJsonResponseCache:Ljava/lang/String;

.field public mListeners:Ljava/util/HashSet;

.field public mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/browser/OculusExplore;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/browser/FacebookUrlRequestService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/OculusExplore;->mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;

    .line 3
    invoke-virtual {p1, p0}, Lcom/oculus/browser/FacebookUrlRequestService;->setDelegate(Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;)V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oculus/browser/OculusExplore;->mListeners:Ljava/util/HashSet;

    .line 5
    invoke-static {p0}, Lcom/oculus/browser/OVRServiceManager;->addListener(Lcom/oculus/browser/OVRServiceManager$Listener;)V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/oculus/browser/OculusExplore;->mCacheTimestamp:J

    return-void
.end method

.method public static addListener(Lcom/oculus/browser/OculusExplore$Listener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/oculus/browser/OculusExplore;->getInstance()Lcom/oculus/browser/OculusExplore;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oculus/browser/OculusExplore;->addListenerInternal(Lcom/oculus/browser/OculusExplore$Listener;)V

    return-void
.end method

.method private addListenerInternal(Lcom/oculus/browser/OculusExplore$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OculusExplore;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/OculusExplore;->mJsonResponseCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/oculus/browser/OculusExplore$Listener;->onExploreUpdated(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/browser/OculusExplore;->fetchHomeFeed()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/oculus/browser/OculusExplore;
    .locals 3

    .line 1
    sget-object v0, Lcom/oculus/browser/OculusExplore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/oculus/browser/OculusExplore;->mInstance:Lcom/oculus/browser/OculusExplore;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-direct {v1}, Lcom/oculus/browser/FacebookUrlRequestService;-><init>()V

    .line 4
    new-instance v2, Lcom/oculus/browser/OculusExplore;

    invoke-direct {v2, v1}, Lcom/oculus/browser/OculusExplore;-><init>(Lcom/oculus/browser/FacebookUrlRequestService;)V

    sput-object v2, Lcom/oculus/browser/OculusExplore;->mInstance:Lcom/oculus/browser/OculusExplore;

    .line 5
    :cond_0
    sget-object v1, Lcom/oculus/browser/OculusExplore;->mInstance:Lcom/oculus/browser/OculusExplore;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeListener(Lcom/oculus/browser/OculusExplore$Listener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/oculus/browser/OculusExplore;->getInstance()Lcom/oculus/browser/OculusExplore;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oculus/browser/OculusExplore;->removeListenerInternal(Lcom/oculus/browser/OculusExplore$Listener;)V

    return-void
.end method

.method private removeListenerInternal(Lcom/oculus/browser/OculusExplore$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OculusExplore;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public fetchHomeFeed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OculusExplore;->mAccessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "{\"error\": \"No access token\"}"

    .line 2
    invoke-virtual {p0, v0}, Lcom/oculus/browser/OculusExplore;->notifyListeners(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/OculusExplore;->mCache:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/browser/OculusExplore;->mCacheTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/OculusExplore;->mCache:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/browser/OculusExplore;->onDataReceived(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://ghostvr.pamplemouche.com/oculus/graphql?access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/browser/OculusExplore;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "viewer() {  oculus_browser_new_tab {    edges {      node {id, trace_id,prime_render_info {  title,  image_click_info {    navigate_info {      location    }  },  image.size_tag(h192) {    uri  }}      }    }  }}"

    const-string v2, "UTF-8"

    .line 6
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/oculus/browser/OculusExplore;->mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oculus/browser/FacebookUrlRequestService;->makeAsyncHttpRequest(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to encode url: "

    .line 8
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OculusExplore"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyListeners(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OculusExplore;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/browser/OculusExplore$Listener;

    .line 2
    invoke-interface {v1, p1}, Lcom/oculus/browser/OculusExplore$Listener;->onExploreUpdated(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAccessTokenReceived(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/OculusExplore;->mAccessToken:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/OculusExplore;->fetchHomeFeed()V

    return-void
.end method

.method public onAccessTokenRequestFailed()V
    .locals 0

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "OculusExplore"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/oculus/browser/OculusExplore;->notifyListeners(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/oculus/browser/OculusExplore;->mCache:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/browser/OculusExplore;->mCacheTimestamp:J

    :cond_0
    return-void
.end method
