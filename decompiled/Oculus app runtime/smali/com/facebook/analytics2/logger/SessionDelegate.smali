.class Lcom/facebook/analytics2/logger/SessionDelegate;
.super Ljava/lang/Object;
.source "SessionDelegate.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/SessionManagerCallback;


# static fields
.field private static final REMOVE_BG_SESSION_ID_GK_BOOTSTRAP_NAME:Ljava/lang/String; = "removeBgSessionId"


# instance fields
.field private mBootstrapped:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentSessionId:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/SessionManager;Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    .line 28
    iput-object p2, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized bootstrapIfNeeded(Lcom/facebook/analytics2/logger/EventProcessorManager;)V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mBootstrapped:Z

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    .line 88
    iget-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/SessionManager;->getOrBootstrapPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    .line 89
    iget-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    invoke-virtual {p1, p0}, Lcom/facebook/analytics2/logger/SessionManager;->registerCallback(Lcom/facebook/analytics2/logger/SessionManagerCallback;)V

    const/4 p1, 0x1

    .line 90
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/SessionDelegate;->createBatchSession(Z)V

    .line 91
    iput-boolean p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mBootstrapped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createAndNotifyNewSession(Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/SessionDelegate;->createBatchSession(Z)V

    .line 104
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->notifySession()V

    return-void
.end method

.method private createBatchSession(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentSessionId:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 97
    :cond_0
    invoke-static {}, Lcom/facebook/analytics2/logger/SessionDelegate;->generateSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentSessionId:Ljava/lang/String;

    .line 99
    :cond_1
    new-instance p1, Lcom/facebook/analytics2/logger/BatchSession;

    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentSessionId:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/facebook/analytics2/logger/BatchSession;-><init>(Lcom/facebook/analytics2/logger/PigeonIdentity;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    return-void
.end method

.method private static generateSessionId()Ljava/lang/String;
    .locals 1

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
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor;->startNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized notifySession()V
    .locals 2

    monitor-enter p0

    .line 108
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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyUserLogout(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 1
    .param p1    # Lcom/facebook/analytics2/logger/PigeonIdentity;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

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

    return-void
.end method

.method private declared-synchronized throwIfNotBootstrapped()V
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mBootstrapped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 83
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SessionDelegate should have called bootstrapIfNeeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getCurrentSessionId()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 40
    monitor-exit p0

    return-object v0

    .line 43
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchSession;->getSessionId()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOrBootstrapBatchSession(Lcom/facebook/analytics2/logger/EventProcessorManager;)Lcom/facebook/analytics2/logger/BatchSession;
    .locals 0

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/SessionDelegate;->bootstrapIfNeeded(Lcom/facebook/analytics2/logger/EventProcessorManager;)V

    .line 34
    iget-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mCurrentBatchSession:Lcom/facebook/analytics2/logger/BatchSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onBackground()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->throwIfNotBootstrapped()V

    .line 59
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "removeBgSessionId"

    .line 60
    invoke-static {v0, v2, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getGkValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    .line 61
    :cond_0
    invoke-direct {p0, v1}, Lcom/facebook/analytics2/logger/SessionDelegate;->createAndNotifyNewSession(Z)V

    return-void
.end method

.method public onForeground()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->throwIfNotBootstrapped()V

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->createAndNotifyNewSession(Z)V

    return-void
.end method

.method public userLogin(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->throwIfNotBootstrapped()V

    .line 67
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    const/4 p1, 0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/SessionDelegate;->createAndNotifyNewSession(Z)V

    return-void
.end method

.method public userLogout()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionDelegate;->throwIfNotBootstrapped()V

    .line 74
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->notifyUserLogout(Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/facebook/analytics2/logger/SessionDelegate;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->createAndNotifyNewSession(Z)V

    return-void
.end method
