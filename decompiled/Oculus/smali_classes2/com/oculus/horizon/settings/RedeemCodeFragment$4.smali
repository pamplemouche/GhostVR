.class Lcom/oculus/horizon/settings/RedeemCodeFragment$4;
.super Lcom/oculus/horizon/common/UICallback;
.source "RedeemCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/RedeemCodeFragment;->onSubmit()V
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
.field final synthetic this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/RedeemCodeFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$400(Lcom/oculus/horizon/settings/RedeemCodeFragment;)V

    .line 206
    const v0, 0x1cdb29

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$000(Lcom/oculus/horizon/settings/RedeemCodeFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    sget v2, Lcom/oculus/horizon/R$string;->commerce_redeem_code_failed:I

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    return-void

    .line 208
    :cond_0
    const v0, 0x1cdb2a

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$000(Lcom/oculus/horizon/settings/RedeemCodeFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    sget v2, Lcom/oculus/horizon/R$string;->commerce_redeem_code_already_redeemed:I

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$000(Lcom/oculus/horizon/settings/RedeemCodeFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    sget v2, Lcom/oculus/horizon/R$string;->commerce_redeem_code_failed:I

    .line 212
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$300(Lcom/oculus/horizon/settings/RedeemCodeFragment;Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V

    .line 201
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 197
    check-cast p1, Lcom/oculus/horizon/commerce/RedeemCodeResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;->onResponse(Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V

    return-void
.end method
