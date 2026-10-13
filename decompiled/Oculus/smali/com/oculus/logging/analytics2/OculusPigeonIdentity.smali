.class public Lcom/oculus/logging/analytics2/OculusPigeonIdentity;
.super Lcom/facebook/analytics2/logger/PigeonIdentity;
.source "OculusPigeonIdentity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AvoidSubclassingIssue"
    }
.end annotation


# instance fields
.field private final mOculusAccessToken:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/facebook/analytics2/logger/PigeonIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p3, p0, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;->mOculusAccessToken:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static forOculusUser(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/analytics2/OculusPigeonIdentity;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 52
    :cond_0
    new-instance v0, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;

    const-string v1, "0"

    const-string v2, "0"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;

    invoke-direct {v0, p0, p0, p1}, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getBatchLevelFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string/jumbo v1, "uid"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "oculus_userid"

    iget-object v2, p0, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "app_uid"

    iget-object v2, p0, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "oculus_access_token"

    iget-object v2, p0, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;->mOculusAccessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object v0
.end method
