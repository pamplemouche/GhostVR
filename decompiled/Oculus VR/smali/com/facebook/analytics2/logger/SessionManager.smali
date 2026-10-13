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
    .annotation runtime Ljavax/annotation/Nullable;
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

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;-><init>(Lcom/facebook/analytics2/logger/SessionManager$1;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    .line 26
    return-void
.end method


# virtual methods
.method declared-synchronized getOrBootstrapPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentityKnown:Z

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SessionManager;->provideBootstrappedPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentityKnown:Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized notifyOnBackground()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->notifyOnBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized notifyOnForeground()V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->notifyOnForeground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized notifyOnUserLoggedIn(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x1

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

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected provideBootstrappedPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SessionManager;->provideBootstrappedUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics2/logger/PigeonIdentity;->forSingleUser(Ljava/lang/String;)Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v0

    return-object v0
.end method

.method protected provideBootstrappedUserID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerCallback(Lcom/facebook/analytics2/logger/SessionManagerCallback;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager;->mSessionManagerCallbackObservable:Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->registerObserver(Ljava/lang/Object;)V

    .line 69
    return-void
.end method
