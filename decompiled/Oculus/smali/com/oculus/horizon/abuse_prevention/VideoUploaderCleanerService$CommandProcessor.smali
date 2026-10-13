.class final Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;
.super Landroid/os/AsyncTask;
.source "VideoUploaderCleanerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;
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
.field final synthetic this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doInBackground start"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;

    invoke-static {v0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getAllRoots(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;

    iget-object v1, v1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->mVideoUploaderCleanerServiceManager:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;

    invoke-virtual {v1, p0, v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->clean(Landroid/os/AsyncTask;[Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;

    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;

    invoke-static {v1}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->access$100(Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;)Landroid/app/job/JobParameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 45
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
