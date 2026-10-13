.class public Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "SelectableUserViewHolder.java"


# instance fields
.field private final mAlias:Landroid/widget/TextView;

.field private final mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mCheckMark:Landroid/widget/ImageView;

.field private final mName:Landroid/widget/TextView;

.field private mSelectableUser:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

.field private final mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

.field private final mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;)V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SELECTABLE_USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_selectable_friend:I

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 36
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 37
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mName:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->alias:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mAlias:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->check_mark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mCheckMark:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSelectableUser:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 60
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 61
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSelectableUser:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSelectableUser:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    iget-object v2, v2, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;->user:Lcom/oculus/horizon/api/common/user/User;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/User;->avatar:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/oculus/horizon/api/common/user/ProfilePhoto;)V

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSelectableUser:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    iget-object v1, v1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;->user:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mAlias:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSelectableUser:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    iget-object v1, v1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;->user:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 68
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mCheckMark:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->mSelectableUser:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    iget-boolean v0, v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;->selected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
