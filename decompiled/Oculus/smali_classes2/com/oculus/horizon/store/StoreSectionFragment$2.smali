.class Lcom/oculus/horizon/store/StoreSectionFragment$2;
.super Lcom/oculus/horizon/common/UICallback;
.source "StoreSectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSectionFragment;->fetchStores()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/api/store/StoresResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreSectionFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreSectionFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$102(Lcom/oculus/horizon/store/StoreSectionFragment;Z)Z

    .line 409
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$800(Lcom/oculus/horizon/store/StoreSectionFragment;)V

    .line 411
    invoke-static {}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->showErrorState()V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$902(Lcom/oculus/horizon/store/StoreSectionFragment;Z)Z

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/api/store/StoresResponse;)V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$102(Lcom/oculus/horizon/store/StoreSectionFragment;Z)Z

    .line 393
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$200(Lcom/oculus/horizon/store/StoreSectionFragment;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->getStoreModel()Lcom/oculus/horizon/store/StoreModel;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/store/StoreSectionFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$300(Lcom/oculus/horizon/store/StoreSectionFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$500(Lcom/oculus/horizon/store/StoreSectionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/store/StoreModel;->getStoreSection(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$402(Lcom/oculus/horizon/store/StoreSectionFragment;Lcom/oculus/horizon/store/StoreSection;)Lcom/oculus/horizon/store/StoreSection;

    .line 397
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/store/StoreSectionFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$600(Lcom/oculus/horizon/store/StoreSectionFragment;Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->showLoadedState()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    invoke-static {}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->showErrorState()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 389
    check-cast p1, Lcom/oculus/horizon/api/store/StoresResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreSectionFragment$2;->onResponse(Lcom/oculus/horizon/api/store/StoresResponse;)V

    return-void
.end method
