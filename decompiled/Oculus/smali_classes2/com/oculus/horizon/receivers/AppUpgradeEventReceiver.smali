.class public Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "AppUpgradeEventReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# instance fields
.field private mAppInfo:Lcom/oculus/base/app/AppInfo;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/base/app/AppInfoModule;->$ul_$xXXcom_oculus_base_app_AppInfo$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/base/app/AppInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;->mAppInfo:Lcom/oculus/base/app/AppInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p1, p0}, Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;)V

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/receivers/AppUpgradeEventReceiver;->mAppInfo:Lcom/oculus/base/app/AppInfo;

    iget-object v0, v0, Lcom/oculus/base/app/AppInfo;->appId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/rti/push/client/FbnsClient;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
