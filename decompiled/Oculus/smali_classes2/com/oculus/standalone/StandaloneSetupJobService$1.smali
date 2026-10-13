.class Lcom/oculus/standalone/StandaloneSetupJobService$1;
.super Ljava/lang/Object;
.source "StandaloneSetupJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneSetupJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneSetupJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    iput-object p2, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$1000(Lcom/oculus/standalone/StandaloneSetupJobService;)Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    .line 103
    invoke-static {v1}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$200(Lcom/oculus/standalone/StandaloneSetupJobService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->installStandAloneSetupAppsAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;-><init>(Lcom/oculus/standalone/StandaloneSetupJobService$1;)V

    .line 104
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    .line 145
    return-void
.end method
