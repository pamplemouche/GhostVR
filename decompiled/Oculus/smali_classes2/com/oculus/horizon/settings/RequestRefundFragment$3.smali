.class Lcom/oculus/horizon/settings/RequestRefundFragment$3;
.super Ljava/lang/Object;
.source "RequestRefundFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/RequestRefundFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

.field final synthetic val$dialog:Lcom/oculus/horizon/widget/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/RequestRefundFragment;Lcom/oculus/horizon/widget/CustomAlertDialog;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$3;->this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$3;->val$dialog:Lcom/oculus/horizon/widget/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 168
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$3;->val$dialog:Lcom/oculus/horizon/widget/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$3;->this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->access$200(Lcom/oculus/horizon/settings/RequestRefundFragment;)Lcom/oculus/horizon/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->clearFocus()V

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$3;->val$dialog:Lcom/oculus/horizon/widget/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->show()V

    .line 172
    :cond_0
    return-void
.end method
