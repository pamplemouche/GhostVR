.class Lcom/oculus/horizon/widget/EditPIN$2;
.super Ljava/lang/Object;
.source "EditPIN.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

.field final synthetic val$currentDigit:Lcom/oculus/horizon/widget/CustomEditText;

.field final synthetic val$previousDigit:Lcom/oculus/horizon/widget/CustomEditText;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/EditPIN;Lcom/oculus/horizon/widget/CustomEditText;Lcom/oculus/horizon/widget/CustomEditText;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oculus/horizon/widget/EditPIN$2;->this$0:Lcom/oculus/horizon/widget/EditPIN;

    iput-object p2, p0, Lcom/oculus/horizon/widget/EditPIN$2;->val$previousDigit:Lcom/oculus/horizon/widget/CustomEditText;

    iput-object p3, p0, Lcom/oculus/horizon/widget/EditPIN$2;->val$currentDigit:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x43

    if-eq p2, v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN$2;->val$previousDigit:Lcom/oculus/horizon/widget/CustomEditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN$2;->val$currentDigit:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN$2;->val$previousDigit:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN$2;->val$previousDigit:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/widget/EditPIN$2;->val$currentDigit:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v0, 0x1

    goto :goto_0
.end method
