.class Lcom/oculus/horizon/widget/EditPIN$1;
.super Ljava/lang/Object;
.source "EditPIN.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/EditPIN;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/EditPIN;

.field final synthetic val$nextDigit:Lcom/oculus/horizon/widget/CustomEditText;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/EditPIN;Lcom/oculus/horizon/widget/CustomEditText;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oculus/horizon/widget/EditPIN$1;->this$0:Lcom/oculus/horizon/widget/EditPIN;

    iput-object p2, p0, Lcom/oculus/horizon/widget/EditPIN$1;->val$nextDigit:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN$1;->val$nextDigit:Lcom/oculus/horizon/widget/CustomEditText;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN$1;->val$nextDigit:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN$1;->this$0:Lcom/oculus/horizon/widget/EditPIN;

    invoke-static {v0}, Lcom/oculus/horizon/widget/EditPIN;->access$000(Lcom/oculus/horizon/widget/EditPIN;)V

    .line 80
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
