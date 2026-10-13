.class Lcom/oculus/horizon/widget/CustomAlertDialog$2;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/CustomAlertDialog;->setupButton(IILjava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/CustomAlertDialog;

.field final synthetic val$listener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/CustomAlertDialog;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;I)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$2;->this$0:Lcom/oculus/horizon/widget/CustomAlertDialog;

    iput-object p2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$2;->val$listener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    iput p3, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$2;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$2;->val$listener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$2;->val$listener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$2;->this$0:Lcom/oculus/horizon/widget/CustomAlertDialog;

    iget v2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$2;->val$which:I

    invoke-interface {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$2;->this$0:Lcom/oculus/horizon/widget/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->dismiss()V

    .line 319
    :cond_1
    return-void
.end method
