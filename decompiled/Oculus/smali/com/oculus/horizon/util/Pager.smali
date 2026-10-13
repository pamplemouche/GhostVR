.class public abstract Lcom/oculus/horizon/util/Pager;
.super Ljava/lang/Object;
.source "Pager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/util/Pager$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mCursor:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mHasNextPage:Z

.field private mIsLoading:Z

.field private mListener:Lcom/oculus/horizon/util/Pager$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/horizon/util/Pager$Listener",
            "<TT;TC;TE;>;"
        }
    .end annotation
.end field

.field private final mPageSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/util/Pager;->lock:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/util/Pager;->mHasNextPage:Z

    .line 26
    iput p1, p0, Lcom/oculus/horizon/util/Pager;->mPageSize:I

    .line 27
    return-void
.end method

.method private notifyError(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TE;)V"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/util/Pager;->mListener:Lcom/oculus/horizon/util/Pager$Listener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/util/Pager;->mListener:Lcom/oculus/horizon/util/Pager$Listener;

    invoke-interface {v0, p1, p2}, Lcom/oculus/horizon/util/Pager$Listener;->onError(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method

.method private notifyPage(Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/util/Pager;->mListener:Lcom/oculus/horizon/util/Pager$Listener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/util/Pager;->mListener:Lcom/oculus/horizon/util/Pager$Listener;

    invoke-interface {v0, p1, p2}, Lcom/oculus/horizon/util/Pager$Listener;->onPage(Ljava/lang/Object;Ljava/util/List;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract load(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;I)V"
        }
    .end annotation
.end method

.method public loadNextPage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 36
    iget-object v1, p0, Lcom/oculus/horizon/util/Pager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-boolean v2, p0, Lcom/oculus/horizon/util/Pager;->mIsLoading:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oculus/horizon/util/Pager;->mHasNextPage:Z

    if-nez v2, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 45
    :goto_0
    return v0

    .line 40
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oculus/horizon/util/Pager;->mIsLoading:Z

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object v1, p0, Lcom/oculus/horizon/util/Pager;->mCursor:Ljava/lang/Object;

    iget v2, p0, Lcom/oculus/horizon/util/Pager;->mPageSize:I

    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/util/Pager;->load(Ljava/lang/Object;I)V

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onError(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p2, p1}, Lcom/oculus/horizon/util/Pager;->notifyError(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/oculus/horizon/util/Pager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/oculus/horizon/util/Pager;->mIsLoading:Z

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPage(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;TC;TC;Z)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p3, p0, Lcom/oculus/horizon/util/Pager;->mCursor:Ljava/lang/Object;

    .line 70
    iput-boolean p4, p0, Lcom/oculus/horizon/util/Pager;->mHasNextPage:Z

    .line 72
    invoke-direct {p0, p2, p1}, Lcom/oculus/horizon/util/Pager;->notifyPage(Ljava/lang/Object;Ljava/util/List;)V

    .line 74
    iget-object v1, p0, Lcom/oculus/horizon/util/Pager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/oculus/horizon/util/Pager;->mIsLoading:Z

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/oculus/horizon/util/Pager$Listener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/horizon/util/Pager;->mListener:Lcom/oculus/horizon/util/Pager$Listener;

    .line 50
    return-void
.end method
