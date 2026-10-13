.class public Lcom/oculus/browser/acra/OculusBrowserACRAClient;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final OPT_OUT_PREFERENCE:Ljava/lang/String; = "telemetryOptedOut"

.field public static final SLEEP_TIME:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "OculusBrowserACRAClient"


# instance fields
.field public mACRAInitWorker:Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

.field public mACRASenderWorker:Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;

.field public mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public mLastCheckTime:Ljava/util/Date;

.field public mLastReportCount:I


# direct methods
.method public constructor <init>(Lcom/oculus/browser/acra/reporter/ReportsCrashes;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4
    new-instance v0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;-><init>(Lcom/oculus/browser/acra/OculusBrowserACRAClient;Lcom/oculus/browser/acra/reporter/ReportsCrashes;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mACRAInitWorker:Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic access$002(Lcom/oculus/browser/acra/OculusBrowserACRAClient;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mLastReportCount:I

    return p1
.end method

.method public static synthetic access$102(Lcom/oculus/browser/acra/OculusBrowserACRAClient;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mLastCheckTime:Ljava/util/Date;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/oculus/browser/acra/OculusBrowserACRAClient;Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->acquireWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oculus/browser/acra/OculusBrowserACRAClient;)Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mACRAInitWorker:Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

    return-object p0
.end method

.method private acquireWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    .line 1
    new-instance v0, Lcom/oculus/browser/acra/util/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lcom/oculus/browser/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.WAKE_LOCK"

    .line 2
    invoke-virtual {v0, v1}, Lcom/oculus/browser/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "power"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "ACRA:wakelock"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-wide/16 v0, 0x3e8

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-object p1
.end method


# virtual methods
.method public getLastReportCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mLastReportCount:I

    return v0
.end method

.method public getLastScanTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mLastCheckTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isScanInProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mACRASenderWorker:Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "OculusBrowserACRAClient"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mACRAInitWorker:Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x7d0

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mACRAInitWorker:Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "acra worker thread is still alive, we haven\'t init our crash reporting logic so we can\'t handle this exception."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mACRAInitWorker:Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

    invoke-virtual {v1}, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->errorReporter()Lcom/oculus/browser/acra/ErrorReporter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/oculus/browser/acra/ErrorReporter;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Failed to handle uncaught exception"

    .line 9
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    iget-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 11
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4
    throw v0
.end method

.method public uploadCrashReports()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->isScanInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OculusBrowserACRAClient"

    const-string v1, "Already trying to send crash reports."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/oculus/browser/Preferences;->getInstance()Lcom/oculus/browser/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "telemetryOptedOut"

    invoke-virtual {v0, v2, v1}, Lcom/oculus/browser/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iput v1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mLastReportCount:I

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mLastCheckTime:Ljava/util/Date;

    .line 6
    new-instance v0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;

    invoke-direct {v0, p0}, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;-><init>(Lcom/oculus/browser/acra/OculusBrowserACRAClient;)V

    iput-object v0, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->mACRASenderWorker:Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
