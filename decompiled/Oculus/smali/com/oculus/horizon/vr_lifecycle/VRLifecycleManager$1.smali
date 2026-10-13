.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$1;
.super Ljava/lang/Object;
.source "VRLifecycleManager.java"

# interfaces
.implements Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$DoSomething;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->notifyClientsHeadsetMountStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$DoSomething",
        "<",
        "Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

.field final synthetic val$isMounted:Z


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;Z)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    iput-boolean p2, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$1;->val$isMounted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doSomethingQuicklyUnderMutex(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;)V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$1;->val$isMounted:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHeadsetMounted"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;->onHeadsetMounted()V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHeadsetUnmounted"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;->onHeadsetUnmounted()V

    goto :goto_0
.end method

.method public bridge synthetic doSomethingQuicklyUnderMutex(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$1;->doSomethingQuicklyUnderMutex(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;)V

    return-void
.end method
