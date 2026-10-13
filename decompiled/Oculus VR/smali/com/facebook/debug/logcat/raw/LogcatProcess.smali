.class public Lcom/facebook/debug/logcat/raw/LogcatProcess;
.super Ljava/lang/Object;
.source "LogcatProcess.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-java.util.ArrayList._Constructor",
        "BadMethodUse-java.lang.Thread.start",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/debug/logcat/raw/LogcatProcess$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcess:Ljava/lang/Process;

.field private volatile mState:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/debug/logcat/raw/LogcatProcess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mParameters:Ljava/util/List;

    .line 42
    sget-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->BORN:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    iput-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mState:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/debug/logcat/raw/LogcatProcess;)Ljava/lang/Process;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mProcess:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/debug/logcat/raw/LogcatProcess;)Lcom/facebook/debug/logcat/raw/LogcatProcess$State;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mState:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/debug/logcat/raw/LogcatProcess;Lcom/facebook/debug/logcat/raw/LogcatProcess$State;)Lcom/facebook/debug/logcat/raw/LogcatProcess$State;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mState:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    return-object p1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mState:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    sget-object v1, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->RUNNING:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/facebook/debug/logcat/raw/LogcatProcess;->kill()V

    .line 109
    sget-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->TAG:Ljava/lang/String;

    const-string v1, "child process still alive when finalize() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getOutput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mState:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    sget-object v1, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->RUNNING:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    if-eq v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stop non-running logcat process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 96
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->KILLED:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    iput-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mState:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    .line 97
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 100
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mState:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    sget-object v1, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->BORN:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    if-eq v0, v1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start logcat process twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 50
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->RUNNING:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    iput-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mState:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    .line 51
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const-string v1, "logcat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mParameters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :try_start_2
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/debug/logcat/raw/LogcatProcess;->mProcess:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/debug/logcat/raw/LogcatProcess$1;

    invoke-direct {v1, p0}, Lcom/facebook/debug/logcat/raw/LogcatProcess$1;-><init>(Lcom/facebook/debug/logcat/raw/LogcatProcess;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to start logcat process"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
