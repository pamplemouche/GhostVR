.class public Lcom/oculus/modules/GraphQLPrefetch;
.super Ljava/lang/Object;
.source "GraphQLPrefetch.java"

# interfaces
.implements Lcom/oculus/device/AccessTokenForwarder$IListener;


# static fields
.field private static MODULE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private mAccessToken:Ljava/lang/String;

.field private mClient:Lokhttp3/OkHttpClient;

.field private mCompletedPrefetchResponses:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/utils/GraphQLPrefetchQuery;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribedTo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/oculus/modules/GraphQLPrefetch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/GraphQLPrefetch;->TAG:Ljava/lang/String;

    .line 33
    const-class v0, Lcom/oculus/modules/GraphQLPrefetch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/GraphQLPrefetch;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/oculus/modules/GraphQLPrefetch;->mClient:Lokhttp3/OkHttpClient;

    .line 36
    iput-object v0, p0, Lcom/oculus/modules/GraphQLPrefetch;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/oculus/modules/GraphQLPrefetch;->mAccessToken:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/modules/GraphQLPrefetch;->mSubscribedTo:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/GraphQLPrefetch;->mCompletedPrefetchResponses:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 54
    iput-object p1, p0, Lcom/oculus/modules/GraphQLPrefetch;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/oculus/device/AccessTokenForwarder;->getInstance()Lcom/oculus/device/AccessTokenForwarder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/device/AccessTokenForwarder;->addListener(Lcom/oculus/device/AccessTokenForwarder$IListener;)V

    .line 56
    invoke-direct {p0}, Lcom/oculus/modules/GraphQLPrefetch;->createHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/GraphQLPrefetch;->mClient:Lokhttp3/OkHttpClient;

    .line 57
    invoke-virtual {p0}, Lcom/oculus/modules/GraphQLPrefetch;->getQueries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/GraphQLPrefetch;->mQueries:Ljava/util/List;

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/oculus/modules/GraphQLPrefetch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/modules/GraphQLPrefetch;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/GraphQLPrefetch;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/modules/GraphQLPrefetch;->getJSONString(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/modules/GraphQLPrefetch;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/GraphQLPrefetch;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/modules/GraphQLPrefetch;->mCompletedPrefetchResponses:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private createHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    .prologue
    .line 61
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v2, Lcom/oculus/device/APIInterceptor;

    iget-object v3, p0, Lcom/oculus/modules/GraphQLPrefetch;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oculus/device/APIInterceptor;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 64
    .local v0, "client":Lokhttp3/OkHttpClient;
    return-object v0
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "onSubscribed"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object v0
.end method

.method private final fetchQueries()V
    .locals 6

    .prologue
    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oculus/modules/GraphQLPrefetch;->mQueries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/oculus/modules/GraphQLPrefetch;->mQueries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/utils/GraphQLPrefetchQuery;

    invoke-virtual {v3}, Lcom/oculus/utils/GraphQLPrefetchQuery;->getDocId()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "docId":Ljava/lang/String;
    iget-object v3, p0, Lcom/oculus/modules/GraphQLPrefetch;->mQueries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/utils/GraphQLPrefetchQuery;

    invoke-virtual {v3}, Lcom/oculus/utils/GraphQLPrefetchQuery;->getVariables()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "variables":Ljava/lang/String;
    sget-object v3, Lcom/oculus/modules/GraphQLPrefetch;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetching query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcom/oculus/modules/GraphQLPrefetch;->mClient:Lokhttp3/OkHttpClient;

    iget-object v4, p0, Lcom/oculus/modules/GraphQLPrefetch;->mAccessToken:Ljava/lang/String;

    new-instance v5, Lcom/oculus/modules/GraphQLPrefetch$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/oculus/modules/GraphQLPrefetch$1;-><init>(Lcom/oculus/modules/GraphQLPrefetch;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v0, v2, v4, v5}, Lcom/oculus/panellib/GraphQLUtil;->query(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/panellib/GraphQLUtil$Result;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "docId":Ljava/lang/String;
    .end local v2    # "variables":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getJSONString(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "variables"    # Ljava/lang/String;
    .param p3, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 173
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "docId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v2, "variables"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    if-eqz p3, :cond_0

    .line 179
    const-string v2, "response"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, "exception":Lorg/json/JSONException;
    sget-object v2, Lcom/oculus/modules/GraphQLPrefetch;->TAG:Ljava/lang/String;

    const-string v3, "Failed to add strings to JSONObject!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method private final pushPrefetchQueries()V
    .locals 8

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 96
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oculus/modules/GraphQLPrefetch;->mQueries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 97
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v2, "entry":Lorg/json/JSONObject;
    const-string v5, "docId"

    iget-object v4, p0, Lcom/oculus/modules/GraphQLPrefetch;->mQueries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/utils/GraphQLPrefetchQuery;

    invoke-virtual {v4}, Lcom/oculus/utils/GraphQLPrefetchQuery;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v5, "variables"

    iget-object v4, p0, Lcom/oculus/modules/GraphQLPrefetch;->mQueries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/utils/GraphQLPrefetchQuery;

    invoke-virtual {v4}, Lcom/oculus/utils/GraphQLPrefetchQuery;->getVariables()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "entry":Lorg/json/JSONObject;
    :cond_0
    iget-wide v4, p0, Lcom/oculus/modules/GraphQLPrefetch;->RVRCtxTag:J

    const-string v6, "onGetPrefetchQueries"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/oculus/modules/GraphQLPrefetch;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :goto_1
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/oculus/modules/GraphQLPrefetch;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to encode JSON for getPrefetchQueries "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-wide v4, p0, Lcom/oculus/modules/GraphQLPrefetch;->RVRCtxTag:J

    const-string v6, "onGetPrefetchQueries"

    const-string v7, "[]"

    invoke-static {v4, v5, v6, v7}, Lcom/oculus/modules/GraphQLPrefetch;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/oculus/modules/GraphQLPrefetch;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/utils/GraphQLPrefetchQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/oculus/utils/GraphQLPrefetchQuery;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onGetAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oculus/modules/GraphQLPrefetch;->mAccessToken:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/oculus/modules/GraphQLPrefetch;->fetchQueries()V

    .line 83
    return-void
.end method

.method public final onSubscribed()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/modules/GraphQLPrefetch;->mSubscribedTo:Z

    .line 88
    invoke-direct {p0}, Lcom/oculus/modules/GraphQLPrefetch;->pushPrefetchQueries()V

    .line 89
    invoke-virtual {p0}, Lcom/oculus/modules/GraphQLPrefetch;->tryPushPrefetchResponses()V

    .line 90
    return-void
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public final tryPushPrefetchResponses()V
    .locals 4

    .prologue
    .line 112
    iget-boolean v1, p0, Lcom/oculus/modules/GraphQLPrefetch;->mSubscribedTo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/modules/GraphQLPrefetch;->mCompletedPrefetchResponses:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    return-void

    .line 116
    :cond_1
    sget-object v1, Lcom/oculus/modules/GraphQLPrefetch;->TAG:Ljava/lang/String;

    const-string v2, "Pushing prefetch responses"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/oculus/modules/GraphQLPrefetch;->mCompletedPrefetchResponses:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/oculus/modules/GraphQLPrefetch;->mCompletedPrefetchResponses:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 122
    iget-wide v2, p0, Lcom/oculus/modules/GraphQLPrefetch;->RVRCtxTag:J

    const-string v1, "onGetPrefetchResponse"

    invoke-static {v2, v3, v1, v0}, Lcom/oculus/modules/GraphQLPrefetch;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    sget-object v1, Lcom/oculus/modules/GraphQLPrefetch;->TAG:Ljava/lang/String;

    const-string v2, "Failed to send response!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
