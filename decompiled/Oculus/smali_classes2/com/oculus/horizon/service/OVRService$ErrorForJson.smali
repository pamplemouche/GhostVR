.class Lcom/oculus/horizon/service/OVRService$ErrorForJson;
.super Lcom/oculus/horizon/service/OVRService$BaseForJson;
.source "OVRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/OVRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorForJson"
.end annotation


# instance fields
.field public final error:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 1378
    const-string v0, "service_error"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/oculus/horizon/service/OVRService$BaseForJson;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Lcom/oculus/horizon/service/OVRService$1;)V

    .line 1379
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1700()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oculus/horizon/service/OVRService;->access$1800(Landroid/os/Bundle;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/OVRService$ErrorForJson;->error:Ljava/util/Map;

    .line 1380
    return-void
.end method
