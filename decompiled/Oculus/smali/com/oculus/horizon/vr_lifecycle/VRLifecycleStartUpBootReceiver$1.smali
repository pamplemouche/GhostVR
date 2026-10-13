.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver$1;
.super Ljava/lang/Object;
.source "VRLifecycleStartUpBootReceiver.java"

# interfaces
.implements Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to mark session end."

    invoke-static {v0, p1, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;

    invoke-static {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->access$100(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;)Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;->schedule()V

    .line 58
    return-void
.end method

.method public onNoSessionInfo()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No session end to mark."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onSuccess(Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleResponse;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Marked session end."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onTooRecent()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Session ended too recently."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;

    invoke-static {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->access$100(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;)Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;->schedule()V

    .line 47
    return-void
.end method
