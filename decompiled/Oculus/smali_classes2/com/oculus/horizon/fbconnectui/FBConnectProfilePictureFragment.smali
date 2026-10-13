.class public Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "FBConnectProfilePictureFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFBConnectMethods:Lcom/oculus/horizon/fbconnect/FBConnectMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsInNuxFlow:Z

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectMethods;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mFBConnectMethods:Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    invoke-static {p0}, Lcom/oculus/horizon/camera/CameraModule;->$ul_$xXXcom_oculus_horizon_camera_ProfilePictureFileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mIsInNuxFlow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->openNextFragment()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->importFacebookProfilePicture()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)Lcom/oculus/horizon/legacy/social/MeManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    return-object v0
.end method

.method private importFacebookProfilePicture()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "select_facebook"

    iget-boolean v2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mIsInNuxFlow:Z

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportImportFacebookPictureEvent(Ljava/lang/String;Z)V

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mFBConnectMethods:Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    new-instance v1, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$3;-><init>(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectMethods;->importFacebookProfilePicture(Lretrofit/Callback;)V

    .line 184
    invoke-direct {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->openNextFragment()V

    .line 185
    return-void
.end method

.method private openNextFragment()V
    .locals 3

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mIsInNuxFlow:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const v1, 0x10018000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_SETTINGS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    .line 153
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    .line 159
    invoke-virtual {v1}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newFriendsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->makeTopLevel()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    goto :goto_0
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_CONNECT_IMPORT_FACEBOOK_PICTURE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "back"

    iget-boolean v2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mIsInNuxFlow:Z

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportImportFacebookPictureEvent(Ljava/lang/String;Z)V

    .line 133
    invoke-direct {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->openNextFragment()V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V

    .line 60
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_NUX_FLOW:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mIsInNuxFlow:Z

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 68
    sget v0, Lcom/oculus/horizon/R$layout;->fbconnect_profile_picture_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 123
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->FRIENDS:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v2, Lcom/oculus/horizon/R$string;->fbconnect_profile_picture:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;IZ)V

    .line 125
    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainActivity;->getTitleBarHelper()Lcom/oculus/horizon/main/TitleBarHelper;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;->NONE:Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/TitleBarHelper;->setLeftIcon(Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;)V

    .line 127
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    sget v0, Lcom/oculus/horizon/R$id;->current_profile_picture:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;

    .line 77
    new-instance v1, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$1;-><init>(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    .line 90
    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    .line 89
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->getProfilePictureControllerForMe(Lcom/facebook/drawee/view/DraweeView;)Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v0

    .line 88
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 92
    sget v0, Lcom/oculus/horizon/R$id;->facebook_profile_picture:I

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;

    .line 94
    new-instance v1, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$2;-><init>(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 103
    const-string v2, "arg_fb_user_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    .line 109
    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    const-string v3, "https://ghostvr.pamplemouche.com/fb-graph/%s/picture?type=large"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 110
    invoke-static {v3, v4}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->getProfilePictureControllerForMe(Lcom/facebook/drawee/view/DraweeView;Ljava/lang/String;)Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v0

    .line 107
    invoke-virtual {v2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 111
    return-void
.end method
