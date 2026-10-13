.class public Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "HeaderViewHolder.java"


# instance fields
.field private final mCount:Landroid/widget/TextView;

.field private final mNotifications:Landroid/widget/TextView;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_header:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 25
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mResources:Landroid/content/res/Resources;

    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->notifications:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mNotifications:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mCount:Landroid/widget/TextView;

    .line 30
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 34
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 35
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;

    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    iget v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->labelResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-boolean v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->showBadge:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mNotifications:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    :goto_0
    iget-boolean v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->showCount:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_1
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mNotifications:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mNotifications:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mCount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/HeaderViewHolder;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/oculus/horizon/R$string;->social_header_count_template:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->list:Ljava/util/List;

    .line 53
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
