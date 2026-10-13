.class Lcom/oculus/horizon/settings/RedeemCodeFragment$1;
.super Ljava/lang/Object;
.source "RedeemCodeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/RedeemCodeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/RedeemCodeFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$1;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$1;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$000(Lcom/oculus/horizon/settings/RedeemCodeFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$1;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$000(Lcom/oculus/horizon/settings/RedeemCodeFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$1;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$000(Lcom/oculus/horizon/settings/RedeemCodeFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$1;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$100(Lcom/oculus/horizon/settings/RedeemCodeFragment;Landroid/text/Editable;)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$1;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$000(Lcom/oculus/horizon/settings/RedeemCodeFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
