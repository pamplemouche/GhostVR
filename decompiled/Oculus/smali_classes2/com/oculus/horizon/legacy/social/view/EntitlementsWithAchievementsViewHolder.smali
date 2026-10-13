.class public Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "EntitlementsWithAchievementsViewHolder.java"


# instance fields
.field private final mFirst:Landroid/widget/LinearLayout;

.field private final mFirstImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mFirstTitle:Landroid/widget/TextView;

.field private final mSecond:Landroid/widget/LinearLayout;

.field private final mSecondImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mSecondTitle:Landroid/widget/TextView;

.field private final mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ENTITLEMENTS_WITH_ACHIEVEMENTS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_entitlements_with_achievements:I

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 36
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 40
    instance-of v0, p2, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 41
    check-cast p2, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->first_entitlement:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mFirst:Landroid/widget/LinearLayout;

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->first_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mFirstImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->first_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mFirstTitle:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->second_entitlement:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSecond:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->second_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSecondImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->second_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSecondTitle:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    return-object v0
.end method

.method private setImage(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    .line 89
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 90
    invoke-virtual {v0, p3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPlaceholderImage(I)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 93
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/util/AspectRatioControllerListener;

    invoke-direct {v1, p1}, Lcom/oculus/horizon/util/AspectRatioControllerListener;-><init>(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 96
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 97
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 54
    instance-of v0, p1, Landroid/util/Pair;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 55
    check-cast p1, Landroid/util/Pair;

    .line 58
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;->item:Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;->cover_square_image:Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Image;

    .line 59
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mFirstImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Image;->uri:Ljava/lang/String;

    :goto_0
    sget v3, Lcom/oculus/horizon/R$drawable;->oculus_placeholder:I

    invoke-direct {p0, v2, v0, v3}, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->setImage(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;I)V

    .line 60
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mFirstTitle:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;->item:Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;->display_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mFirst:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$1;

    invoke-direct {v2, p0, p1}, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;Landroid/util/Pair;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSecond:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;->item:Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;->cover_square_image:Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Image;

    .line 72
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSecondImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Image;->uri:Ljava/lang/String;

    :cond_0
    sget v0, Lcom/oculus/horizon/R$drawable;->oculus_placeholder:I

    invoke-direct {p0, v2, v1, v0}, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->setImage(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;I)V

    .line 73
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSecondTitle:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;->item:Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;->display_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSecond:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;Landroid/util/Pair;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->mSecond:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
