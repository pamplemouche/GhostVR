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

.method public static declared-synchronized handleThrowableAndTerminate(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

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
    .locals 4

    .prologue
    .line 78
    const-class v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already initialized!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 81
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializing exception handler manager, prioritized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 83
    new-instance v2, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    invoke-direct {v2, v0, p0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    sput-object v2, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    .line 84
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 85
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sInstance:Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private static killThisProcess()V
    .locals 1

    .prologue
    .line 235
    :try_start_0
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sKillProcessSilentlyRunnable:Ljava/lang/Runnable;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 239
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    const/16 v0, 0xa

    :try_start_1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_1
    goto/32 :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-static {v0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    invoke-static {v0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static logErrorDuringHandling(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error during exception handling"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    return-void
.end method

.method public static declared-synchronized setCustomStackTracer(Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;)V
    .locals 2

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


# virtual methods
.method declared-synchronized addHandler(Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;I)V
    .locals 3
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mHandlerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    new-instance v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;-><init>(Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$1;)V

    .line 142
    iput-object p1, v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->handler:Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;

    .line 143
    iput p2, v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->priority:I

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-boolean v1, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mPrioritized:Z

    if-eqz v1, :cond_0

    .line 151
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 153
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mHandlerList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCustomStackTracerImpl(Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;)V
    .locals 1

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
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v3, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mThereCanOnlyBeOneCrash:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/16 v0, -0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mOomReservation:[B

    .line 184
    iget-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mStackTracer:Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 186
    :try_start_2
    iget-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mStackTracer:Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;

    invoke-interface {v0, p2}, Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;->collectStackTraceForException(Ljava/lang/Throwable;)Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    move-object v2, v0

    .line 192
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mHandlerList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 196
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;

    iget-object v0, v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager$PrioritizedExceptionHandler;->handler:Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    :try_start_5
    invoke-interface {v0, p1, p2, v2}, Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;->handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :try_start_6
    sget-object v2, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    const-string v4, "Error during stack tracing!"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_0
    move-object v2, v1

    goto :goto_1

    .line 199
    :catch_1
    move-exception v0

    .line 200
    :try_start_7
    instance-of v5, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v5, :cond_1

    .line 201
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    const-string v5, "Error during handling OOM"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    :try_start_8
    instance-of v1, p2, Lcom/facebook/common/exceptionhandler/ForceExitWithReasonException;

    if-eqz v1, :cond_7

    .line 211
    sget-object v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 218
    :goto_4
    :try_start_9
    sget-boolean v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v1, :cond_8

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 227
    :goto_5
    return-void

    .line 203
    :cond_1
    :try_start_a
    invoke-static {v0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 210
    :cond_2
    :try_start_b
    instance-of v0, p2, Lcom/facebook/common/exceptionhandler/ForceExitWithReasonException;

    if-eqz v0, :cond_3

    .line 211
    sget-object v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 218
    :goto_6
    :try_start_c
    sget-boolean v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v0, :cond_4

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v3

    goto :goto_5

    .line 226
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0

    .line 213
    :cond_3
    :try_start_d
    iget-object v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    .line 215
    :catch_2
    move-exception v0

    .line 216
    :try_start_e
    invoke-static {v0}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 218
    :try_start_f
    sget-boolean v0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v0, :cond_5

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v3

    goto :goto_5

    .line 223
    :cond_4
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    .line 226
    :goto_7
    monitor-exit v3

    goto :goto_5

    .line 223
    :cond_5
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    goto :goto_7

    .line 218
    :catchall_2
    move-exception v0

    sget-boolean v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v1, :cond_6

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v3

    goto :goto_5

    .line 223
    :cond_6
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 213
    :cond_7
    :try_start_10
    iget-object v1, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_4

    .line 215
    :catch_3
    move-exception v1

    .line 216
    :try_start_11
    invoke-static {v1}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->logErrorDuringHandling(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 218
    :try_start_12
    sget-boolean v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v1, :cond_9

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v3

    goto :goto_5

    .line 223
    :cond_8
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    :goto_8
    throw v0

    :cond_9
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    goto :goto_8

    .line 218
    :catchall_3
    move-exception v0

    sget-boolean v1, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->sDontShutDownBecauseWeAreInAUnitTest:Z

    if-eqz v1, :cond_a

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->mWouldHaveShutDownIfNotInAUnitTest:Z

    .line 220
    monitor-exit v3

    goto :goto_5

    .line 223
    :cond_a
    invoke-static {}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->killThisProcess()V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 176
    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method
