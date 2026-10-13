.class Lcom/facebook/rti/push/service/FbnsService$8;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/push/service/FbnsService;

.field final synthetic val$connectionConfigManager:Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService$8;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    iput-object p2, p0, Lcom/facebook/rti/push/service/FbnsService$8;->val$connectionConfigManager:Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService$8;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$8;->val$connectionConfigManager:Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;->get()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsEndpoint:Ljava/lang/String;

    return-object v0
.end method
