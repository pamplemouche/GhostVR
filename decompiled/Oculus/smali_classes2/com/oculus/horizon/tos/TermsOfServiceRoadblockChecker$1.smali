.class Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "TermsOfServiceRoadblockChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;->checkAsync(Landroid/content/Context;Lcom/oculus/horizon/api/ApiRequestManager;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$1;->this$0:Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;

    iput-object p2, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 41
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$1;->onResponse(Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;)V

    return-void
.end method
