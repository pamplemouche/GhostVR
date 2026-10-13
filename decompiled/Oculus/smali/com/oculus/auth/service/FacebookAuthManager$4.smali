.class Lcom/oculus/auth/service/FacebookAuthManager$4;
.super Ljava/lang/Object;
.source "FacebookAuthManager.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/FacebookAuthManager;->performFBLogin(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/oculus/auth/api/FBLoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/service/FacebookAuthManager;

.field final synthetic val$followUp:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/FacebookAuthManager;Landroid/os/ResultReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/oculus/auth/service/FacebookAuthManager$4;->this$0:Lcom/oculus/auth/service/FacebookAuthManager;

    iput-object p2, p0, Lcom/oculus/auth/service/FacebookAuthManager$4;->val$receiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Lcom/oculus/auth/service/FacebookAuthManager$4;->val$followUp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/oculus/auth/service/FacebookAuthManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failure = %s"

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/oculus/auth/service/FacebookAuthManager$4;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v0, p1}, Lcom/oculus/auth/service/FacebookAuthManager;->notifyReceiverWithError(Landroid/os/ResultReceiver;Ljava/lang/Exception;)V

    .line 142
    return-void
.end method

.method public success(Lcom/oculus/auth/api/FBLoginResponse;Lretrofit/client/Response;)V
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Lcom/oculus/auth/service/FacebookAuthManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success with response = %s"

    invoke-virtual {p1}, Lcom/oculus/auth/api/FBLoginResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/oculus/auth/service/FacebookAuthManager$4;->this$0:Lcom/oculus/auth/service/FacebookAuthManager;

    iget-object v1, p0, Lcom/oculus/auth/service/FacebookAuthManager$4;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {}, Lcom/oculus/auth/service/FacebookAuthManager;->access$100()Lcom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/auth/service/FacebookAuthManager$4;->val$followUp:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/oculus/auth/service/FacebookAuthManager;->access$200(Lcom/oculus/auth/service/FacebookAuthManager;Landroid/os/ResultReceiver;Lcom/oculus/auth/api/FBLoginResponse;Lcom/google/common/base/Function;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Lcom/oculus/auth/api/FBLoginResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/auth/service/FacebookAuthManager$4;->success(Lcom/oculus/auth/api/FBLoginResponse;Lretrofit/client/Response;)V

    return-void
.end method
