.class Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;
.super Ljava/util/TimerTask;
.source "MountStatusPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->start(Landroid/content/Context;Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;

.field final synthetic val$callback:Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;

    iput-object p2, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;->val$callback:Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    const-string/jumbo v0, "sys.hmt.mounted"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/util/system/SystemProps;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;

    iget-boolean v1, v1, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mLastMountStatus:Z

    if-eq v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;

    iput-boolean v0, v1, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mLastMountStatus:Z

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;->val$callback:Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;

    iget-boolean v1, v1, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mLastMountStatus:Z

    invoke-interface {v0, v1}, Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;->onMountStatusChanged(Z)V

    .line 40
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted %b"

    iget-object v2, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;

    iget-boolean v2, v2, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mLastMountStatus:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method
