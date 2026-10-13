.class Lcom/oculus/horizon/pdp/PdpFragment$1;
.super Ljava/lang/Object;
.source "PdpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/PdpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/PdpFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/PdpFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oculus/horizon/pdp/PdpFragment$1;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$1;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment$1;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    iget-object v2, v2, Lcom/oculus/horizon/pdp/PdpFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
