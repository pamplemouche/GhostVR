.class Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;
.super Ljava/lang/Object;
.source "FBConnectHelper.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectHelper;->startReauthAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

.field final synthetic val$accessToken:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iput-object p2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 436
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 437
    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Facebook reauth succeeded."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;

    iget-object v0, v0, Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;->access_token:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 441
    :goto_0
    sget v0, Lcom/oculus/horizon/logging/LoggingModule$UL_id;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v3}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$400(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v3, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    .line 442
    invoke-virtual {v3}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->maybeAccessTokenValid()Z

    move-result v3

    .line 441
    invoke-virtual {v0, v3, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookReauthSuccess(ZZ)V

    .line 444
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0, v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$500(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Z)V

    .line 445
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setCurrentFBAccount(Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;)V

    .line 469
    :cond_0
    :goto_1
    return-object v6

    .line 440
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/http/core/base/ApiError;

    if-eqz v0, :cond_4

    .line 448
    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Facebook reauth failed. Access token no longer valid."

    .line 450
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    .line 447
    invoke-static {v0, v1, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/core/base/ApiError;

    .line 453
    sget v1, Lcom/oculus/horizon/logging/LoggingModule$UL_id;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v3}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$400(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    .line 454
    invoke-virtual {v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->maybeAccessTokenValid()Z

    move-result v2

    .line 455
    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorSubErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorData()Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 458
    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorData()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :goto_2
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookReauthError(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->clearCurrentFBAccessToken()V

    goto :goto_1

    .line 459
    :cond_3
    invoke-virtual {v0, v6}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 464
    :cond_4
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x2

    sget v1, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$400(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    .line 466
    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Facebook reauth failed unexpectedly."

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    .line 465
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
