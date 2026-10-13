.class Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RefreshableSocialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$3;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->isRefreshSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$3;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 78
    add-int/lit8 v0, v1, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-ltz v1, :cond_0

    .line 79
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 80
    if-nez v2, :cond_2

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 88
    :cond_1
    return-void

    .line 82
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gtz v2, :cond_3

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 78
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 86
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
