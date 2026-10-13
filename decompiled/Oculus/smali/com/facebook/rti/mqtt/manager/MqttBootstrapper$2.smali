.class Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$2;
.super Ljava/lang/Object;
.source "MqttBootstrapper.java"

# interfaces
.implements Lcom/facebook/rti/common/util/NonInjectProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->bootstrap(Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;Ljava/util/List;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$2;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->screenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper$2;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
