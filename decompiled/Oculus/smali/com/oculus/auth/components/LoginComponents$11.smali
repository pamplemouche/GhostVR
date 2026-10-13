.class Lcom/oculus/auth/components/LoginComponents$11;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LoginComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->loginAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/login/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/LoginComponents;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$11;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LoginComponents$11;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 337
    const-string v0, "LoginComponents"

    const-string v1, "Failed to login"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    const/4 v0, 0x2

    sget v1, Lcom/oculus/perflogs/OculusPerformanceLoggerModule$UL_id;->$ul_$xXXcom_oculus_perflogs_OculusPerformanceLogger$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/components/LoginComponents$11;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v2}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/perflogs/OculusPerformanceLogger;

    const v1, 0xeb0006

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/oculus/perflogs/OculusPerformanceLogger;->markerEnd(IS)V

    .line 340
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$11;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 341
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/login/LoginResponse;)V
    .locals 9

    .prologue
    const v8, 0xeb0006

    const/4 v7, 0x2

    const/4 v6, 0x3

    .line 310
    iget-object v1, p1, Lcom/oculus/horizon/api/login/LoginResponse;->uid:Ljava/lang/String;

    .line 311
    iget-object v2, p1, Lcom/oculus/horizon/api/login/LoginResponse;->access_token:Ljava/lang/String;

    .line 312
    invoke-static {v6}, Lcom/facebook/debug/log/BLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "LoginComponents"

    const-string v3, "Received login response with userId [%s] and accessToken [%s]"

    .line 316
    invoke-static {v1}, Lcom/oculus/auth/components/LoginComponents;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-static {v2}, Lcom/oculus/auth/components/LoginComponents;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-static {v0, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    :cond_0
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    :cond_1
    new-instance v2, Lcom/oculus/auth/components/UnexpectedResponseError;

    invoke-direct {v2}, Lcom/oculus/auth/components/UnexpectedResponseError;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$11;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 322
    sget v0, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/auth/components/LoginComponents$11;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v3}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    const-string v3, "LoginComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected userId: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    sget v0, Lcom/oculus/perflogs/OculusPerformanceLoggerModule$UL_id;->$ul_$xXXcom_oculus_perflogs_OculusPerformanceLogger$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$11;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v1}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/perflogs/OculusPerformanceLogger;

    invoke-interface {v0, v8, v6}, Lcom/oculus/perflogs/OculusPerformanceLogger;->markerEnd(IS)V

    .line 333
    :goto_0
    return-void

    .line 324
    :cond_2
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    new-instance v1, Lcom/oculus/auth/components/UnexpectedResponseError;

    invoke-direct {v1}, Lcom/oculus/auth/components/UnexpectedResponseError;-><init>()V

    .line 326
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$11;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 327
    sget v0, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/auth/components/LoginComponents$11;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v3}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    const-string v3, "LoginComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected accessToken: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    sget v0, Lcom/oculus/perflogs/OculusPerformanceLoggerModule$UL_id;->$ul_$xXXcom_oculus_perflogs_OculusPerformanceLogger$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$11;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v1}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/perflogs/OculusPerformanceLogger;

    invoke-interface {v0, v8, v6}, Lcom/oculus/perflogs/OculusPerformanceLogger;->markerEnd(IS)V

    goto :goto_0

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$11;->val$tcs:Lbolts/TaskCompletionSource;

    new-instance v3, Lcom/oculus/auth/credentials/Credentials;

    invoke-direct {v3, v1, v2}, Lcom/oculus/auth/credentials/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 331
    sget v0, Lcom/oculus/perflogs/OculusPerformanceLoggerModule$UL_id;->$ul_$xXXcom_oculus_perflogs_OculusPerformanceLogger$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$11;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v1}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/perflogs/OculusPerformanceLogger;

    invoke-interface {v0, v8, v7}, Lcom/oculus/perflogs/OculusPerformanceLogger;->markerEnd(IS)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 307
    check-cast p1, Lcom/oculus/horizon/api/login/LoginResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$11;->onResponse(Lcom/oculus/horizon/api/login/LoginResponse;)V

    return-void
.end method
