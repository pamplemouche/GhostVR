.class public Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field public mErrorReporter:Lcom/oculus/browser/acra/ErrorReporter;

.field public mIsInternalBuild:Z

.field public mOculusUserId:Ljava/lang/String;

.field public mReportURL:Ljava/lang/String;

.field public mReporter:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

.field public final synthetic this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/acra/OculusBrowserACRAClient;Lcom/oculus/browser/acra/reporter/ReportsCrashes;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->access$002(Lcom/oculus/browser/acra/OculusBrowserACRAClient;I)I

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->access$102(Lcom/oculus/browser/acra/OculusBrowserACRAClient;Ljava/util/Date;)Ljava/util/Date;

    .line 4
    iput-object p2, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mReporter:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    .line 5
    iput-object p3, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mReportURL:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mIsInternalBuild:Z

    .line 7
    iput-object p5, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mOculusUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mReporter:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    invoke-interface {v0}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public errorReporter()Lcom/oculus/browser/acra/ErrorReporter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mErrorReporter:Lcom/oculus/browser/acra/ErrorReporter;

    return-object v0
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-virtual {p0}, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->applicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->access$200(Lcom/oculus/browser/acra/OculusBrowserACRAClient;Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mReporter:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    iget-object v2, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mReportURL:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mIsInternalBuild:Z

    invoke-static {v1, v2, v3}, Lcom/oculus/browser/acra/ACRA;->init(Lcom/oculus/browser/acra/reporter/ReportsCrashes;Ljava/lang/String;Z)Lcom/oculus/browser/acra/ErrorReporter;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mErrorReporter:Lcom/oculus/browser/acra/ErrorReporter;

    const-string v2, "oc_user_id"

    .line 3
    iget-object v3, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->mOculusUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/oculus/browser/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    throw v1
.end method
