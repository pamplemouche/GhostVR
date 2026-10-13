.class Lcom/oculus/horizon/settings/StoreOrdersFragment$2;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "StoreOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/StoreOrdersFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/commerce/OrdersResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/StoreOrdersFragment;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment$2;->this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 180
    invoke-static {}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to fetch orders: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment$2;->this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment$2;->this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->access$300(Lcom/oculus/horizon/settings/StoreOrdersFragment;)V

    .line 185
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment$2;->this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->access$400(Lcom/oculus/horizon/settings/StoreOrdersFragment;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/api/commerce/OrdersResponse;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment$2;->this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment$2;->this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->access$100(Lcom/oculus/horizon/settings/StoreOrdersFragment;Lcom/oculus/horizon/api/commerce/OrdersResponse;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Lcom/oculus/horizon/api/commerce/OrdersResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/StoreOrdersFragment$2;->onResponse(Lcom/oculus/horizon/api/commerce/OrdersResponse;)V

    return-void
.end method
