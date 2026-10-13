.class public Lcom/oculus/horizon/livestreaming/PartyCallManagerImplAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PartyCallManagerImplAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;
    .locals 9

    .prologue
    .line 22
    const-string v0, "getMethod_com.oculus.horizon.livestreaming.PartyCallManagerImpl"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 24
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    .line 25
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 26
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_app_NotificationManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/app/NotificationManager;

    move-result-object v2

    .line 27
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v3

    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v4

    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->$ul_$xXXcom_oculus_horizon_client$x5Fpreferences_api_ClientPreferencesMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    move-result-object v5

    .line 30
    invoke-static {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginModule;->$ul_$xXXcom_oculus_horizon_platformplugin_PlatformPluginManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v6

    .line 31
    invoke-static {p0}, Lcom/oculus/horizon/parties/api/PartyMethods;->$ul_$xXXcom_oculus_horizon_parties_api_PartyMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/parties/api/PartyMethods;

    move-result-object v7

    .line 32
    invoke-static {p0}, Lcom/oculus/horizon/social/SocialUtils;->$ul_$xXXcom_oculus_horizon_social_SocialUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialUtils;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/facebook/mobileconfig/factory/MobileConfig;Lcom/oculus/horizon/profile/UserProfileHelper;Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Lcom/oculus/horizon/parties/api/PartyMethods;Lcom/oculus/horizon/social/SocialUtils;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImplAutoProvider;->get()Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    return-object v0
.end method
