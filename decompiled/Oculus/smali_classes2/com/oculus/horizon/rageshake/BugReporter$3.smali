.class Lcom/oculus/horizon/rageshake/BugReporter$3;
.super Ljava/lang/Object;
.source "BugReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/rageshake/BugReporter;->cleanUpReportFolder(Lcom/oculus/horizon/rageshake/BugReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/rageshake/BugReporter;

.field final synthetic val$report:Lcom/oculus/horizon/rageshake/BugReport;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/rageshake/BugReporter;Lcom/oculus/horizon/rageshake/BugReport;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReporter$3;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    iput-object p2, p0, Lcom/oculus/horizon/rageshake/BugReporter$3;->val$report:Lcom/oculus/horizon/rageshake/BugReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReporter$3;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    invoke-static {v0}, Lcom/oculus/horizon/rageshake/BugReporter;->access$400(Lcom/oculus/horizon/rageshake/BugReporter;)Lcom/oculus/horizon/rageshake/BugReporterFileUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/BugReporter$3;->val$report:Lcom/oculus/horizon/rageshake/BugReport;

    iget-object v1, v1, Lcom/oculus/horizon/rageshake/BugReport;->reportDirectoryUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/rageshake/BugReporterFileUtil;->deleteDirectory(Landroid/net/Uri;)V

    .line 229
    return-void
.end method
