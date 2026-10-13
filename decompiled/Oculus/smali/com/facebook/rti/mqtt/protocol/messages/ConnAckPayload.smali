.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;
.super Ljava/lang/Object;
.source "ConnAckPayload.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mConnectionKey:Ljava/lang/String;

.field public mConnectionSecret:Ljava/lang/String;

.field public mDeviceId:Ljava/lang/String;

.field public mDeviceSecret:Ljava/lang/String;

.field public mRefCode:Ljava/lang/String;

.field public mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mConnectionKey:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mConnectionSecret:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceId:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceSecret:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mRefCode:Ljava/lang/String;

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;-><init>()V

    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v2, "ck"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mConnectionKey:Ljava/lang/String;

    .line 53
    const-string v2, "cs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mConnectionSecret:Ljava/lang/String;

    .line 54
    const-string/jumbo v2, "sr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mSampleRate:I

    .line 55
    const-string v2, "di"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceId:Ljava/lang/String;

    .line 56
    const-string v2, "ds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceSecret:Ljava/lang/String;

    .line 57
    const-string/jumbo v2, "rc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mRefCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->TAG:Ljava/lang/String;

    const-string v2, "Failed to serialize ConnAckPayload"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;-><init>()V

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
    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    const-string v1, "ck"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mConnectionKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v1, "cs"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mConnectionSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v1, "di"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "ds"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v1, "sr"

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mSampleRate:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v1, "rc"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mRefCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->serialize()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->TAG:Ljava/lang/String;

    const-string v2, "failed to serialize"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 71
    const-string v0, ""

    goto :goto_0
.end method
