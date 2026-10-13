.class final Lcom/oculus/horizon/service/OVRService$1;
.super Ljava/util/HashSet;
.source "OVRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/OVRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 91
    const-string v0, "access_token"

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service/OVRService$1;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method
