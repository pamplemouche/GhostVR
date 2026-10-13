.class public final Lcom/oculus/browser/acra/ErrorReporter$ReportsSenderWorker;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public exception:Ljava/lang/Throwable;

.field public final mReportTypesToSend:[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

.field public final synthetic this$0:Lcom/oculus/browser/acra/ErrorReporter;


# direct methods
.method public varargs constructor <init>(Lcom/oculus/browser/acra/ErrorReporter;[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/oculus/browser/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;

    .line 3
    iput-object p2, p0, Lcom/oculus/browser/acra/ErrorReporter$ReportsSenderWorker;->mReportTypesToSend:[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public start()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/oculus/browser/acra/ErrorReporter;

    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/oculus/browser/acra/ErrorReporter;

    invoke-static {v1}, Lcom/oculus/browser/acra/ErrorReporter;->access$000(Lcom/oculus/browser/acra/ErrorReporter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/browser/acra/ErrorReporter$ReportsSenderWorker;->mReportTypesToSend:[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/browser/acra/ErrorReporter;->checkAndSendReports(Landroid/content/Context;[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method
