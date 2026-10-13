.class Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper$2;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "GoogleAPIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;->revokeTokenAsync(Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper$2;->this$0:Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;

    iput-object p2, p0, Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper$2;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper$2;->this$0:Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;

    invoke-static {v0}, Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;->access$100(Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    invoke-static {}, Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "revokeTokenAsync failed with error"

    invoke-virtual {v0, v1, v2, p1}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper$2;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 68
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper$2;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
