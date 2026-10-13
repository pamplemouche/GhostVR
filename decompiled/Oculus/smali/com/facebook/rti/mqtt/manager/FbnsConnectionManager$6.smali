.class Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$6;
.super Landroid/content/BroadcastReceiver;
.source "FbnsConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->start()V
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
    .line 1615
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$6;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1618
    const-string v0, "FbnsConnectionManager"

    const-string/jumbo v1, "receiver/power_save_mode"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    if-nez p2, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$6;->this$0:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-static {v0, p2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->access$000(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;Landroid/content/Intent;)V

    goto :goto_0
.end method
