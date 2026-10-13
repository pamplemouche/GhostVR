.class Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "ConfirmPINActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->processRefund()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/commerce/RefundResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

.field final synthetic val$itemID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    iput-object p2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->val$itemID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$800(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;Lcom/oculus/http/core/base/ApiError;)V

    .line 356
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/commerce/RefundResponse;)V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$600(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->val$itemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoresManager;->getModel(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v0

    .line 336
    instance-of v1, v0, Lcom/oculus/horizon/store/StoreApplicationModel;

    if-eqz v1, :cond_0

    .line 337
    check-cast v0, Lcom/oculus/horizon/store/StoreApplicationModel;

    .line 339
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$700(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v1

    iget-object v2, v0, Lcom/oculus/horizon/store/StoreApplicationModel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$700(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v1

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreApplicationModel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->uninstall(Ljava/lang/String;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$600(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->clearCache()V

    .line 345
    invoke-static {}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully scheduled refund for item %s."

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->val$itemID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$200(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V

    .line 347
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->access$302(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;Z)Z

    .line 348
    invoke-static {}, Lcom/oculus/horizon/payments/RefundFlowModel;->getInstance()Lcom/oculus/horizon/payments/RefundFlowModel;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/RefundFlowModel$State;->REFUNDED:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->val$itemID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/payments/RefundFlowModel;->setState(Lcom/oculus/horizon/payments/RefundFlowModel$State;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->setResult(I)V

    .line 350
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->finish()V

    .line 351
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 332
    check-cast p1, Lcom/oculus/horizon/api/commerce/RefundResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;->onResponse(Lcom/oculus/horizon/api/commerce/RefundResponse;)V

    return-void
.end method
