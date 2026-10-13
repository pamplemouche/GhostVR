.class final Lcom/oculus/horizon/service/OVRService$2;
.super Ljava/util/HashMap;
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
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 99
    const-string v0, "com.oculus.vrshell"

    const-string v1, "2.0.35"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/service/OVRService$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "com.oculus.vrshell.home"

    const-string v1, "3.29.0"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/service/OVRService$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "com.oculus.systemactivities"

    const-string v1, "1.14.3"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/service/OVRService$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "com.oculus.systemdriver"

    const-string v1, "1.6.3"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/service/OVRService$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method
