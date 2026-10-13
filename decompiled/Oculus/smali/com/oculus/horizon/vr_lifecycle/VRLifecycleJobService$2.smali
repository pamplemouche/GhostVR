.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;
.super Ljava/lang/Object;
.source "VRLifecycleJobService.java"

# interfaces
.implements Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->markSessionEnd(Landroid/app/job/JobParameters;)V
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
    .line 67
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    iput-object p2, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 85
    invoke-static {}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError(ApiError = %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->access$100(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    .line 87
    return-void
.end method

.method public onNoSessionInfo()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->access$200(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;)V

    .line 71
    return-void
.end method

.method public onSuccess(Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleResponse;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->access$200(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;)V

    .line 81
    return-void
.end method

.method public onTooRecent()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->access$200(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;)V

    .line 76
    return-void
.end method
