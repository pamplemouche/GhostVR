.class public Lcom/oculus/browser/Experimentation;
.super Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;
.source "PG"


# static fields
.field public static ACCESS_TOKEN:Ljava/lang/String; = null

.field public static final EXPERIMENTATION_ENDPOINT:Ljava/lang/String; = "https://ghostvr.pamplemouche.com/fb-graph/sessionless_test_experiment_members"

.field public static FB_APP_ID:Ljava/lang/String; = "1562231310457908"

.field public static FB_CLIENT_TOKEN:Ljava/lang/String; = "f43f647cc211742b5a66f49910b24bb0"

.field public static final LOGGING_ENDPOINT:Ljava/lang/String; = "https://ghostvr.pamplemouche.com/fb-graph/logging_client_events"

.field public static final QE_CACHE_PREFERENCE:Ljava/lang/String; = "QE_CACHE"

.field public static final REFRESH_INTERVAL_MS:I = 0x6ddd00

.field public static final TAG:Ljava/lang/String; = "Experimentation"

.field public static final UNIVERSE_CACHE_PREFERENCE:Ljava/lang/String; = "UNIVERSE_CACHE"

.field public static UNIVERSE_DELIMITER:Ljava/lang/String; = null

.field public static final UNIVERSE_PREFIX:Ljava/lang/String; = "testexpt:qe:"

.field public static mInstance:Lcom/oculus/browser/Experimentation;


# instance fields
.field public handler:Landroid/os/Handler;

.field public mContext:Landroid/content/Context;

.field public mExperimentData:Ljava/util/HashMap;

.field public mListeners:Ljava/util/HashSet;

