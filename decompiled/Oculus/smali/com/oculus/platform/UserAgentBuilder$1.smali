.class final Lcom/oculus/platform/UserAgentBuilder$1;
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
    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    const-string v0, "FBAN"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$1;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v0, "FBAV"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$1;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v0, "FBDV"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$1;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "FBCR"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$1;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "FBLC"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$1;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "FBSV"

    invoke-virtual {p0, v0}, Lcom/oculus/platform/UserAgentBuilder$1;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method
