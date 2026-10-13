.class public abstract Lcom/facebook/analytics2/logger/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;
    }
.end annotation


# instance fields
.field private mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPigeonIdentityKnown:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;-><init>(Lcom/facebook/analytics2/logger/SessionManager$1;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    return-void
.end method


# virtual methods
.method declared-synchronized getOrBootstrapPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentityKnown:Z

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SessionManager;->provideBootstrappedPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentityKnown:Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized notifyOnBackground()V
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->notifyOnBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized notifyOnForeground()V
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->notifyOnForeground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized notifyOnUserLoggedIn(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 57
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentityKnown:Z

    .line 58
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    .line 59
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->notifyOnUserLoggedIn(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized notifyOnUserLoggedIn(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/facebook/analytics2/logger/PigeonIdentity;->forSingleUser(Ljava/lang/String;)Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/SessionManager;->notifyOnUserLoggedIn(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized notifyOnUserLogout()V
    .locals 1

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->notifyOnUserLogout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected provideBootstrappedPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SessionManager;->provideBootstrappedUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics2/logger/PigeonIdentity;->forSingleUser(Ljava/lang/String;)Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v0

    return-object v0
.end method

.method protected provideBootstrappedUserID()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerCallback(Lcom/facebook/analytics2/logger/SessionManagerCallback;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method
