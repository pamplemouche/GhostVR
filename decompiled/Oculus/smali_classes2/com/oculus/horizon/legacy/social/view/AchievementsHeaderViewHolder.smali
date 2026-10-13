.class public Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "AchievementsHeaderViewHolder.java"


# instance fields
.field private final mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

.field private final mCoverImageView:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_achievements_header:I

    const/4 v2, 0x0

    .line 26
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 28
    instance-of v0, p2, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 29
    check-cast p2, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->cover_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;->mCoverImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->pdp_button:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 45
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter$CoverImage;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;->mCoverImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;->bindCoverImage(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 47
    return-void
.end method
