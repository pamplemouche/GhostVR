.class Lcom/oculus/horizon/tos/TermsOfServiceActivity$2$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "TermsOfServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2$1;->this$1:Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;

    iput-object p2, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 120
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceResponse;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2$1;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2$1;->onResponse(Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceResponse;)V

    return-void
.end method
