.class Lcom/oculus/horizon/settings/StoreCreditFragment$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "StoreCreditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/StoreCreditFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/commerce/PaymentAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/StoreCreditFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/StoreCreditFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment$1;->this$0:Lcom/oculus/horizon/settings/StoreCreditFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 135
    invoke-static {}, Lcom/oculus/horizon/settings/StoreCreditFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to fetch payment account information: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment$1;->this$0:Lcom/oculus/horizon/settings/StoreCreditFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment$1;->this$0:Lcom/oculus/horizon/settings/StoreCreditFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->access$200(Lcom/oculus/horizon/settings/StoreCreditFragment;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/api/commerce/PaymentAccountResponse;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment$1;->this$0:Lcom/oculus/horizon/settings/StoreCreditFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment$1;->this$0:Lcom/oculus/horizon/settings/StoreCreditFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/StoreCreditFragment;->access$000(Lcom/oculus/horizon/settings/StoreCreditFragment;Lcom/oculus/horizon/api/commerce/PaymentAccountResponse;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lcom/oculus/horizon/api/commerce/PaymentAccountResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/StoreCreditFragment$1;->onResponse(Lcom/oculus/horizon/api/commerce/PaymentAccountResponse;)V

    return-void
.end method
