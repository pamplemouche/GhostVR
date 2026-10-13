.class Lcom/oculus/horizon/widget/CustomAlertDialog$1;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/CustomAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/CustomAlertDialog;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$1;->this$0:Lcom/oculus/horizon/widget/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$1;->this$0:Lcom/oculus/horizon/widget/CustomAlertDialog;

    invoke-static {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->access$200(Lcom/oculus/horizon/widget/CustomAlertDialog;)Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->onClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$1;->this$0:Lcom/oculus/horizon/widget/CustomAlertDialog;

    invoke-interface {v0, v1, p3}, Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$1;->this$0:Lcom/oculus/horizon/widget/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->dismiss()V

    .line 264
    :cond_0
    return-void
.end method
