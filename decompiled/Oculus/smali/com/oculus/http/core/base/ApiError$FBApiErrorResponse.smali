.class public Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;
.super Ljava/lang/Object;
.source "ApiError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/http/core/base/ApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FBApiErrorResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;
    }
.end annotation


# instance fields
.field public error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->code:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorData()Lcom/google/gson/JsonElement;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_data:Lcom/google/gson/JsonElement;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object p1

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_msg:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object p1, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_msg:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object p1, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrorTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object p1, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_title:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public getSubErrorCode()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_subcode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
