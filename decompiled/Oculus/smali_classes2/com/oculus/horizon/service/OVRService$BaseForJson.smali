.class abstract Lcom/oculus/horizon/service/OVRService$BaseForJson;
.super Ljava/lang/Object;
.source "OVRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/OVRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseForJson"
.end annotation


# instance fields
.field public final args:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "args"
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

.field public final eventType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_type"
    .end annotation
.end field

.field public final resultClass:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_class"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    iput-object p1, p0, Lcom/oculus/horizon/service/OVRService$BaseForJson;->eventType:Ljava/lang/String;

    .line 1348
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/OVRService$BaseForJson;->resultClass:Ljava/lang/String;

    .line 1349
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1700()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oculus/horizon/service/OVRService;->access$1800(Landroid/os/Bundle;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/OVRService$BaseForJson;->args:Ljava/util/Map;

    .line 1350
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;Lcom/oculus/horizon/service/OVRService$1;)V
    .locals 0

    .prologue
    .line 1336
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/service/OVRService$BaseForJson;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Class;)V

    return-void
.end method
