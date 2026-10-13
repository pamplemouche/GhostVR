.class Lcom/oculus/horizon/legacy/social/MeManagerJobService$1;
.super Ljava/lang/Object;
.source "MeManagerJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/MeManagerJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/MeManagerJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/MeManagerJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/MeManagerJobService$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManagerJobService;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/MeManagerJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManagerJobService$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManagerJobService;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->access$200(Lcom/oculus/horizon/legacy/social/MeManagerJobService;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/legacy/social/MeManagerJobService$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/MeManagerJobService$1$1;-><init>(Lcom/oculus/horizon/legacy/social/MeManagerJobService$1;)V

    .line 42
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 58
    return-void
.end method
