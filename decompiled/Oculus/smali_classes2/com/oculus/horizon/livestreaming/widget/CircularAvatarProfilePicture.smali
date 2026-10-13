.class public Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;
.super Landroid/widget/LinearLayout;
.source "CircularAvatarProfilePicture.java"


# instance fields
.field private final mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mUser:Lcom/oculus/horizon/api/common/user/User;

.field private final mUsernameLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;-><init>(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;-><init>(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 36
    invoke-direct {p0, p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUser:Lcom/oculus/horizon/api/common/user/User;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->circular_avatar_profile_picture:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    invoke-virtual {p0, v3}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->setOrientation(I)V

    .line 40
    invoke-virtual {p0, v4}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->setGravity(I)V

    .line 41
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    sget v0, Lcom/oculus/horizon/R$id;->username_label:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUsernameLabel:Landroid/widget/TextView;

    .line 49
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->avatar_image:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    if-eqz v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->avatar_image:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/ProfilePhoto;->uri:Ljava/lang/String;

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->setAvatarUri(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->setUsername(Ljava/lang/String;)V

    .line 57
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/ProfilePhoto;->uri:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUri(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 67
    return-void

    .line 64
    :cond_0
    sget v0, Lcom/oculus/horizon/R$drawable;->social_profile_picture_unset_large:I

    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->getUriForResourceId(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUsernameLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setUsernameVisible(Z)V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->mUsernameLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    return-void

    .line 74
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
