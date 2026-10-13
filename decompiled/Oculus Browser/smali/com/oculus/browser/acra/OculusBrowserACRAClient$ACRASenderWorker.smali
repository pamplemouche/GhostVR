.class public Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/acra/OculusBrowserACRAClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;->this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "OculusBrowserACRAClient"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;->this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    iget-object v3, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;->this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-static {v3}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->access$300(Lcom/oculus/browser/acra/OculusBrowserACRAClient;)Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->applicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->access$200(Lcom/oculus/browser/acra/OculusBrowserACRAClient;Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;->this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-static {v2}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->access$300(Lcom/oculus/browser/acra/OculusBrowserACRAClient;)Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ACRAInitWorker is still alive, sleeping for 2 seconds to let it finish."

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7d0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;->this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    iget-object v3, p0, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRASenderWorker;->this$0:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-static {v3}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->access$300(Lcom/oculus/browser/acra/OculusBrowserACRAClient;)Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/browser/acra/OculusBrowserACRAClient$ACRAInitWorker;->errorReporter()Lcom/oculus/browser/acra/ErrorReporter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/browser/acra/ErrorReporter;->checkReportsOnApplicationStart()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->access$002(Lcom/oculus/browser/acra/OculusBrowserACRAClient;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "Failed to send crash reports"

    .line 7
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    :goto_1
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void

    :goto_2
    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    throw v0
.end method
