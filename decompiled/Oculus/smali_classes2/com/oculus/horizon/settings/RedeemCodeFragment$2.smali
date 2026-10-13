.class Lcom/oculus/horizon/settings/RedeemCodeFragment$2;
.super Ljava/lang/Object;
.source "RedeemCodeFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/RedeemCodeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/RedeemCodeFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$2;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment$2;->this$0:Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->access$200(Lcom/oculus/horizon/settings/RedeemCodeFragment;)V

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
