.class public abstract Lcom/oculus/http/core/base/ApiCallback;
.super Ljava/lang/Object;
.source "ApiCallback.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
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
.field private mError:Lcom/oculus/http/core/base/ApiError;

.field private mIsComplete:Z

.field private mIsPaused:Z

.field private mResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsComplete:Z

    .line 14
    iput-boolean v0, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsPaused:Z

    return-void
.end method

.method private handleError()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiCallback;->mError:Lcom/oculus/http/core/base/ApiError;

    invoke-virtual {p0, v0}, Lcom/oculus/http/core/base/ApiCallback;->onError(Lcom/oculus/http/core/base/ApiError;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final failure(Lretrofit/RetrofitError;)V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsComplete:Z

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v0, Lcom/oculus/http/core/base/ApiError;

    invoke-direct {v0, p1}, Lcom/oculus/http/core/base/ApiError;-><init>(Lretrofit/RetrofitError;)V

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiCallback;->mError:Lcom/oculus/http/core/base/ApiError;

    .line 60
    iget-boolean v0, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsComplete:Z

    .line 62
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;->handleError()V

    goto :goto_0
.end method

.method public abstract onError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 27
    iget-boolean v1, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsComplete:Z

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    instance-of v1, p1, Lcom/oculus/http/core/base/ValidatableApiResponse;

    if-eqz v1, :cond_2

    .line 33
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/oculus/http/core/base/ValidatableApiResponse;

    move-object v1, v0

    invoke-interface {v1}, Lcom/oculus/http/core/base/ValidatableApiResponse;->validate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_2
    iput-object p1, p0, Lcom/oculus/http/core/base/ApiCallback;->mResponse:Ljava/lang/Object;

    .line 46
    iget-boolean v1, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsPaused:Z

    if-nez v1, :cond_0

    .line 47
    iput-boolean v2, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsComplete:Z

    .line 48
    iget-object v1, p0, Lcom/oculus/http/core/base/ApiCallback;->mResponse:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/oculus/http/core/base/ApiCallback;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    invoke-static {v1}, Lcom/oculus/http/core/base/ApiError;->makeValidationError(Ljava/lang/RuntimeException;)Lcom/oculus/http/core/base/ApiError;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/http/core/base/ApiCallback;->mError:Lcom/oculus/http/core/base/ApiError;

    .line 36
    iget-boolean v1, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsPaused:Z

    if-nez v1, :cond_0

    .line 37
    iput-boolean v2, p0, Lcom/oculus/http/core/base/ApiCallback;->mIsComplete:Z

    .line 38
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;->handleError()V

    goto :goto_0
.end method
