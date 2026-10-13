.class final Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$1;
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
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    const-string v0, "com.facebook.services.dev"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$1;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v0, "com.facebook.services"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$1;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
