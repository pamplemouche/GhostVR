.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$3;
.super Ljava/lang/Object;
.source "VRLifecycleManager.java"

# interfaces
.implements Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$DoSomething;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->notifyClientsVRSessionStarted()V
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


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$3;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doSomethingQuicklyUnderMutex(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;)V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVRSessionStarted"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;->onVRSessionStarted()V

    .line 105
    return-void
.end method

.method public bridge synthetic doSomethingQuicklyUnderMutex(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$3;->doSomethingQuicklyUnderMutex(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;)V

    return-void
.end method
