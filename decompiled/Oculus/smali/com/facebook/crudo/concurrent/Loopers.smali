.class public final Lcom/facebook/crudo/concurrent/Loopers;
.super Ljava/lang/Object;
.source "Loopers.java"


# static fields
.field private static sNonUiThread:Landroid/os/Looper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAndStartNonUiThread()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NonUiThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized forNonUiThread()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/facebook/crudo/concurrent/Loopers;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/crudo/concurrent/Loopers;->sNonUiThread:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lcom/facebook/crudo/concurrent/Loopers;->createAndStartNonUiThread()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/facebook/crudo/concurrent/Loopers;->sNonUiThread:Landroid/os/Looper;

    .line 23
    :cond_0
    sget-object v0, Lcom/facebook/crudo/concurrent/Loopers;->sNonUiThread:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
