.class Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;
.super Ljava/lang/Object;
.source "AnalyticsSession.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mBuildNumber:Ljava/lang/String;

.field private mCurrentBatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/common/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceIdProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookUserId:Ljava/lang/String;

.field private mSequence:I

.field private mSessionId:Ljava/util/UUID;

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mSequence:I

    .line 40
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public getCurrentBatch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/common/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mSequence:I

    return v0
.end method

.method public getSessionId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mSessionId:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mSessionId:Ljava/util/UUID;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mSessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mAppId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mAppVersion:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setBuildNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mBuildNumber:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setDeviceIdProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mDeviceIdProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 80
    return-void
.end method

.method public setFacebookUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mFacebookUserId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mTime:J

    .line 76
    return-void
.end method

.method public startNewBatch()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mSequence:I

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :try_start_0
    const-string/jumbo v0, "seq"

    iget v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mSequence:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v0, "time"

    iget-wide v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mTime:J

    invoke-static {v2, v3}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->formatServerTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v0, "app_id"

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v0, "app_ver"

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v0, "build_num"

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v0, "device_id"

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mDeviceIdProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v2}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v0, "session_id"

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mSessionId:Ljava/util/UUID;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v0, "uid"

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mFacebookUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 111
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    .line 113
    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    sget-object v1, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to serialize"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 120
    const-string v0, ""

    .line 122
    :goto_1
    return-object v0

    .line 115
    :cond_0
    :try_start_1
    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_1
    const-string v0, "log_type"

    const-string v2, "client_event"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
