.class Lcom/oculus/horizon/login/LoginFragment$3;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/login/LoginFragment;->setupTextListener(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/login/LoginFragment;

.field final synthetic val$textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/login/LoginFragment;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginFragment$3;->this$0:Lcom/oculus/horizon/login/LoginFragment;

    iput-object p2, p0, Lcom/oculus/horizon/login/LoginFragment$3;->val$textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment$3;->val$textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method
