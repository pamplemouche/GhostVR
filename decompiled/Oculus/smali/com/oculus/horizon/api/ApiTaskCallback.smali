.class public Lcom/oculus/horizon/api/ApiTaskCallback;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "ApiTaskCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oculus/http/core/base/ApiCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCompletionSource:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    .line 13
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/api/ApiTaskCallback;->mCompletionSource:Lbolts/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public getTask()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/api/ApiTaskCallback;->mCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/api/ApiTaskCallback;->mCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 23
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/api/ApiTaskCallback;->mCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 18
    return-void
.end method
