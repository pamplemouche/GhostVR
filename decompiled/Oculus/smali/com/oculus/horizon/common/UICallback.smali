.class public abstract Lcom/oculus/horizon/common/UICallback;
.super Ljava/lang/Object;
.source "UICallback.java"

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
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oculus/horizon/base/OculusBaseFragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/horizon/common/UICallback;->mActivity:Ljava/lang/ref/WeakReference;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/common/UICallback;->mFragment:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/horizon/common/UICallback;->mFragment:Ljava/lang/ref/WeakReference;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/common/UICallback;->mActivity:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method private isDestroyed()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/common/UICallback;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/common/UICallback;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 40
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/common/UICallback;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/common/UICallback;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/base/OculusBaseFragment;

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/oculus/horizon/base/OculusBaseFragment;->getStateSaved()Z

    move-result v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final failure(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oculus/horizon/common/UICallback;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "UICallback"

    const-string v1, "Skipping success callback due to dead UI element"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/common/UICallback;->onError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0
.end method

.method public final failure(Lretrofit/RetrofitError;)V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/oculus/http/core/base/ApiError;

    invoke-direct {v0, p1}, Lcom/oculus/http/core/base/ApiError;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/common/UICallback;->failure(Lcom/oculus/http/core/base/ApiError;)V

    .line 82
    return-void
.end method

.method protected abstract onError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method protected abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final success(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/oculus/horizon/common/UICallback;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "UICallback"

    const-string v1, "Skipping success callback due to dead UI element"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/common/UICallback;->onResponse(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    instance-of v1, p1, Lcom/oculus/http/core/base/ValidatableApiResponse;

    if-eqz v1, :cond_0

    .line 58
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/oculus/http/core/base/ValidatableApiResponse;

    move-object v1, v0

    invoke-interface {v1}, Lcom/oculus/http/core/base/ValidatableApiResponse;->validate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/common/UICallback;->success(Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    invoke-static {v1}, Lcom/oculus/http/core/base/ApiError;->makeValidationError(Ljava/lang/RuntimeException;)Lcom/oculus/http/core/base/ApiError;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/common/UICallback;->failure(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0
.end method
