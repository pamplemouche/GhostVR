.class Lcom/oculus/horizon/service/OVRService$RequestForJson;
.super Lcom/oculus/horizon/service/OVRService$BaseForJson;
.source "OVRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/OVRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestForJson"
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 1355
    const-string v0, "service_request"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/oculus/horizon/service/OVRService$BaseForJson;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Lcom/oculus/horizon/service/OVRService$1;)V

    .line 1356
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Ljava/lang/Class;Lcom/oculus/horizon/service/OVRService$1;)V
    .locals 0

    .prologue
    .line 1353
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/service/OVRService$RequestForJson;-><init>(Landroid/os/Bundle;Ljava/lang/Class;)V

    return-void
.end method
