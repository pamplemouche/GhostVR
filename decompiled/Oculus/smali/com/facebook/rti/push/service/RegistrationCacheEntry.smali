.class public Lcom/facebook/rti/push/service/RegistrationCacheEntry;
.super Ljava/lang/Object;
.source "RegistrationCacheEntry.java"


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mInvalid:Z

.field public mPackageName:Ljava/lang/String;

.field public mTime:Ljava/lang/Long;

.field public mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mAppId:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mPackageName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mToken:Ljava/lang/String;

    .line 29
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mTime:Ljava/lang/Long;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mInvalid:Z

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    invoke-direct {v0}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;-><init>()V

    .line 49
    if-nez p0, :cond_0

    .line 58
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mAppId:Ljava/lang/String;

    .line 54
    const-string v2, "pkg_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mPackageName:Ljava/lang/String;

    .line 55
    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mToken:Ljava/lang/String;

    .line 56
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mTime:Ljava/lang/Long;

    .line 57
    const-string v2, "invalid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mInvalid:Z

    goto :goto_0
.end method


# virtual methods
.method public serialize()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v1, "pkg_name"

    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mTime:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "invalid"

    iget-boolean v2, p0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mInvalid:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
