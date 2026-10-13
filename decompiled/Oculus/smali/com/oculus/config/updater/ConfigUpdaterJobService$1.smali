.class Lcom/oculus/config/updater/ConfigUpdaterJobService$1;
.super Ljava/lang/Object;
.source "ConfigUpdaterJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/config/updater/ConfigUpdaterJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/updater/ConfigUpdaterJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/oculus/config/updater/ConfigUpdaterJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1;->this$0:Lcom/oculus/config/updater/ConfigUpdaterJobService;

    iput-object p2, p0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1;->this$0:Lcom/oculus/config/updater/ConfigUpdaterJobService;

    invoke-static {v0}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->access$200(Lcom/oculus/config/updater/ConfigUpdaterJobService;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/oculus/config/updater/ConfigUpdater;->fetchAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/config/updater/ConfigUpdaterJobService$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/config/updater/ConfigUpdaterJobService$1$1;-><init>(Lcom/oculus/config/updater/ConfigUpdaterJobService$1;)V

    .line 57
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 70
    return-void
.end method
