.class final Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;
.super Ljava/util/ArrayList;
.source "ServiceLeaderElectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    const-string v0, "com.facebook.rti.fbnsdemo"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v0, "com.facebook.katana"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v0, "com.facebook.wakizashi"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v0, "com.facebook.lite"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v0, "com.facebook.orca"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v0, "com.instagram.android"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "com.instagram.direct"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "com.instagram.android.preload"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "com.facebook.alohaservices.push"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "com.facebook.mlite"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "com.facebook.mlite_debug"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "com.facebook.mlite_inhouse"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "com.facebook.aloha.push"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
