.class public Lcom/oculus/logging/analytics2/OculusPigeonIdentity;
.super Lcom/facebook/analytics2/logger/PigeonIdentity;
.source "OculusPigeonIdentity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AvoidSubclassingIssue"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/facebook/analytics2/logger/PigeonIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static forOculusUser(Ljava/lang/String;)Lcom/oculus/logging/analytics2/OculusPigeonIdentity;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 31
    new-instance p0, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;

    const-string v0, "0"

    invoke-direct {p0, v0, v0}, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;

    invoke-direct {v0, p0, p0}, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBatchLevelFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    const-string v2, "0"

    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;->userId:Ljava/lang/String;

    const-string v2, "oculus_userid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
