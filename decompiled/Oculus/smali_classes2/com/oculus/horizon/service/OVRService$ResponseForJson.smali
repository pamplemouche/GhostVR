.class Lcom/oculus/horizon/service/OVRService$ResponseForJson;
.super Lcom/oculus/horizon/service/OVRService$BaseForJson;
.source "OVRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/OVRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseForJson"
.end annotation


# instance fields
.field public final elapsedTimeMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "elapsed_time_ms"
    .end annotation
.end field

.field public final response:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response"
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
.method private constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/Class;)V
    .locals 3

    .prologue
    .line 1367
    const-string v0, "service_response"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p5, v1}, Lcom/oculus/horizon/service/OVRService$BaseForJson;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Lcom/oculus/horizon/service/OVRService$1;)V

    .line 1368
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1700()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oculus/horizon/service/OVRService;->access$1800(Landroid/os/Bundle;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/OVRService$ResponseForJson;->response:Ljava/util/Map;

    .line 1369
    iput-wide p3, p0, Lcom/oculus/horizon/service/OVRService$ResponseForJson;->elapsedTimeMs:J

    .line 1370
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/Class;Lcom/oculus/horizon/service/OVRService$1;)V
    .locals 1

    .prologue
    .line 1359
    invoke-direct/range {p0 .. p5}, Lcom/oculus/horizon/service/OVRService$ResponseForJson;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/Class;)V

    return-void
.end method
