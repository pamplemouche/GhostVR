.class public Lcom/oculus/browser/StoryLogging;
.super Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/OVRServiceManager$Listener;


# static fields
.field public static final CTA_CLICK:Ljava/lang/String; = "CTA_CLICK"

.field public static final ENDPOINT:Ljava/lang/String; = "https://graph.oculus.com/graphql"

.field public static final INPUT:Ljava/lang/String; = "{  \"input\": {  \"client_mutation_id\": \"%s\",  \"feedback\": \"%s\",  \"story_infos\": [      %s    ]  }}"

.field public static final INPUT_ITEM:Ljava/lang/String; = "{  \"story_id\": \"%s\",  \"trace_id\": \"%s\",  \"index\": \"%s\"}"

.field public static final MUTATION:Ljava/lang/String; = "mutation meh($input: RegisterRankingEventData!) {  register_ranking_event(data: $input) {    viewer {      user {         id       }    }  }}"

.field public static final SHELF_RENDERED:Ljava/lang/String; = "SHELF_RENDERED"

.field public static final STATIC_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "StoryLogging"

.field public static final TILE_RENDERED:Ljava/lang/String; = "TILE_RENDERED"

.field public static mInstance:Lcom/oculus/browser/StoryLogging;


# instance fields
.field public LOCK:Ljava/lang/Object;

.field public mAccessToken:Ljava/lang/String;

.field public mClickQueue:Ljava/util/HashSet;

.field public mImpressionQueue:Ljava/util/HashSet;

.field public mRequestPending:Z

.field public mShelfImpressionQueue:Ljava/util/HashSet;