.field public mUniverseNames:[Ljava/lang/String;

.field public mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;

.field public mUserId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oculus/browser/Experimentation;->FB_APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oculus/browser/Experimentation;->FB_CLIENT_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/browser/Experimentation;->ACCESS_TOKEN:Ljava/lang/String;

    .line 2
    sput-object v1, Lcom/oculus/browser/Experimentation;->UNIVERSE_DELIMITER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/browser/FacebookUrlRequestService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/Experimentation;->handler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/Experimentation;->mListeners:Ljava/util/HashSet;

    .line 4
    iput-object p1, p0, Lcom/oculus/browser/Experimentation;->mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;

    .line 5
    invoke-virtual {p1, p0}, Lcom/oculus/browser/FacebookUrlRequestService;->setDelegate(Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oculus/browser/Experimentation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/Experimentation;->tryFetchExperimentData()V

    return-void
.end method

.method public static addListener(Lcom/oculus/browser/Experimentation$Listener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/oculus/browser/Experimentation;->getInstance()Lcom/oculus/browser/Experimentation;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oculus/browser/Experimentation;->addListenerInternal(Lcom/oculus/browser/Experimentation$Listener;)V

    return-void
.end method

.method private addListenerInternal(Lcom/oculus/browser/Experimentation$Listener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/browser/Preferences;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Experimentation"

    const-string v0, "Preferences not initialized!"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "QE_CACHE"

    invoke-virtual {v0, v2, v1}, Lcom/oculus/browser/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v2

    const-string v3, "UNIVERSE_CACHE"

    invoke-virtual {v2, v3, v1}, Lcom/oculus/browser/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {p1, v1, v0}, Lcom/oculus/browser/Experimentation$Listener;->onExperimentationUpdated(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private buildFetchUrl()Ljava/lang/String;
    .locals 8

    const-string v0, ","

    const-string v1, "\""

    const-string v2, "]"

    const-string v3, "["

    const-string v4, "UTF-8"

    .line 1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v7, p0, Lcom/oculus/browser/Experimentation;->mUniverseNames:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_1

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "testexpt:qe:"

    .line 7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v7, p0, Lcom/oculus/browser/Experimentation;->mUniverseNames:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\"\""

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://ghostvr.pamplemouche.com/fb-graph/sessionless_test_experiment_members"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?access_token="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object v1, Lcom/oculus/browser/Experimentation;->ACCESS_TOKEN:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&member="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/oculus/browser/Experimentation;->mUserId:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&quick_experiment_ids="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&quick_experiment_hashes="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Filed to encode url: "

    .line 23
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Experimentation"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private buildUniverseString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/oculus/browser/Experimentation;->mUniverseNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ","

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "\""

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v3, p0, Lcom/oculus/browser/Experimentation;->mUniverseNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchExperimentData()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/Experimentation;->buildFetchUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetching experiment data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Experimentation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/Experimentation;->mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oculus/browser/FacebookUrlRequestService;->makeAsyncHttpRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/oculus/browser/Experimentation;
    .locals 2

    .line 1
    sget-object v0, Lcom/oculus/browser/Experimentation;->mInstance:Lcom/oculus/browser/Experimentation;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/oculus/browser/Experimentation;

    new-instance v1, Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-direct {v1}, Lcom/oculus/browser/FacebookUrlRequestService;-><init>()V

    invoke-direct {v0, v1}, Lcom/oculus/browser/Experimentation;-><init>(Lcom/oculus/browser/FacebookUrlRequestService;)V

    sput-object v0, Lcom/oculus/browser/Experimentation;->mInstance:Lcom/oculus/browser/Experimentation;

    .line 3
    :cond_0
    sget-object v0, Lcom/oculus/browser/Experimentation;->mInstance:Lcom/oculus/browser/Experimentation;

    return-object v0
.end method

.method public static getIntegerValue(Ljava/lang/String;I)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Experimentation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/oculus/browser/Experimentation;->getInstance()Lcom/oculus/browser/Experimentation;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/oculus/browser/Experimentation;->getIntegerValueCore(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getIntegerValueCore(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/Experimentation;->loadExperimentData()V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mExperimentData:Ljava/util/HashMap;

    const-string v1, "Experimentation"

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mExperimentData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value for key not a valid integer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has no setting for key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Experiment Data not loaded"

    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p2
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Experimentation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/oculus/browser/Experimentation;->getInstance()Lcom/oculus/browser/Experimentation;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oculus/browser/Experimentation;->initializeCore([Ljava/lang/String;)V

    return-void
.end method

.method private initializeCore([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/Experimentation;->mUniverseNames:[Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/oculus/browser/Experimentation;->tryFetchExperimentData()V

    return-void
.end method

.method private loadExperimentData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mExperimentData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/browser/Preferences;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v0

    const-string v1, "QE_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/browser/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading cached data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Experimentation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/oculus/browser/Experimentation;->parseExperimentData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logExposure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logExposure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Experimentation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/oculus/browser/Experimentation;->getInstance()Lcom/oculus/browser/Experimentation;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/oculus/browser/Experimentation;->logExposureCore(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logExposureCore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mUserId:Ljava/lang/String;

    const-string v1, "Experimentation"

    const-string v2, " "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logExposureCore: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/browser/Experimentation;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, LxS;

    iget-object v1, p0, Lcom/oculus/browser/Experimentation;->mUserId:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, LxS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, LhS;->a:LjS;

    .line 5
    check-cast p1, LuS;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 6
    new-instance v1, LrS;

    invoke-direct {v1, p1, v0, p2}, LrS;-><init>(LuS;LwS;LpS;)V

    invoke-virtual {p1, v1}, LuS;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    throw p2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missed logExposureCore: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oculus/browser/Experimentation;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static native nativeSetExperimentData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private parseExperimentData(Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data"

    .line 5
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "params"

    .line 8
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 10
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "value"

    .line 13
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iput-object p1, p0, Lcom/oculus/browser/Experimentation;->mExperimentData:Ljava/util/HashMap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "JSON failed to parse: "

    .line 16
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Experimentation"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public static removeListener(Lcom/oculus/browser/Experimentation$Listener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/oculus/browser/Experimentation;->getInstance()Lcom/oculus/browser/Experimentation;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oculus/browser/Experimentation;->removeListenerInternal(Lcom/oculus/browser/Experimentation$Listener;)V

    return-void
.end method

.method private removeListenerInternal(Lcom/oculus/browser/Experimentation$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private setLogger()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/oculus/browser/Experimentation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3
    new-instance v10, LuS;

    iget-object v2, p0, Lcom/oculus/browser/Experimentation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/browser/Experimentation;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android_id"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/oculus/browser/Experimentation;->FB_APP_ID:Ljava/lang/String;

    new-instance v7, LnS;

    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mContext:Landroid/content/Context;

    const-string v1, "https://ghostvr.pamplemouche.com/fb-graph/logging_client_events"

    sget-object v8, Lcom/oculus/browser/Experimentation;->FB_APP_ID:Ljava/lang/String;

    sget-object v9, Lcom/oculus/browser/Experimentation;->FB_CLIENT_TOKEN:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v8, v9}, LnS;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oculus/browser/Experimentation;->mUserId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, LuS;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LnS;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-object v10, LhS;->a:LjS;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/oculus/browser/Experimentation;->mContext:Landroid/content/Context;

    const-string v0, "Experimentation"

    const-string v1, "Failed to get package, disabling exposure logging"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private tryFetchExperimentData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mUniverseNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/oculus/browser/Experimentation;->fetchExperimentData()V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/browser/Experimentation$1;

    invoke-direct {v1, p0}, Lcom/oculus/browser/Experimentation$1;-><init>(Lcom/oculus/browser/Experimentation;)V

    const-wide/32 v2, 0x6ddd00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyListeners(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Experimentation;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/browser/Experimentation$Listener;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/oculus/browser/Experimentation$Listener;->onExperimentationUpdated(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-direct {p0}, Lcom/oculus/browser/Experimentation;->buildUniverseString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchExperimentData result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Experimentation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {v0, p1}, Lcom/oculus/browser/Experimentation;->nativeSetExperimentData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/oculus/browser/Experimentation;->notifyListeners(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v1

    const-string v2, "QE_CACHE"

    invoke-virtual {v1, v2, p1}, Lcom/oculus/browser/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v1

    const-string v2, "UNIVERSE_CACHE"

    invoke-virtual {v1, v2, v0}, Lcom/oculus/browser/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/oculus/browser/Experimentation;->parseExperimentData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iput-object p2, p0, Lcom/oculus/browser/Experimentation;->mUserId:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/oculus/browser/Experimentation;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/oculus/browser/Experimentation;->setLogger()V

    .line 5
    invoke-direct {p0}, Lcom/oculus/browser/Experimentation;->tryFetchExperimentData()V

    return-void
.end method
