.class public Lcom/oculus/horizon/fbconnectui/FBConnectFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "FBConnectFragment.java"


# instance fields
.field private mBanner:Landroid/widget/FrameLayout;

.field private mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mDisclaimer:Landroid/widget/LinearLayout;

.field private mDisclaimerIntro:Landroid/widget/TextView;

.field private final mFBConnectDelegate:Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

.field private mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFBConnectMethods:Lcom/oculus/horizon/fbconnect/FBConnectMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsContentSharingEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_content_sharing"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsInNuxFlow:Z

.field private mNotYouDialog:Landroid/app/Dialog;

.field private mNotYouLink:Landroid/widget/TextView;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSocialContext:Landroid/widget/FrameLayout;

.field private mSocialContextCount:Landroid/widget/TextView;

.field private mSocialContextFacepile:Landroid/widget/LinearLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectMethods;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectMethods:Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectHorizonModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fcontent$x5Fsharing$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mIsContentSharingEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;-><init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectDelegate:Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->showConnectToFacebook()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->showContinueAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectMethods;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectMethods:Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->reportEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->onAccountLinkingError(Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->onAccountLinkingSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/widget/ProgressButton;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->onProxyInstallSuccess(Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V

    return-void
.end method

.method private buildFacepile(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContextFacepile:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 454
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 455
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriend;

    .line 456
    invoke-direct {p0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->createFacepileImageView(I)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    .line 457
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriend;->profile_photo_uri:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    :cond_0
    sget v0, Lcom/oculus/horizon/R$drawable;->social_profile_picture_unset_large:I

    .line 459
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->getUriForResourceId(I)Landroid/net/Uri;

    move-result-object v0

    .line 458
    invoke-virtual {v2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 464
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContextFacepile:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 461
    :cond_1
    const/4 v3, 0x0

    iget-object v0, v0, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriend;->profile_photo_uri:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/oculus/horizon/legacy/social/adapters/AvatarHelper;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :cond_2
    return-void
.end method

.method private createFacepileImageView(I)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 490
    new-instance v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 491
    invoke-virtual {v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->asCircle()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 493
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$dimen;->fbconnect_disclaimer_social_context_avatar_size:I

    .line 494
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 496
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/oculus/horizon/R$dimen;->fbconnect_disclaimer_social_context_avatar_margin_left:I

    .line 497
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 499
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 500
    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v4, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 501
    invoke-virtual {v2, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    return-object v2
.end method

.method private createOnSDKConnectClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;-><init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V

    return-object v0
.end method

.method private createOnSSOConnectClickListener(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;-><init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private onAccountLinkingError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 440
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 441
    if-eqz p1, :cond_0

    .line 442
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_error_generic_title:I

    .line 443
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_error_generic_message:I

    .line 444
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    const/4 v2, 0x0

    .line 445
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->show()V

    .line 449
    :cond_0
    return-void
.end method

.method private onAccountLinkingSuccess(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 423
    const-string v1, "arg_fb_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v1, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_NUX_FLOW:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mIsInNuxFlow:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    sget-object v1, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_SETTINGS:Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_SETTINGS:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 425
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 430
    const-class v2, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;

    .line 431
    invoke-static {v1, v2, v0}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 432
    iget-boolean v2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mIsInNuxFlow:Z

    if-eqz v2, :cond_0

    .line 433
    const-string v2, "extra_skip_roadblocks"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 435
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 436
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v4}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 437
    return-void
.end method

.method private onProxyInstallSuccess(Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iget-object v1, p1, Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;->facebook_account:Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setCurrentFBAccount(Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;)V

    .line 418
    iget-object v0, p1, Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;->facebook_account:Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;

    iget-object v0, v0, Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;->facebook_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->onAccountLinkingSuccess(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private openMainStore()V
    .locals 3

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    const v1, 0x10018000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 512
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 513
    return-void
.end method

.method private reportEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-boolean v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mIsInNuxFlow:Z

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFindFacebookFriendsEvent(Ljava/lang/String;Z)V

    .line 517
    return-void
.end method

.method private showConnectToFacebook()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 308
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mBanner:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContext:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouLink:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_connect_to_facebook:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setText(I)V

    .line 313
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-direct {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->createOnSDKConnectClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mDisclaimerIntro:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_by_opting_to_connect_you_agree:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 316
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mDisclaimer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 319
    const-string v0, "showing_sdk"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->reportEvent(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private showContinueAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;)V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 332
    if-eqz p4, :cond_2

    iget-object v0, p4, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;->nodes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget v0, p4, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;->count:I

    if-lez v0, :cond_2

    move v3, v4

    .line 335
    :goto_0
    if-eqz v3, :cond_0

    .line 336
    iget-object v5, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContextCount:Landroid/widget/TextView;

    iget v0, p4, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;->count:I

    if-ne v0, v4, :cond_3

    sget v0, Lcom/oculus/horizon/R$string;->fbconnect_1_of_your_friends_has_connected:I

    .line 338
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p4, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;->nodes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->buildFacepile(Ljava/util/ArrayList;)V

    .line 344
    :cond_0
    iget-object v5, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mBanner:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 345
    iget-object v5, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContext:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouLink:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    sget v3, Lcom/oculus/horizon/R$string;->fbconnect_continue_as:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/ProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 350
    invoke-direct {p0, p2, p3}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->createOnSSOConnectClickListener(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 349
    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mDisclaimerIntro:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->fbconnect_by_opting_to_continue_you_agree:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mDisclaimer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    if-eqz p4, :cond_1

    iget-object v1, p4, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;->nodes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget v2, p4, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;->count:I

    :cond_1
    iget-boolean v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mIsInNuxFlow:Z

    invoke-virtual {v0, v2, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFindFacebookFriendsShowingSSO(IZ)V

    .line 359
    return-void

    :cond_2
    move v3, v2

    .line 332
    goto :goto_0

    .line 338
    :cond_3
    sget v0, Lcom/oculus/horizon/R$string;->fbconnect_x_of_your_friends_have_connected:I

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p4, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;->count:I

    .line 340
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 339
    invoke-virtual {p0, v0, v6}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 344
    goto :goto_2

    :cond_5
    move v0, v1

    .line 345
    goto :goto_3
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_CONNECT_FIND_FACEBOOK_FRIENDS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/base/OculusBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 300
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->onActivityResultLinkingAccount(IILandroid/content/Intent;)V

    .line 301
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V

    .line 192
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_NUX_FLOW:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mIsInNuxFlow:Z

    .line 195
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 470
    sget v0, Lcom/oculus/horizon/R$menu;->common_skip:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 471
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 472
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->setHasOptionsMenu(Z)V

    .line 201
    sget v0, Lcom/oculus/horizon/R$layout;->fbconnect_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setFBConnectDelegate(Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;)V

    .line 277
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 278
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mDisclaimer:Landroid/widget/LinearLayout;

    .line 280
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mBanner:Landroid/widget/FrameLayout;

    .line 281
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContext:Landroid/widget/FrameLayout;

    .line 282
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContextCount:Landroid/widget/TextView;

    .line 283
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContextFacepile:Landroid/widget/LinearLayout;

    .line 285
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mDisclaimerIntro:Landroid/widget/TextView;

    .line 286
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 288
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 291
    :cond_0
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouLink:Landroid/widget/TextView;

    .line 292
    iput-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouDialog:Landroid/app/Dialog;

    .line 294
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 295
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_skip:I

    if-ne v0, v1, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->openMainStore()V

    .line 478
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->cancelFetchFBData()V

    .line 270
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 271
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 485
    sget v0, Lcom/oculus/horizon/R$id;->action_skip:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mIsInNuxFlow:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 487
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 253
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->startFetchFBData()V

    .line 257
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 258
    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->FRIENDS:Lcom/oculus/horizon/mainnavigation/NavItem;

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mIsContentSharingEnabled:Ljavax/inject/Provider;

    .line 260
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_link_facebook_account:I

    :goto_0
    const/4 v3, 0x0

    .line 258
    invoke-virtual {v0, v2, v1, v3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;IZ)V

    .line 264
    return-void

    .line 260
    :cond_0
    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_find_facebook_friends:I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 208
    sget v0, Lcom/oculus/horizon/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 209
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_disclaimer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mDisclaimer:Landroid/widget/LinearLayout;

    .line 211
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_banner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mBanner:Landroid/widget/FrameLayout;

    .line 212
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_social_context:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContext:Landroid/widget/FrameLayout;

    .line 213
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_social_context_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContextCount:Landroid/widget/TextView;

    .line 214
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_social_context_facepile:I

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mSocialContextFacepile:Landroid/widget/LinearLayout;

    .line 217
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_disclaimer_intro:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mDisclaimerIntro:Landroid/widget/TextView;

    .line 218
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_connect_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mConnectButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 220
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    .line 221
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_not_you:I

    .line 222
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_not_you_message:I

    .line 223
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    const/4 v2, 0x0

    .line 224
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouDialog:Landroid/app/Dialog;

    .line 226
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_not_you:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouLink:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mNotYouLink:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$2;-><init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mFBConnectDelegate:Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setFBConnectDelegate(Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;)V

    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->mIsContentSharingEnabled:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_disclaimer_subtitle_sdk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_connect_and_share_with_fb_friends:I

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_disclaimer_subtitle_sso:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_connect_and_share_with_fb_friends:I

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_disclaimer_content_sharing:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_0
    return-void
.end method
