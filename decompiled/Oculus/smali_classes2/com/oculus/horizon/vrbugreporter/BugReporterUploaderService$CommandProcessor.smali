.class final Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;
.super Landroid/os/AsyncTask;
.source "BugReporterUploaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CommandProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->findAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 34
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%d bug reports found"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v1, v2

    move v3, v4

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 39
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/vrbugreporter/BugReport;

    .line 40
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "uploading bug report %s"

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->isComplete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 45
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "skipped incomplete bug report %s"

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 55
    goto :goto_0

    .line 46
    :cond_1
    iget-object v6, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;

    invoke-static {v6}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->access$100(Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)Lcom/oculus/horizon/vrbugreporter/BugReporterMethods;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/oculus/horizon/vrbugreporter/BugReporterMethods;->sendBugReport(Lcom/oculus/horizon/vrbugreporter/BugReport;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 47
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "could not upload bug report %s"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v3, v6, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 50
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "could not delete bug report %s"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v3, v6, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    .line 51
    goto :goto_1

    .line 57
    :cond_3
    if-nez v0, :cond_4

    .line 60
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bug reports uploaded, success: %s"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;

    invoke-static {v1}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->access$200(Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)Landroid/app/job/JobParameters;

    move-result-object v1

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1, v4}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 64
    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    move v4, v2

    .line 61
    goto :goto_2
.end method
