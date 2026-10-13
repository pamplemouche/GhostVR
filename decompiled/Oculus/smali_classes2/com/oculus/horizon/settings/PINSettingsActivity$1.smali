.class Lcom/oculus/horizon/settings/PINSettingsActivity$1;
.super Ljava/lang/Object;
.source "PINSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PINSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PINSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PINSettingsActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oculus/horizon/settings/PINSettingsActivity$1;->this$0:Lcom/oculus/horizon/settings/PINSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity$1;->this$0:Lcom/oculus/horizon/settings/PINSettingsActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->access$200(Lcom/oculus/horizon/settings/PINSettingsActivity;)Lcom/oculus/horizon/settings/PINSettingsPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/PINSettingsActivity$1;->this$0:Lcom/oculus/horizon/settings/PINSettingsActivity;

    .line 55
    invoke-static {v1}, Lcom/oculus/horizon/settings/PINSettingsActivity;->access$000(Lcom/oculus/horizon/settings/PINSettingsActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/PINSettingsActivity$1;->this$0:Lcom/oculus/horizon/settings/PINSettingsActivity;

    .line 56
    invoke-static {v2}, Lcom/oculus/horizon/settings/PINSettingsActivity;->access$100(Lcom/oculus/horizon/settings/PINSettingsActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/settings/PINSettingsPresenter;->performPINChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
