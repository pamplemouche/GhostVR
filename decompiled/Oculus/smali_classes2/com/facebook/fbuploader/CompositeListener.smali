.class public final Lcom/facebook/fbuploader/CompositeListener;
.super Ljava/lang/Object;
.source "CompositeListener.java"

# interfaces
.implements Lcom/facebook/fbuploader/Listener;


# instance fields
.field private final mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mListeners:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/fbuploader/Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/fbuploader/Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/fbuploader/CompositeListener;->mListeners:Ljava/lang/Iterable;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mListeners:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/Listener;

    .line 53
    invoke-interface {v0}, Lcom/facebook/fbuploader/Listener;->onCancellation()V

    goto :goto_0
.end method

.method public onCompletion(Lcom/facebook/fbuploader/UploadResult;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mListeners:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/Listener;

    .line 63
    invoke-interface {v0, p1}, Lcom/facebook/fbuploader/Listener;->onCompletion(Lcom/facebook/fbuploader/UploadResult;)V

    goto :goto_0
.end method

.method public onFailure(Lcom/facebook/fbuploader/UploadFailureException;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mListeners:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/Listener;

    .line 43
    invoke-interface {v0, p1}, Lcom/facebook/fbuploader/Listener;->onFailure(Lcom/facebook/fbuploader/UploadFailureException;)V

    goto :goto_0
.end method

.method public onProgress(F)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mListeners:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/Listener;

    .line 33
    invoke-interface {v0, p1}, Lcom/facebook/fbuploader/Listener;->onProgress(F)V

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    iget-object v0, p0, Lcom/facebook/fbuploader/CompositeListener;->mListeners:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/Listener;

    .line 26
    invoke-interface {v0}, Lcom/facebook/fbuploader/Listener;->onStart()V

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method
