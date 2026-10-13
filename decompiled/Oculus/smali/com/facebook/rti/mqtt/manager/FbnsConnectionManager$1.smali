.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$1;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;


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
    .line 196
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$1;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$1;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0, p1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$000(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Landroid/content/Intent;)V

    goto :goto_0
.end method
