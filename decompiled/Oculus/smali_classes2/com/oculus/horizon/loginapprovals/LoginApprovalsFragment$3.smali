.class Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$3;
.super Ljava/lang/Object;
.source "LoginApprovalsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$3;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$3;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->access$200(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method
