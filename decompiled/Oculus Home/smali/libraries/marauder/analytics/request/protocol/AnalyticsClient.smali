.class public Llibraries/marauder/analytics/request/protocol/AnalyticsClient;
.super Ljava/lang/Object;
.source "AnalyticsClient.java"


# static fields
.field public static final API_PARAM_API_KEY:Ljava/lang/String; = "api_key"

.field public static final API_PARAM_COMPRESSED:Ljava/lang/String; = "compressed"

.field public static final API_PARAM_MESSAGE:Ljava/lang/String; = "message"

.field public static final API_PARAM_METHOD:Ljava/lang/String; = "method"

.field public static final API_PARAM_SIGNATURE:Ljava/lang/String; = "sig"

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sInstance:Llibraries/marauder/analytics/request/protocol/AnalyticsClient;


# instance fields
.field private final mAnalyticsService:Llibraries/marauder/analytics/request/protocol/AnalyticsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;

    sput-object v0, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->TAG:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Llibraries/marauder/analytics/request/protocol/NativeAnalyticsService;

    invoke-direct {v0}, Llibraries/marauder/analytics/request/protocol/NativeAnalyticsService;-><init>()V

    iput-object v0, p0, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->mAnalyticsService:Llibraries/marauder/analytics/request/protocol/AnalyticsService;

    .line 31
    return-void
.end method

.method private static compressJSONObject(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "jsonData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 68
    .local v2, "gzipBuff":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .local v3, "os":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v3, v2}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 71
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 73
    .local v1, "buffer":[B
    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "data may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 91
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "charset may not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Llibraries/marauder/analytics/request/protocol/AnalyticsClient;
    .locals 2

    .prologue
    .line 34
    const-class v1, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->sInstance:Llibraries/marauder/analytics/request/protocol/AnalyticsClient;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;

    invoke-direct {v0}, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;-><init>()V

    sput-object v0, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->sInstance:Llibraries/marauder/analytics/request/protocol/AnalyticsClient;

    .line 37
    :cond_0
    sget-object v0, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->sInstance:Llibraries/marauder/analytics/request/protocol/AnalyticsClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public sendBatchLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "loginSecret"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v2, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 42
    .local v2, "params":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "api_key"

    invoke-virtual {v2, v4, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :try_start_0
    const-string v4, "message"

    invoke-static {p2}, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->compressJSONObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v4, "compressed"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v3, "signature":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    .local v1, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 46
    .end local v1    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "signature":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->TAG:Ljava/lang/Class;

    const-string v5, "failed to compress"

    invoke-static {v4, v5, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    const-string v4, "message"

    invoke-virtual {v2, v4, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "signature":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v4, "sig"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Llibraries/marauder/analytics/utils/hash/SecureHashUtil;->makeMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v4, p0, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->mAnalyticsService:Llibraries/marauder/analytics/request/protocol/AnalyticsService;

    invoke-interface {v4, p1, v2}, Llibraries/marauder/analytics/request/protocol/AnalyticsService;->log(Ljava/lang/String;Ljava/util/Map;)I

    move-result v4

    return v4
.end method
