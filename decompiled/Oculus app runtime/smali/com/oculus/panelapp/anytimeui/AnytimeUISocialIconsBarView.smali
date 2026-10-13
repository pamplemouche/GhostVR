.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;
.source "AnytimeUISocialIconsBarView.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ViewState$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;,
        Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;
    }
.end annotation


# static fields
.field private static final CLOSE_ACTION_RESULT:Ljava/lang/String; = "close"

.field public static final DIALOG_LAUNCH_SOURCE_AUI_CHATHEAD:Ljava/lang/String; = "anytime_ui_party_chathead"

.field public static final DIALOG_LAUNCH_SOURCE_KEY:Ljava/lang/String; = "source"

.field public static final DIALOG_URI_PARAMETER_SELF:Ljava/lang/String; = "self"

.field public static final DIALOG_URI_PARAMETER_USER:Ljava/lang/String; = "user"

.field public static final DIALOG_URI_PROFILE_ROOT:Ljava/lang/String;

.field public static final DIALOG_URI_PROFILE_SELF:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionListener:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;

.field private mActiveDialogRoute:Ljava/lang/String;

.field private mCachedRoute:Ljava/lang/String;

.field private mInviteIcon:Landroid/widget/ImageView;

.field private mPartyMembers:Landroid/widget/LinearLayout;

.field private final mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

.field private mReportIcon:Landroid/widget/ImageView;

.field private mSelfProfileIcon:Landroid/widget/ImageView;

.field private mSelfProfileUrl:Ljava/lang/String;

