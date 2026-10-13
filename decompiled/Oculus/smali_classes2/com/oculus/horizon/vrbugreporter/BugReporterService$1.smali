.class Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;
.super Ljava/lang/Object;
.source "BugReporterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vrbugreporter/BugReporterService;->onHandleAddDetails(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Ljava/lang/String;Lcom/oculus/horizon/vrbugreporter/BugReport;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    iput-object p2, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    invoke-static {v0, v4}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$000(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Z)V

    .line 174
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logging started"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-virtual {v2}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getLogFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$200(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Ljava/lang/String;Ljava/io/File;)V

    .line 176
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logging ended"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getScreenshotFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 195
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "missing screenshot file for report %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->val$id:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-static {v0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$300(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Lcom/oculus/horizon/vrbugreporter/BugReport;)V

    .line 199
    :cond_1
    return-void
.end method
