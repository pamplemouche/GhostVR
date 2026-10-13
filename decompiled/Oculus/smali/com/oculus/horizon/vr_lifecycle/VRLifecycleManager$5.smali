.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$5;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "VRLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->oneTimeSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

.field final synthetic val$sessionBeginAction:Ljava/lang/String;

.field final synthetic val$sessionEndAction:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$5;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    iput-object p3, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$5;->val$sessionEndAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$5;->val$sessionBeginAction:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$5;->val$sessionEndAction:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive screen off"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$5;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->notifyClientsVRSessionEnded()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$5;->val$sessionBeginAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$5;->val$sessionBeginAction:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive screen on"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$5;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->notifyClientsVRSessionStarted()V

    goto :goto_0
.end method
