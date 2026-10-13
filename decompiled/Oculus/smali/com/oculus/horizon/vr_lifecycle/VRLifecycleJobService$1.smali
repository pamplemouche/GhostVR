.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;
.super Ljava/lang/Object;
.source "VRLifecycleJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    iput-object p2, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const v1, 0x6d002828

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->access$000(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;->val$params:Landroid/app/job/JobParameters;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown job id."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->access$100(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    goto :goto_0
.end method
