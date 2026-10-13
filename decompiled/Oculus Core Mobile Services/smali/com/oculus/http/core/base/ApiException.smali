.class public final Lcom/oculus/http/core/base/ApiException;
.super Ljava/lang/Exception;
.source "ApiException.java"


# instance fields
.field private final mApiError:Lcom/oculus/http/core/base/ApiError;


# direct methods
.method public constructor <init>(Lretrofit/RetrofitError;Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iput-object p2, p0, Lcom/oculus/http/core/base/ApiException;->mApiError:Lcom/oculus/http/core/base/ApiError;

    .line 14
    return-void
.end method


# virtual methods
.method public getApiError()Lcom/oculus/http/core/base/ApiError;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiException;->mApiError:Lcom/oculus/http/core/base/ApiError;

    return-object v0
.end method
