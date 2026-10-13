.class public Lcom/facebook/rti/push/service/FbnsRegisterRequest;
.super Ljava/lang/Object;
.source "FbnsRegisterRequest.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsRegisterRequest;->mPackageName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/facebook/rti/push/service/FbnsRegisterRequest;->mAppId:Ljava/lang/String;

    .line 27
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
    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    const-string v1, "pkg_name"

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsRegisterRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "appid"

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsRegisterRequest;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
