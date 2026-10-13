.class public Lcom/oculus/executors/OculusThreadExecutor;
.super Ljava/lang/Object;
.source "OculusThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/executors/OculusThreadExecutor$UiThreadExecutor;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/oculus/executors/OculusThreadExecutor;


# instance fields
.field private final mExecutorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

.field private final mUiThreadExecutor:Lcom/oculus/executors/OculusThreadExecutor$UiThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x4

    .line 35
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/executors/OculusThreadExecutor;->mExecutorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .line 36
    new-instance v0, Lcom/oculus/executors/OculusThreadExecutor$UiThreadExecutor;

    invoke-direct {v0}, Lcom/oculus/executors/OculusThreadExecutor$UiThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/oculus/executors/OculusThreadExecutor;->mUiThreadExecutor:Lcom/oculus/executors/OculusThreadExecutor$UiThreadExecutor;

    return-void
.end method

.method public static getInstance()Lcom/oculus/executors/OculusThreadExecutor;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/oculus/executors/OculusThreadExecutor;->sInstance:Lcom/oculus/executors/OculusThreadExecutor;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/oculus/executors/OculusThreadExecutor;

    invoke-direct {v0}, Lcom/oculus/executors/OculusThreadExecutor;-><init>()V

    sput-object v0, Lcom/oculus/executors/OculusThreadExecutor;->sInstance:Lcom/oculus/executors/OculusThreadExecutor;

    .line 42
    :cond_0
    sget-object v0, Lcom/oculus/executors/OculusThreadExecutor;->sInstance:Lcom/oculus/executors/OculusThreadExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/executors/OculusThreadExecutor;->mExecutorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
