.class Lcom/facebook/rti/push/service/FbnsService$4;
.super Ljava/lang/Object;
.source "FbnsService.java"

# interfaces
.implements Lcom/facebook/rti/common/util/NonInjectProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/push/service/FbnsService;->bootstrapService()Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/rti/common/util/NonInjectProvider",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/push/service/FbnsService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsService;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService$4;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 349
    const-wide/16 v0, 0x0

    sget-object v2, Lcom/facebook/rti/mqtt/capability/MqttCapability;->SHARED_SECRET:Lcom/facebook/rti/mqtt/capability/MqttCapability;

    .line 350
    invoke-static {v2}, Lcom/facebook/rti/common/util/BitmaskEnumUtil;->toFlagValue(Ljava/lang/Enum;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 349
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService$4;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
