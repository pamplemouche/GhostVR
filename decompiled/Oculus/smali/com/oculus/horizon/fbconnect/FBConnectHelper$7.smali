.class Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "FBConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectHelper;->updateFBConnectAccountAsync(Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

.field final synthetic val$origin:Ljava/lang/String;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Lbolts/TaskCompletionSource;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iput-object p2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->val$origin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 4

    .prologue
    .line 510
    const/4 v0, 0x2

    sget v1, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$400(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    .line 511
    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "updateFBConnectAccountAsync failed with error: "

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 510
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 512
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 513
    const/4 v0, 0x7

    sget v1, Lcom/oculus/horizon/fbconnect/FBConnectModule$UL_id;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectLogger$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$400(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->val$origin:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportFbAccountFetchFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;)V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iget-object v1, p1, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;->linked_accounts_info:Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse$LinkedAccounts;

    iget-object v1, v1, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse$LinkedAccounts;->facebook_account:Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setCurrentFBAccount(Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;)V

    .line 504
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 505
    const/4 v0, 0x7

    sget v1, Lcom/oculus/horizon/fbconnect/FBConnectModule$UL_id;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectLogger$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$400(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->val$origin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportFbAccountFetchSuccess(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 500
    check-cast p1, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$7;->onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;)V

    return-void
.end method
