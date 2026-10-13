.class final Lcom/oculus/platform/UserAgentBuilder$2;
.super Ljava/util/ArrayList;
.source "UserAgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/UserAgentBuilder;
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
    .line 44
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    const-string v0, "FBBD"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$2;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "FBBV"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$2;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "FBCA"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$2;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v0, "FBMF"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$2;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v0, "FBPN"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$2;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "PLATFORM"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$2;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "ENGINE"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$2;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method
