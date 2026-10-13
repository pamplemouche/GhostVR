.class Lcom/oculus/horizon/pdp/PdpFragment$3;
.super Lcom/oculus/horizon/common/UICallback;
.source "PdpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/PdpFragment;->fetchItemData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/api/common/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/PdpFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/PdpFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/oculus/horizon/pdp/PdpFragment$3;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$3;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->access$400(Lcom/oculus/horizon/pdp/PdpFragment;)V

    .line 236
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/common/Item;)V
    .locals 1

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$3;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->showErrorView()V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$3;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/pdp/PdpFragment;->onItemDetailsResponse(Lcom/oculus/horizon/api/common/Item;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/PdpFragment$3;->onResponse(Lcom/oculus/horizon/api/common/Item;)V

    return-void
.end method
