.class public Lcom/oculus/horizon/fbconnectui/FBConnectActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "FBConnectActivity.java"


# instance fields
.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnectui/FBConnectActivity;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnectui/FBConnectActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnectui/FBConnectActivity;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private launchHorizonLinkedAccountsSetting()V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_oculus_horizon_account_link_external_session_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-class v1, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {p0, v1}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 53
    const-string v2, "extra_skip_roadblocks"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    const-string v2, "extra_start_linking"

    const-string v3, "link_account_facebook"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v2, "extra_calling_activity"

    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    const-string v2, "extra_oculus_horizon_account_link_external_session_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method private launchHorizonLogin()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/main/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {p0, p0}, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnectui/FBConnectActivity;)V

    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_CONNECT_REDIRECT:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->launchHorizonLogin()V

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->finish()V

    .line 41
    return-void

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;->launchHorizonLinkedAccountsSetting()V

    goto :goto_0
.end method
