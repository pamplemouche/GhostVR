.class Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$2;
.super Ljava/lang/Object;
.source "Nux360FBLoginConnectFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->setTextListener(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method
