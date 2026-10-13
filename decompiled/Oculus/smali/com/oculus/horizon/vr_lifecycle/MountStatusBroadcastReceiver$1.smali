.class Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver$1;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "MountStatusBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->start(Landroid/content/Context;Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;

.field final synthetic val$callback:Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;[Ljava/lang/String;Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;

    iput-object p3, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver$1;->val$callback:Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "com.oculus.intent.action.MOUNT_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver$1;->val$callback:Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;

    invoke-interface {v1, v0}, Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;->onMountStatusChanged(Z)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown action: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
