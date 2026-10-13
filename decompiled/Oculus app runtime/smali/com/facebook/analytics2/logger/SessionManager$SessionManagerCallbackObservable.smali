.class Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;
.super Landroid/database/Observable;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionManagerCallbackObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Lcom/facebook/analytics2/logger/SessionManagerCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/SessionManager$1;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyOnBackground()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics2/logger/SessionManagerCallback;

    invoke-interface {v3}, Lcom/facebook/analytics2/logger/SessionManagerCallback;->onBackground()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyOnForeground()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 106
    iget-object v3, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics2/logger/SessionManagerCallback;

    invoke-interface {v3}, Lcom/facebook/analytics2/logger/SessionManagerCallback;->onForeground()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyOnUserLoggedIn(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 124
    iget-object v3, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics2/logger/SessionManagerCallback;

    invoke-interface {v3, p1}, Lcom/facebook/analytics2/logger/SessionManagerCallback;->userLogin(Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyOnUserLogout()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 133
    iget-object v3, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics2/logger/SessionManagerCallback;

    invoke-interface {v3}, Lcom/facebook/analytics2/logger/SessionManagerCallback;->userLogout()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
