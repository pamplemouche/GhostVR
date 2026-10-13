.class public Lcom/oculus/http/core/base/ApiError;
.super Ljava/lang/Exception;
.source "ApiError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;,
        Lcom/oculus/http/core/base/ApiError$Type;
    }
.end annotation


# instance fields
.field public conversionMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public httpStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isNetworkTimeout:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Lcom/oculus/http/core/base/ApiError$Type;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oculus/http/core/base/ApiError$Type;Ljava/lang/RuntimeException;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 52
    iput-object p1, p0, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    .line 53
    return-void
.end method

.method public constructor <init>(Lretrofit/RetrofitError;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 59
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    sget-object v0, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    .line 69
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/http/core/base/ApiError;->uuid:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->isNetworkTimeout:Ljava/lang/Boolean;

    .line 91
    :goto_1
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->path:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 76
    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->HTTP_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    iput-object v1, p0, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    .line 77
    invoke-virtual {v0}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/http/core/uuid/ApiUUID;->getFromHeaders(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->uuid:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->httpStatus:Ljava/lang/Integer;

    .line 79
    invoke-static {p1}, Lcom/oculus/http/core/base/ApiError;->parseFBApiErrorResponse(Lretrofit/RetrofitError;)Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lretrofit/converter/ConversionException;

    if-eqz v1, :cond_2

    .line 84
    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->CONVERSION_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    iput-object v1, p0, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    .line 85
    invoke-virtual {v0}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/http/core/uuid/ApiUUID;->getFromHeaders(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->uuid:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->conversionMessage:Ljava/lang/String;

    goto :goto_1

    .line 90
    :cond_2
    sget-object v0, Lcom/oculus/http/core/base/ApiError$Type;->UNEXPECTED_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    iput-object v0, p0, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    goto :goto_1
.end method

.method public static makeValidationError(Ljava/lang/RuntimeException;)Lcom/oculus/http/core/base/ApiError;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/oculus/http/core/base/ApiError;

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->VALIDATIION_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    invoke-direct {v0, v1, p0}, Lcom/oculus/http/core/base/ApiError;-><init>(Lcom/oculus/http/core/base/ApiError$Type;Ljava/lang/RuntimeException;)V

    return-object v0
.end method

.method private static parseFBApiErrorResponse(Lretrofit/RetrofitError;)Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;
    .locals 1

    .prologue
    .line 25
    :try_start_0
    const-class v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    invoke-virtual {p0, v0}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fbErrorCodeEquals(I)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->code:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fbErrorSubCodeEquals(I)Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->getSubErrorCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFBErrorCode()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->getErrorCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFBErrorData()Lcom/google/gson/JsonElement;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->getErrorData()Lcom/google/gson/JsonElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    invoke-virtual {v0, p1}, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->getErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getFBErrorSubErrorCode()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->getSubErrorCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    .line 110
    invoke-virtual {v0, p1}, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->getErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getResponseHeadersForDebug()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/oculus/http/core/base/ApiError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 135
    instance-of v2, v0, Lretrofit/RetrofitError;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 143
    :goto_0
    return-object v0

    .line 138
    :cond_0
    check-cast v0, Lretrofit/RetrofitError;

    .line 139
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 140
    if-nez v0, :cond_1

    move-object v0, v1

    .line 141
    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v0}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/oculus/http/core/base/ApiError$Type;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    return-object v0
.end method
