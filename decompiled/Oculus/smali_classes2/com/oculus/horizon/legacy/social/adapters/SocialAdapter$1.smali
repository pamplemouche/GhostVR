.class Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$1;
.super Ljava/lang/Object;
.source "SocialAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->makeRemainingSpaceHeightProvider()Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$1;->this$0:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeightInPx()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$1;->this$0:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v0, v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 545
    :goto_0
    return v1

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$1;->this$0:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v0, v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 542
    :goto_1
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$1;->this$0:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v3, v3, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 543
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$1;->this$0:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v3, v3, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 545
    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method
