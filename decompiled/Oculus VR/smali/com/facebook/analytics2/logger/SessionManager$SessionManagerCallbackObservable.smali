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
        "Landroid/database/Observable",
        "<",
        "Lcom/facebook/analytics2/logger/SessionManagerCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/SessionManager$1;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyOnBackground()V
    .locals 4

    .prologue
    .line 112
    iget-object v2, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 114
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 115
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/SessionManagerCallback;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/SessionManagerCallback;->onBackground()V

    .line 114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 117
    :cond_0
    monitor-exit v2

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyOnForeground()V
    .locals 4

    .prologue
    .line 103
    iget-object v2, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/SessionManagerCallback;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/SessionManagerCallback;->onForeground()V

    .line 105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 108
    :cond_0
    monitor-exit v2

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyOnUserLoggedIn(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 123
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 124
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SessionManager$SessionManagerCallbackObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/SessionManagerCallback;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/SessionManagerCallback;->userLogin(Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_0
    monitor-exit v2

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