.field public mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/browser/StoryLogging;->STATIC_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/browser/FacebookUrlRequestService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/StoryLogging;->LOCK:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/StoryLogging;->mClickQueue:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/StoryLogging;->mImpressionQueue:Ljava/util/HashSet;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/StoryLogging;->mShelfImpressionQueue:Ljava/util/HashSet;

    .line 6
    invoke-static {p0}, Lcom/oculus/browser/OVRServiceManager;->addListener(Lcom/oculus/browser/OVRServiceManager$Listener;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/oculus/browser/StoryLogging;->mRequestPending:Z

    .line 8
    iput-object p1, p0, Lcom/oculus/browser/StoryLogging;->mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;

    .line 9
    invoke-virtual {p1, p0}, Lcom/oculus/browser/FacebookUrlRequestService;->setDelegate(Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;)V

    return-void
.end method

.method public static getInstance()Lcom/oculus/browser/StoryLogging;
    .locals 3

    .line 1
    sget-object v0, Lcom/oculus/browser/StoryLogging;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/oculus/browser/StoryLogging;->mInstance:Lcom/oculus/browser/StoryLogging;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/oculus/browser/StoryLogging;

    new-instance v2, Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-direct {v2}, Lcom/oculus/browser/FacebookUrlRequestService;-><init>()V

    invoke-direct {v1, v2}, Lcom/oculus/browser/StoryLogging;-><init>(Lcom/oculus/browser/FacebookUrlRequestService;)V

    sput-object v1, Lcom/oculus/browser/StoryLogging;->mInstance:Lcom/oculus/browser/StoryLogging;

    .line 4
    :cond_0
    sget-object v1, Lcom/oculus/browser/StoryLogging;->mInstance:Lcom/oculus/browser/StoryLogging;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/oculus/browser/StoryLogging;->getInstance()Lcom/oculus/browser/StoryLogging;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oculus/browser/StoryLogging;->queueLogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lcom/oculus/browser/StoryLogging;->getInstance()Lcom/oculus/browser/StoryLogging;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oculus/browser/StoryLogging;->flushQueues()V

    return-void
.end method


# virtual methods
.method public flushQueues()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/StoryLogging;->mRequestPending:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/StoryLogging;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/oculus/browser/StoryLogging;->mClickQueue:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/browser/StoryLogging;->mImpressionQueue:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/browser/StoryLogging;->mShelfImpressionQueue:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/oculus/browser/StoryLogging;->mRequestPending:Z

    .line 6
    iget-object v1, p0, Lcom/oculus/browser/StoryLogging;->mClickQueue:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "CTA_CLICK"

    .line 7
    iget-object v2, p0, Lcom/oculus/browser/StoryLogging;->mClickQueue:Ljava/util/HashSet;

    invoke-virtual {p0, v1, v2}, Lcom/oculus/browser/StoryLogging;->postLogEvent(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oculus/browser/StoryLogging;->mClickQueue:Ljava/util/HashSet;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/oculus/browser/StoryLogging;->mImpressionQueue:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "TILE_RENDERED"

    .line 10
    iget-object v2, p0, Lcom/oculus/browser/StoryLogging;->mImpressionQueue:Ljava/util/HashSet;

    invoke-virtual {p0, v1, v2}, Lcom/oculus/browser/StoryLogging;->postLogEvent(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 11
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oculus/browser/StoryLogging;->mImpressionQueue:Ljava/util/HashSet;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/oculus/browser/StoryLogging;->mShelfImpressionQueue:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "SHELF_RENDERED"

    .line 13
    iget-object v2, p0, Lcom/oculus/browser/StoryLogging;->mShelfImpressionQueue:Ljava/util/HashSet;

    invoke-virtual {p0, v1, v2}, Lcom/oculus/browser/StoryLogging;->postLogEvent(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oculus/browser/StoryLogging;->mShelfImpressionQueue:Ljava/util/HashSet;

    .line 15
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_0
    return-void
.end method

.method public onAccessTokenReceived(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/StoryLogging;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public onAccessTokenRequestFailed()V
    .locals 0

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "StoryLogging"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/oculus/browser/StoryLogging;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/oculus/browser/StoryLogging;->mRequestPending:Z

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/oculus/browser/StoryLogging;->flushQueues()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postLogEvent(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 10

    const-string v0, "UTF-8"

    const-string v1, "StoryLogging"

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/browser/StoryLogging$StoryInfo;

    .line 3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    const-string v8, ","

    .line 4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v8, "{  \"story_id\": \"%s\",  \"trace_id\": \"%s\",  \"index\": \"%s\"}"

    new-array v7, v7, [Ljava/lang/Object;

    .line 5
    iget-object v9, v3, Lcom/oculus/browser/StoryLogging$StoryInfo;->storyId:Ljava/lang/String;

    aput-object v9, v7, v6

    iget-object v6, v3, Lcom/oculus/browser/StoryLogging$StoryInfo;->traceId:Ljava/lang/String;

    aput-object v6, v7, v5

    iget v3, v3, Lcom/oculus/browser/StoryLogging$StoryInfo;->index:I

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    .line 7
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, "{  \"input\": {  \"client_mutation_id\": \"%s\",  \"feedback\": \"%s\",  \"story_infos\": [      %s    ]  }}"

    new-array v3, v7, [Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    aput-object p1, v3, v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://graph.oculus.com/graphql?access_token="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/browser/StoryLogging;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&doc="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mutation meh($input: RegisterRankingEventData!) {  register_ranking_event(data: $input) {    viewer {      user {         id       }    }  }}"

    .line 11
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&variables="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/oculus/browser/StoryLogging;->mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/oculus/browser/FacebookUrlRequestService;->makeAsyncHttpRequest(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Failed to encode url: "

    .line 14
    invoke-static {p2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public queueLogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "CTA_CLICK"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/StoryLogging;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/oculus/browser/StoryLogging;->mClickQueue:Ljava/util/HashSet;

    new-instance v1, Lcom/oculus/browser/StoryLogging$StoryInfo;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/oculus/browser/StoryLogging$StoryInfo;-><init>(Lcom/oculus/browser/StoryLogging;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const-string v0, "TILE_RENDERED"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/oculus/browser/StoryLogging;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_1
    iget-object p1, p0, Lcom/oculus/browser/StoryLogging;->mImpressionQueue:Ljava/util/HashSet;

    new-instance v1, Lcom/oculus/browser/StoryLogging$StoryInfo;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/oculus/browser/StoryLogging$StoryInfo;-><init>(Lcom/oculus/browser/StoryLogging;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const-string v0, "SHELF_RENDERED"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/oculus/browser/StoryLogging;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_2
    iget-object p1, p0, Lcom/oculus/browser/StoryLogging;->mShelfImpressionQueue:Ljava/util/HashSet;

    new-instance v1, Lcom/oculus/browser/StoryLogging$StoryInfo;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/oculus/browser/StoryLogging$StoryInfo;-><init>(Lcom/oculus/browser/StoryLogging;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    :goto_0
    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 13
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Feedback must be CTA_CLICK, TILE_RENDERED, or SHELF_RENDERED: "

    invoke-static {p3, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
