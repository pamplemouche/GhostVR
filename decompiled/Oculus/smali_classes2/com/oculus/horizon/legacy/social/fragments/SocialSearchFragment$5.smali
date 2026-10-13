.class Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SocialSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$5;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 154
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$5;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->access$300(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;->getItemCount()I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$5;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->access$400(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 158
    add-int/2addr v0, v2

    if-lt v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$5;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->access$300(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;->fetchMoreUsers()V

    .line 161
    :cond_0
    return-void
.end method
