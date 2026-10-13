.class Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;
.super Ljava/lang/Object;
.source "BugReporterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vrbugreporter/BugReporterService;->onHandleRequest(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Landroid/content/Intent;Lcom/oculus/horizon/vrbugreporter/BugReport;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    iput-object p2, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 265
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->val$intent:Landroid/content/Intent;

    const-string v2, "AddVisionLogs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$000(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Z)V

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-virtual {v1}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-virtual {v2}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getLogFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$200(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    invoke-static {v0, v3}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$000(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Z)V

    .line 277
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    invoke-static {v1}, Lcom/oculus/horizon/vrbugreporter/PackageUtil;->describeInstalledPackages(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReport;->setPackages(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->recordDetails()V

    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-static {v0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$300(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Lcom/oculus/horizon/vrbugreporter/BugReport;)V

    .line 283
    :cond_0
    return-void

    .line 273
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    invoke-static {v1, v3}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$000(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Z)V

    throw v0
.end method
