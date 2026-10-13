.class Lcom/oculus/horizon/store/StoreSearchFragment$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "StoreSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreSearchFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreSearchFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSearchFragment$1;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$1;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreSearchFragment;->access$002(Lcom/oculus/horizon/store/StoreSearchFragment;Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/Item;

    .line 108
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/common/Item;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$1;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/store/StoreSearchFragment;->access$002(Lcom/oculus/horizon/store/StoreSearchFragment;Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/Item;

    .line 103
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreSearchFragment$1;->onResponse(Lcom/oculus/horizon/api/common/Item;)V

    return-void
.end method
