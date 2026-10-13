.class Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$1;
.super Ljava/lang/Object;
.source "Nux360FBLoginAddEmailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->getMarketingEmailOptInStatus()Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->addEmail(Ljava/lang/String;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;)V

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    const-string v1, "register_attempt"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V

    .line 113
    return-void
.end method