.field private mSocialIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_PROFILE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    .line 39
    invoke-virtual {v1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->DIALOG_URI_PROFILE_ROOT:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->DIALOG_URI_PROFILE_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "self"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->DIALOG_URI_PROFILE_SELF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 553
    new-instance p2, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$1;)V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mActionListener:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;

    .line 48
    new-instance p2, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    invoke-direct {p2, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    .line 50
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileUrl:Ljava/lang/String;

    return-void
.end method

.method private applyActiveState(Landroid/view/View;Z)V
    .locals 2

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$anim;->anytime_ui_social_icon_hover:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 143
    invoke-static {v0, p2}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->setInterpolator(Landroid/view/animation/Animation;Z)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private applyHoverAnimation(Landroid/view/View;Z)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->applyActiveState(Landroid/view/View;Z)V

    return-void
.end method

.method private getDialogTypeFromRoute(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;
    .locals 1

    .line 476
    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_SEND_INVITE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/SystemUXRoute;->isSamePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->INVITE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    return-object p1

    .line 478
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_PARTY_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/SystemUXRoute;->isSamePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->PARTY_MANAGEMENT:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    return-object p1

    .line 480
    :cond_1
    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_PROFILE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/SystemUXRoute;->isSamePath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 481
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->PROFILE:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    return-object p1

    .line 483
    :cond_2
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->UNKNOWN:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    return-object p1
.end method

.method private getMemberDataForUserId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getCurrentPartyInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getMembers()Ljava/util/List;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    .line 462
    iget-object v2, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMemberImageUrl(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;)Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->smallImageUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->avatarImageUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getProfileUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMemberImageViewForUserId(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPartyMembers:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 440
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPartyMembers:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 441
    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_party_member:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 442
    instance-of v4, v3, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    if-eqz v4, :cond_0

    .line 443
    check-cast v3, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    iget-object v3, v3, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMemberViews(Ljava/util/List;Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;",
            ">;",
            "Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 364
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 375
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mActiveDialogRoute:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getUserParamFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    .line 378
    iget-object v3, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 381
    iget-object v3, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getMemberImageViewForUserId(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 385
    sget v7, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_party_member:I

    .line 386
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    .line 387
    sget v9, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_render_flags:I

    .line 389
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    .line 390
    sget v10, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 392
    invoke-direct {p0, v7}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getMemberImageUrl(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getMemberImageUrl(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v7, v7, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->online:Z

    iget-boolean v11, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->online:Z

    if-ne v7, v11, :cond_1

    if-ne v9, p2, :cond_1

    .line 395
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 396
    :goto_2
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    :cond_2
    move-object v3, v5

    const/4 v7, 0x0

    .line 402
    :goto_3
    new-instance v11, Landroid/widget/ImageView;

    .line 403
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/oculus/panelapp/anytimeui/R$style;->AnytimeSocialIconTheme:I

    invoke-direct {v11, v9, v5, v6, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 404
    sget v5, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_party_member:I

    invoke-virtual {v11, v5, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 405
    sget v5, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_render_flags:I

    invoke-virtual {v11, v5, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 406
    sget v5, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v11, v5, v9}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 408
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/oculus/panelapp/anytimeui/R$dimen;->social_icon_layout_width:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 409
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/oculus/panelapp/anytimeui/R$dimen;->social_icon_layout_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 410
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v5, v5

    float-to-int v9, v9

    invoke-direct {v10, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_3

    .line 415
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v7, :cond_6

    .line 418
    :cond_4
    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    .line 420
    invoke-direct {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getMemberImageUrl(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v9, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->online:Z

    if-nez v3, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    move-object v4, v5

    move-object v5, v11

    move-object v6, v7

    move v7, v9

    move-object v9, p2

    .line 418
    invoke-virtual/range {v4 .. v10}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;Z)V

    .line 427
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->DIALOG_URI_PROFILE_ROOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-direct {p0, v11, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setAction(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private getResourceIDForInviteIcon(ZZ)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 532
    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_party_selected:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_party_deselected:I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_invite_selected:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_invite_deselected:I

    :goto_0
    return p1
.end method

.method private getUserParamFromRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 494
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "user"

    .line 495
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 497
    :catch_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Failed to retrieve user param from route: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private setAction(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 503
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_action_uri:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 504
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mActionListener:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/oculus/vrshell/panels/ViewState;->setViewStateListeners(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnClickListener;Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private updateDialogComponentIfNeeded()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mCachedRoute:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updateDialogComponent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mCachedRoute:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/logging/AUILogging;->logInvalidCallOrder(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    :cond_0
    return-void
.end method

.method private updateIconState(Ljava/lang/String;Z)V
    .locals 2

    .line 226
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getDialogTypeFromRoute(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$2;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISocialIconsBarView$DialogType:[I

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$DialogType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getUserParamFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "self"

    .line 235
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updateSelfProfileViewSelection(Z)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updatePartyMemberViewSelection(Ljava/lang/String;Z)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updatePartyControlViewSelection(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateMemberViews()V
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPartyMembers:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getCurrentPartyInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->isInParty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 323
    :goto_0
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 326
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getResourceIDForInviteIcon(ZZ)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v2, "anytime_ui_party_chathead"

    const-string v3, "source"

    if-nez v1, :cond_2

    .line 330
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_SEND_INVITE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    .line 332
    invoke-virtual {v1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setAction(Landroid/view/View;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPartyMembers:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void

    .line 341
    :cond_2
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v4, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_PARTY_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    .line 343
    invoke-virtual {v4}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 344
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setAction(Landroid/view/View;Ljava/lang/String;)V

    .line 348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getMembers()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->NORMAL:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    invoke-direct {p0, v0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getMemberViews(Ljava/util/List;Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;)Ljava/util/List;

    move-result-object v0

    .line 349
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPartyMembers:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 354
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 355
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPartyMembers:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private updatePartyControlViewSelection(Z)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getCurrentPartyInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->isInParty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getResourceIDForInviteIcon(ZZ)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updatePartyMemberViewSelection(Ljava/lang/String;Z)V
    .locals 7

    .line 277
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getMemberImageViewForUserId(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    .line 278
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getMemberDataForUserId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    .line 287
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getMemberImageUrl(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->online:Z

    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_render_flags:I

    .line 290
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    const/4 v6, 0x0

    move v4, p2

    .line 285
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;Z)V

    return-void
.end method

.method private updateSelfProfileView()V
    .locals 9

    .line 295
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mActiveDialogRoute:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getUserParamFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "self"

    .line 299
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 300
    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileUrl:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 301
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileIcon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewToDefaultProfilePicture(Landroid/widget/ImageView;ZZ)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileIcon:Landroid/widget/ImageView;

    const/4 v5, 0x1

    sget-object v7, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->NORMAL:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    const/4 v8, 0x0

    move v6, v0

    invoke-virtual/range {v2 .. v8}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;Z)V

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileIcon:Landroid/widget/ImageView;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private updateSelfProfileViewSelection(Z)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileIcon:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 268
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updateSelfProfileView()V

    return-void
.end method


# virtual methods
.method public applyClickAnimation(Landroid/view/View;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 159
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 161
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$anim;->anytime_ui_social_icon_click:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->setInterpolator(Landroid/view/animation/Animation;)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public frame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 59
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isSocialIconsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setVisibility(I)V

    const-string v1, "aui_v2"

    .line 66
    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isFeatureFlagEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->social_icons_report:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 69
    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->BLOCKANDREPORT:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setAction(Landroid/view/View;Ljava/lang/String;)V

    .line 70
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_MESSAGES_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->social_icons_social_panel:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSocialIcon:Landroid/widget/ImageView;

    .line 74
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSocialIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSocialIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->FRIENDS:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setAction(Landroid/view/View;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSocialIcon:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_REPORT_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 80
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->social_icons_report:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mReportIcon:Landroid/widget/ImageView;

    .line 81
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mReportIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mReportIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->BLOCKANDREPORT:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setAction(Landroid/view/View;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mReportIcon:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 86
    :cond_3
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PARTY_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 87
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->social_icons_invite:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    .line 88
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_SEND_INVITE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    .line 90
    invoke-virtual {v1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "source"

    const-string v2, "anytime_ui_party_chathead"

    .line 91
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 93
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setAction(Landroid/view/View;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->social_icons_other_profiles:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPartyMembers:Landroid/widget/LinearLayout;

    .line 99
    :cond_4
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->social_icons_self_profile:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileIcon:Landroid/widget/ImageView;

    .line 100
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileIcon:Landroid/widget/ImageView;

    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->DIALOG_URI_PROFILE_SELF:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->setAction(Landroid/view/View;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileIcon:Landroid/widget/ImageView;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updateDialogComponentIfNeeded()V

    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 119
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->applyClickAnimation(Landroid/view/View;)V

    .line 120
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewEnter(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->applyHoverAnimation(Landroid/view/View;Z)V

    .line 109
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewExit(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->applyHoverAnimation(Landroid/view/View;Z)V

    return-void
.end method

.method public setLocalUserInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isSocialIconsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileUrl:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getProfileUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileUrl:Ljava/lang/String;

    .line 176
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mSelfProfileUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updateSelfProfileView()V

    :cond_2
    return-void
.end method

.method public updateDialogComponent(Ljava/lang/String;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mInviteIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 206
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mCachedRoute:Ljava/lang/String;

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mActiveDialogRoute:Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mActiveDialogRoute:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 216
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updateIconState(Ljava/lang/String;Z)V

    return-void
.end method

.method public updatePartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isSocialIconsEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->updateMemberViews()V

    return-void
.end method
