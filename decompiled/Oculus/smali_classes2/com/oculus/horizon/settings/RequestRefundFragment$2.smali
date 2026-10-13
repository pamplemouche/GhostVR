.class Lcom/oculus/horizon/settings/RequestRefundFragment$2;
.super Ljava/lang/Object;
.source "RequestRefundFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


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

.field final synthetic val$reasons:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/RequestRefundFragment;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$2;->this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$2;->val$reasons:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$2;->this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-static {v0, p2}, Lcom/oculus/horizon/settings/RequestRefundFragment;->access$002(Lcom/oculus/horizon/settings/RequestRefundFragment;I)I

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$2;->this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->access$100(Lcom/oculus/horizon/settings/RequestRefundFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$2;->this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->access$200(Lcom/oculus/horizon/settings/RequestRefundFragment;)Lcom/oculus/horizon/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->requestFocus()Z

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$2;->this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->access$200(Lcom/oculus/horizon/settings/RequestRefundFragment;)Lcom/oculus/horizon/widget/CustomEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$2;->val$reasons:[Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$2;->this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-static {v2}, Lcom/oculus/horizon/settings/RequestRefundFragment;->access$000(Lcom/oculus/horizon/settings/RequestRefundFragment;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomEditText;->setText(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment$2;->this$0:Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->access$300(Lcom/oculus/horizon/settings/RequestRefundFragment;)Lcom/oculus/horizon/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->requestFocus()Z

    .line 149
    const/4 v0, 0x0

    return v0
.end method
