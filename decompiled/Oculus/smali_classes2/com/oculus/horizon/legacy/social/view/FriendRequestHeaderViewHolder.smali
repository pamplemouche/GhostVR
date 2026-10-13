.class public Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "FriendRequestHeaderViewHolder.java"


# instance fields
.field private final mAcceptButton:Landroid/view/View;

.field private final mDenyButton:Landroid/view/View;

.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

.field private final mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/style/StyleManager;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 4

    .prologue
    .line 37
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_friend_request_header:I

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 41
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 42
    iput-object p5, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->accept_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mAcceptButton:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mAcceptButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->deny_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mDenyButton:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mDenyButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p4}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v1, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->deny_button_image_view:I

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/oculus/horizon/R$id;->accept_button_image_view:I

    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 67
    invoke-static {v2, v0, v1}, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->setTintedAcceptDenyActionDrawablesForHalloweenTheme(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->setButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    return-object v0
.end method

.method private setButtonsEnabled(Z)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mDenyButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequestHeader;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/oculus/horizon/social/model/FriendRequest;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 83
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequestHeader;

    if-eqz v0, :cond_2

    .line 84
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequestHeader;

    .line 85
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequestHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;

    invoke-interface {v0}, Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mUserId:Ljava/lang/String;

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/legacy/social/SocialManager;->isFriendRequestActionInProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->setButtonsEnabled(Z)V

    .line 91
    return-void

    :cond_1
    move v0, v1

    .line 80
    goto :goto_0

    .line 87
    :cond_2
    check-cast p1, Lcom/oculus/horizon/social/model/FriendRequest;

    iget-object v0, p1, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->mUserId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v2, v1

    .line 90
    goto :goto_2
.end method
