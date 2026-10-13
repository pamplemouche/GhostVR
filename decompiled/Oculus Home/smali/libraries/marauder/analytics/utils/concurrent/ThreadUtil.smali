.class public Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibraries/marauder/analytics/utils/concurrent/ThreadUtil$ThreadUtilHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/utils/concurrent/ThreadUtil$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/utils/concurrent/ThreadUtil$1;

    .prologue
    .line 7
    invoke-direct {p0}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;-><init>()V

    return-void
.end method

.method private checkState(ZLjava/lang/String;)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method

.method public static getInstance()Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil$ThreadUtilHolder;->INSTANCE:Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;

    return-object v0
.end method


# virtual methods
.method public assertOnNonUiThread()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "This operation can\'t be run on UI thread."

    invoke-virtual {p0, v0}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;->assertOnNonUiThread(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public assertOnNonUiThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;->checkState(ZLjava/lang/String;)V

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public assertOnUiThread()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "This operation must be run on UI thread."

    invoke-virtual {p0, v0}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;->assertOnUiThread(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public assertOnUiThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;->isUiThread()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;->checkState(ZLjava/lang/String;)V

    .line 24
    return-void
.end method

.method public isUiThread()Z
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
