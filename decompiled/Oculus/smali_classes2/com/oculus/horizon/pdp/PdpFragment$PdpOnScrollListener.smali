.class Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;
.super Ljava/lang/Object;
.source "PdpFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/PdpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PdpOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/PdpFragment;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/pdp/PdpFragment;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/pdp/PdpFragment;Lcom/oculus/horizon/pdp/PdpFragment$1;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;-><init>(Lcom/oculus/horizon/pdp/PdpFragment;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->access$100(Lcom/oculus/horizon/pdp/PdpFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->access$500(Lcom/oculus/horizon/pdp/PdpFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->access$500(Lcom/oculus/horizon/pdp/PdpFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->access$100(Lcom/oculus/horizon/pdp/PdpFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 363
    :cond_0
    return-void

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
