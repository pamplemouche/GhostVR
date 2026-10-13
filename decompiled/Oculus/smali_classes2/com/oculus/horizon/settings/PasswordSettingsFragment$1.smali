.class Lcom/oculus/horizon/settings/PasswordSettingsFragment$1;
.super Ljava/lang/Object;
.source "PasswordSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PasswordSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PasswordSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->access$300(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsFragment;

    .line 64
    invoke-static {v1}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->access$000(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsFragment;

    .line 65
    invoke-static {v2}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->access$100(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsFragment;

    .line 66
    invoke-static {v3}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->access$200(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->onSaveInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
