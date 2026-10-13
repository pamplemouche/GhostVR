.class Lcom/oculus/horizon/pdp/PdpFragment$2;
.super Ljava/lang/Object;
.source "PdpFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 127
    iput-object p1, p0, Lcom/oculus/horizon/pdp/PdpFragment$2;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$2;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->access$100(Lcom/oculus/horizon/pdp/PdpFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment$2;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/PdpFragment;->access$200(Lcom/oculus/horizon/pdp/PdpFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$2;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->access$300(Lcom/oculus/horizon/pdp/PdpFragment;)Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;->onScrollChanged()V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$2;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->access$100(Lcom/oculus/horizon/pdp/PdpFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 135
    :cond_0
    return-void
.end method
