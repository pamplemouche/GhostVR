.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$2;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$2;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$2;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$2;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getConnectTriggerReason()Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->kick(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V

    .line 231
    return-void
.end method
