.class Lcom/facebook/analytics2/logger/SessionDelegate;
.super Ljava/lang/Object;
.source "SessionDelegate.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/SessionManagerCallback;


# instance fields
.field private mBootstrapped:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentSessionId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/SessionManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    .line 28
    iput-object p2, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private declared-synchronized bootstrapIfNeeded(Lcom/facebook/analytics2/logger/EventProcessorManager;)V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mBootstrapped:Z

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    .line 88
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionManager;->getOrBootstrapPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    .line 89
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/SessionManager;->registerCallback(Lcom/facebook/analytics2/logger/SessionManagerCallback;)V

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->createBatchSession(Z)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mBootstrapped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAndNotifyNewSession(Z)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/SessionDelegate;->createBatchSession(Z)V

    .line 104
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->notifySession()V

    .line 105
    return-void
.end method

.method private createBatchSession(Z)V
    .locals 3

    .prologue
    .line 96
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentSessionId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    invoke-static {}, Lcom/facebook/analytics2/logger/SessionDelegate;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentSessionId:Ljava/lang/String;

    .line 99
    :cond_1
    new-instance v0, Lcom/facebook/analytics2/logger/BatchSession;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentSessionId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/analytics2/logger/BatchSession;-><init>(Lcom/facebook/analytics2/logger/PigeonIdentity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 100
    return-void
.end method

.method private static generateSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static maybeNotifySession(Lcom/facebook/analytics2/logger/EventProcessor;Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 0
    .param p0    # Lcom/facebook/analytics2/logger/EventProcessor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor;->startNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    .line 119
    :cond_0
    return-void
.end method

.method private declared-synchronized notifySession()V
    .locals 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    .line 109
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getHighPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 108
    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/SessionDelegate;->maybeNotifySession(Lcom/facebook/analytics2/logger/EventProcessor;Lcom/facebook/analytics2/logger/BatchSession;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    .line 111
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getNormalPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 110
    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/SessionDelegate;->maybeNotifySession(Lcom/facebook/analytics2/logger/EventProcessor;Lcom/facebook/analytics2/logger/BatchSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyUserLogout(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 1
    .param p1    # Lcom/facebook/analytics2/logger/PigeonIdentity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getHighPriPriEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor;->notifyUserLogout(Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getNormalPriEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor;->notifyUserLogout(Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    .line 124
    return-void
.end method

.method private declared-synchronized throwIfNotBootstrapped()V
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mBootstrapped:Z

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SessionDelegate should have called bootstrapIfNeeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 83
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized getOrBootstrapBatchSession(Lcom/facebook/analytics2/logger/EventProcessorManager;)Lcom/facebook/analytics2/logger/BatchSession;
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/SessionDelegate;->bootstrapIfNeeded(Lcom/facebook/analytics2/logger/EventProcessorManager;)V

    .line 34
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBackground()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->throwIfNotBootstrapped()V

    .line 59
    iget-object v2, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mContext:Landroid/content/Context;

    const-string v3, "removeBgSessionId"

    .line 60
    invoke-static {v2, v3, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getGkValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 61
    if-eq v2, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->createAndNotifyNewSession(Z)V

    .line 62
    return-void

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public onForeground()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->throwIfNotBootstrapped()V

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->createAndNotifyNewSession(Z)V

    .line 54
    return-void
.end method

.method public userLogin(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->throwIfNotBootstrapped()V

    .line 67
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->createAndNotifyNewSession(Z)V

    .line 69
    return-void
.end method

.method public userLogout()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->throwIfNotBootstrapped()V

    .line 74
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->notifyUserLogout(Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->createAndNotifyNewSession(Z)V

    .line 77
    return-void
.end method
