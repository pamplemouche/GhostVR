.class public Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
.super Ljava/lang/Object;
.source "ExceptionHandlerManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_OOM_RESERVATION:I = 0x1000

.field public static final PRIORITY_EARLY:I = 0xa

.field public static final PRIORITY_LAST_RESORT:I = -0x186a0

.field public static final PRIORITY_LATE:I = -0xa

.field public static final PRIORITY_LATEST:I = -0x3e8

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_VERY_EARLY:I = 0x64

.field public static final PRIORITY_VERY_LATE:I = -0x64

.field private static final TAG:Ljava/lang/String;

.field private static sDontShutDownBecauseWeAreInAUnitTest:Z

.field private static sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sKillProcessSilentlyRunnable:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private volatile mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mOomReservation:[B
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mPrioritized:Z

.field private mStackTracer:Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mThereCanOnlyBeOneCrash:Ljava/lang/Object;

.field mWouldHaveShutDownIfNotInAUnitTest:Z
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 1
    .param p1, "oldHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "prioritized"    # Z

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mOomReservation:[B

    .line 39
    iput-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mStackTracer:Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mThereCanOnlyBeOneCrash:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mHandlerList:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 126
    iput-boolean p2, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mPrioritized:Z

    .line 127
    iput-object p1, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 128
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mOomReservation:[B

    .line 129
    return-void
.end method

.method public static declared-synchronized addExceptionHandler(Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;I)V
    .locals 2
    .param p0, "instance"    # Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    .param p1, "priority"    # I

    .prologue
    .line 90
    const-class v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->getInitializedInstance()Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->addHandler(Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v1

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized crashExplicitly(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    const-class v3, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    monitor-enter v3

    const/4 v0, 0x0

    .line 100
    .local v0, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_0
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->getInstance()Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    move-result-object v1

    .line 101
    .local v1, "instance":Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    if-eqz v1, :cond_0

    .line 102
    iget-object v0, v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 106
    :goto_0
    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v3

    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 99
    .end local v1    # "instance":Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getInitializedInstance()Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    .locals 3

    .prologue
    .line 70
    const-class v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    const-string v2, "ExceptionHandlerManager not explicitly initialized, using default mode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->init(Z)Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 74
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    const-class v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized handleThrowableAndTerminate(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    const-class v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->getInitializedInstance()Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v1

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Z)Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    .locals 5
    .param p0, "prioritized"    # Z

    .prologue
    .line 78
    const-class v2, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Already initialized!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 81
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializing exception handler manager, prioritized="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 83
    .local v0, "oldHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    invoke-direct {v1, v0, p0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    sput-object v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    .line 84
    sget-object v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 85
    sget-object v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1
.end method

.method private static killThisProcess()V
    .locals 3

    .prologue
    .line 235
    :try_start_0
    sget-object v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sKillProcessSilentlyRunnable:Ljava/lang/Runnable;

    .line 236
    .local v1, "killProcessRunnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 239
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    const/16 v2, 0xa

    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_1
    goto/32 :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "internalEx":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    .end local v0    # "internalEx":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 247
    .restart local v0    # "internalEx":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static logErrorDuringHandling(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "thrownDuringHandling"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error during exception handling"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    return-void
.end method

.method public static pleaseDontShutDownVMAfterRunningExceptionHandlersBecauseThisIsAUnitTest()V
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    .line 134
    return-void
.end method

.method public static declared-synchronized setCustomStackTracer(Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;)V
    .locals 2
    .param p0, "stackTracer"    # Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;

    .prologue
    .line 111
    const-class v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->getInitializedInstance()Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->setCustomStackTracerImpl(Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit v1

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setKillProcessSilentlyRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    sput-object p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sKillProcessSilentlyRunnable:Ljava/lang/Runnable;

    .line 63
    return-void
.end method


# virtual methods
.method declared-synchronized addHandler(Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;I)V
    .locals 3
    .param p1, "handler"    # Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    .param p2, "priority"    # I
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mHandlerList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v0, "newHandlerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;>;"
    new-instance v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;-><init>(Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$1;)V

    .line 142
    .local v1, "prioritizedHandler":Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;
    iput-object p1, v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->handler:Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;

    .line 143
    iput p2, v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->priority:I

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-boolean v2, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mPrioritized:Z

    if-eqz v2, :cond_0

    .line 151
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 153
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mHandlerList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 139
    .end local v0    # "newHandlerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;>;"
    .end local v1    # "prioritizedHandler":Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized setCustomStackTracerImpl(Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;)V
    .locals 1
    .param p1, "stackTracer"    # Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mStackTracer:Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v8, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mThereCanOnlyBeOneCrash:Ljava/lang/Object;

    monitor-enter v8

    .line 175
    const/16 v7, -0xa

    :try_start_0
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mOomReservation:[B

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "customStackTrace":Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
    iget-object v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mStackTracer:Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    .line 186
    :try_start_2
    iget-object v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mStackTracer:Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;

    invoke-interface {v7, p2}, Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;->collectStackTraceForException(Ljava/lang/Throwable;)Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 192
    :cond_0
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mHandlerList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    .local v1, "exceptionHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;>;"
    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "index":I
    :goto_2
    if-ltz v3, :cond_2

    .line 196
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;

    iget-object v2, v7, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->handler:Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 198
    .local v2, "handler":Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    :try_start_5
    invoke-interface {v2, p1, p2, v0}, Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;->handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 195
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 187
    .end local v1    # "exceptionHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;>;"
    .end local v2    # "handler":Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    .end local v3    # "index":I
    :catch_0
    move-exception v6

    .line 188
    .local v6, "thrownFromStackTracer":Ljava/lang/Throwable;
    :try_start_6
    sget-object v7, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    const-string v9, "Error during stack tracing!"

    invoke-static {v7, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 226
    .end local v0    # "customStackTrace":Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
    .end local v6    # "thrownFromStackTracer":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v7

    .line 199
    .restart local v0    # "customStackTrace":Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
    .restart local v1    # "exceptionHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;>;"
    .restart local v2    # "handler":Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    .restart local v3    # "index":I
    :catch_1
    move-exception v5

    .line 200
    .local v5, "thrownFromManagedHandler":Ljava/lang/Throwable;
    :try_start_7
    instance-of v7, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v7, :cond_1

    .line 201
    sget-object v7, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    const-string v9, "Error during handling OOM"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 209
    .end local v2    # "handler":Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    .end local v3    # "index":I
    .end local v5    # "thrownFromManagedHandler":Ljava/lang/Throwable;
    :catchall_1
    move-exception v7

    .line 210
    :try_start_8
    instance-of v9, p2, Lcom/facebook/common/exceptionhandler/ForceExitWithReasonException;

    if-eqz v9, :cond_7

    .line 211
    sget-object v9, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 218
    :goto_4
    :try_start_9
    sget-boolean v9, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v9, :cond_8

    .line 219
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 227
    :goto_5
    return-void

    .line 203
    .restart local v2    # "handler":Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    .restart local v3    # "index":I
    .restart local v5    # "thrownFromManagedHandler":Ljava/lang/Throwable;
    :cond_1
    :try_start_a
    invoke-static {v5}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 210
    .end local v2    # "handler":Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    .end local v5    # "thrownFromManagedHandler":Ljava/lang/Throwable;
    :cond_2
    :try_start_b
    instance-of v7, p2, Lcom/facebook/common/exceptionhandler/ForceExitWithReasonException;

    if-eqz v7, :cond_3

    .line 211
    sget-object v7, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 218
    :goto_6
    :try_start_c
    sget-boolean v7, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v7, :cond_4

    .line 219
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 213
    :cond_3
    :try_start_d
    iget-object v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v7, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    .line 215
    :catch_2
    move-exception v4

    .line 216
    .local v4, "thrownDuringHandling":Ljava/lang/Throwable;
    :try_start_e
    invoke-static {v4}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 218
    :try_start_f
    sget-boolean v7, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v7, :cond_5

    .line 219
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v8

    goto :goto_5

    .line 223
    .end local v4    # "thrownDuringHandling":Ljava/lang/Throwable;
    :cond_4
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    .line 226
    :goto_7
    monitor-exit v8

    goto :goto_5

    .line 223
    .restart local v4    # "thrownDuringHandling":Ljava/lang/Throwable;
    :cond_5
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    goto :goto_7

    .line 218
    .end local v4    # "thrownDuringHandling":Ljava/lang/Throwable;
    :catchall_2
    move-exception v7

    sget-boolean v9, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v9, :cond_6

    .line 219
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v8

    goto :goto_5

    .line 223
    :cond_6
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    throw v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 213
    .end local v3    # "index":I
    :cond_7
    :try_start_10
    iget-object v9, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v9, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_4

    .line 215
    :catch_3
    move-exception v4

    .line 216
    .restart local v4    # "thrownDuringHandling":Ljava/lang/Throwable;
    :try_start_11
    invoke-static {v4}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 218
    :try_start_12
    sget-boolean v9, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v9, :cond_9

    .line 219
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v8

    goto :goto_5

    .line 223
    .end local v4    # "thrownDuringHandling":Ljava/lang/Throwable;
    :cond_8
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    :goto_8
    throw v7

    .restart local v4    # "thrownDuringHandling":Ljava/lang/Throwable;
    :cond_9
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    goto :goto_8

    .line 218
    .end local v4    # "thrownDuringHandling":Ljava/lang/Throwable;
    :catchall_3
    move-exception v7

    sget-boolean v9, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v9, :cond_a

    .line 219
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v8

    goto :goto_5

    .line 223
    :cond_a
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    throw v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 176
    .end local v0    # "customStackTrace":Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
    .end local v1    # "exceptionHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;>;"
    :catch_4
    move-exception v7

    goto/16 :goto_0
.end method
