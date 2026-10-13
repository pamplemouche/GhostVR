.class public Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;
.super Ljava/lang/Object;
.source "AnalyticsHttpClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessToken:Ljava/lang/String;

.field private final mAnalyticsService:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsService;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->mAccessToken:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->mAnalyticsService:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsService;

    .line 24
    iput-object p3, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->mUserAgent:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private compressJSONObject(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    sget-object v0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->TAG:Ljava/lang/String;

    const-string v1, "Json data cannot be null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 52
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 55
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 56
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 57
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public postAnalyticsRequest(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v0, "method"

    const-string v2, "logging.clientevent"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "format"

    const-string v2, "json"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "access_token"

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->mAccessToken:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :try_start_0
    const-string v0, "message"

    invoke-direct {p0, p1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->compressJSONObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "compressed"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->mAnalyticsService:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsService;

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsService;->log(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v2, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->TAG:Ljava/lang/String;

    const-string v3, "Unable to compress message to Json object, using original message"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 41
    const-string v0, "message"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
