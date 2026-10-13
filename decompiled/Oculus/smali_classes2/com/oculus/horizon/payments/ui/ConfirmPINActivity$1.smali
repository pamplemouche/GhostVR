.class Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;
.super Ljava/lang/Object;
.source "ConfirmPINActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->tryProcessCheckout()V
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
        "Lcom/oculus/horizon/commerce/ConfirmOrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    new-instance v1, Lcom/oculus/http/core/base/ApiError;

    invoke-direct {v1, p1}, Lcom/oculus/http/core/base/ApiError;-><init>(Lretrofit/RetrofitError;)V

    invoke-static {v0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$400(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;Lcom/oculus/http/core/base/ApiError;)V

    .line 221
    return-void
.end method

.method public success(Lcom/oculus/horizon/commerce/ConfirmOrderResponse;Lretrofit/client/Response;)V
    .locals 3

    .prologue
    .line 211
    invoke-static {}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully purchased offer %s."

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v2}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$100(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$200(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V

    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$302(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;Z)Z

    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->setResult(I)V

    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->finish()V

    .line 216
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 208
    check-cast p1, Lcom/oculus/horizon/commerce/ConfirmOrderResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;->success(Lcom/oculus/horizon/commerce/ConfirmOrderResponse;Lretrofit/client/Response;)V

    return-void
.end method
