.class public Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ServiceProxyFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingListenableFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 197
    return-void
.end method

.method private enforceNonUiThread()V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    return-void

    .line 209
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot block UI thread when waiting for service call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected delegate()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;->enforceNonUiThread()V

    .line 217
    invoke-super {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;->enforceNonUiThread()V

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
