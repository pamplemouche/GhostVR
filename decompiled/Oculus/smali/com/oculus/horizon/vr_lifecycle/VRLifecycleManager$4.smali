.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$4;
.super Ljava/lang/Object;
.source "VRLifecycleManager.java"

# interfaces
.implements Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;


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


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$4;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMountStatusChanged(Z)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$4;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->notifyClientsHeadsetMountStateChanged(Z)V

    .line 118
    return-void
.end method
