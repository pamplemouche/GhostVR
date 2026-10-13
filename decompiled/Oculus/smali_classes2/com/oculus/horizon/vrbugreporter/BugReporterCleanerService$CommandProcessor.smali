.class final Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;
.super Landroid/os/AsyncTask;
.source "BugReporterCleanerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;
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
.field final synthetic this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->findAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 36
    const/4 v0, 0x6

    const/4 v1, -0x7

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    move v1, v2

    move v3, v2

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 39
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/vrbugreporter/BugReport;

    .line 40
    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 42
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "could not delete bug report %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v6, v7, v8}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    if-nez v0, :cond_3

    .line 53
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "job completed, removed %d report(s)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;

    invoke-static {v1}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->access$100(Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;)Landroid/app/job/JobParameters;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 57
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
