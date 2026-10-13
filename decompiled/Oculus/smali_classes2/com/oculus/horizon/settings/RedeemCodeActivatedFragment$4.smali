.class Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;
.super Lcom/oculus/horizon/common/UICallback;
.source "RedeemCodeActivatedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->claimSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/commerce/RedeemCodeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$600(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)V

    .line 358
    const v0, 0x1cdb29

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    sget v2, Lcom/oculus/horizon/R$string;->commerce_redeem_code_failed:I

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$700(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void

    .line 360
    :cond_0
    const v0, 0x1cdb2a

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    sget v2, Lcom/oculus/horizon/R$string;->commerce_redeem_code_already_redeemed:I

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$700(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    sget v2, Lcom/oculus/horizon/R$string;->commerce_redeem_code_claim_bundle_failed:I

    .line 365
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p1, v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v0, v1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$700(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->access$500(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V

    .line 353
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 349
    check-cast p1, Lcom/oculus/horizon/commerce/RedeemCodeResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;->onResponse(Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V

    return-void
.end method
