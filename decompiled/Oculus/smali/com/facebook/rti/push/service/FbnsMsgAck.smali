.class public Lcom/facebook/rti/push/service/FbnsMsgAck;
.super Ljava/lang/Object;
.source "FbnsMsgAck.java"


# instance fields
.field private mAppId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNotifId:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mResult:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mNotifId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mToken:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mAppId:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mPackageName:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mResult:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 44
    return-void
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
    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    const-string v1, "nid"

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mNotifId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string/jumbo v1, "t"

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "aid"

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "pn"

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string/jumbo v1, "r"

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsMsgAck;->mResult:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
