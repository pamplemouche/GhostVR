.class public Lcom/oculus/horizon/nux360/TaskCallback;
.super Ljava/lang/Object;
.source "TaskCallback.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/TaskCallback$Error;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/nux360/TaskCallback;->mCompletionSource:Lbolts/TaskCompletionSource;

    return-void
.end method

.method private handleError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/nux360/TaskCallback;->mCompletionSource:Lbolts/TaskCompletionSource;

    new-instance v1, Lcom/oculus/horizon/nux360/TaskCallback$Error;

    invoke-direct {v1, p1}, Lcom/oculus/horizon/nux360/TaskCallback$Error;-><init>(Lcom/oculus/http/core/base/ApiError;)V

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 46
    return-void
.end method

.method private onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/nux360/TaskCallback;->mCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/oculus/http/core/base/ApiError;

    invoke-direct {v0, p1}, Lcom/oculus/http/core/base/ApiError;-><init>(Lretrofit/RetrofitError;)V

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/TaskCallback;->handleError(Lcom/oculus/http/core/base/ApiError;)V

    .line 51
    return-void
.end method

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
    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/nux360/TaskCallback;->mCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    instance-of v1, p1, Lcom/oculus/http/core/base/ValidatableApiResponse;

    if-eqz v1, :cond_0

    .line 31
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/oculus/http/core/base/ValidatableApiResponse;

    move-object v1, v0

    invoke-interface {v1}, Lcom/oculus/http/core/base/ValidatableApiResponse;->validate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/horizon/nux360/TaskCallback;->onResponse(Ljava/lang/Object;)V

    .line 38
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 33
    invoke-static {v1}, Lcom/oculus/http/core/base/ApiError;->makeValidationError(Ljava/lang/RuntimeException;)Lcom/oculus/http/core/base/ApiError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/horizon/nux360/TaskCallback;->handleError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0
.end method
