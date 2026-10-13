.class public Lcom/oculus/horizon/platformplugin/PlatformPluginManagerMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PlatformPluginManagerMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/platformplugin/PlatformPluginManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .locals 9

    .prologue
    .line 23
    const-string v0, "getMethod_com.oculus.horizon.platformplugin.PlatformPluginManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 26
    :try_start_0
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/vr/VRStateManager;->$ul_$xXXcom_oculus_horizon_vr_VRStateManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/vr/VRStateManager;

    move-result-object v1

    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v2

    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->$ul_$xXXcom_oculus_horizon_vr$x5Flifecycle_VRLifecycleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    move-result-object v3

    .line 30
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v4

    .line 31
    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v5

    .line 32
    invoke-static {p0}, Lcom/oculus/horizon/social/SocialMethods;->$ul_$xXXcom_oculus_horizon_social_SocialMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialMethods;

    move-result-object v6

    .line 33
    invoke-static {p0}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->$ul_$xXXcom_oculus_horizon_notifications_core_NotificationBuilder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    move-result-object v7

    .line 34
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v8

    .line 25
    invoke-static/range {v0 .. v8}, Lcom/oculus/horizon/platformplugin/PlatformPluginModule;->providePlatformPluginManager(Landroid/content/Context;Lcom/oculus/horizon/vr/VRStateManager;Lcom/oculus/horizon/profile/UserProfileHelper;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;Lcom/oculus/horizon/logging/OculusLogger;Lcom/oculus/util/device/DeviceUtils;Lcom/oculus/horizon/social/SocialMethods;Lcom/oculus/horizon/notifications/core/NotificationBuilder;Lcom/facebook/mobileconfig/factory/MobileConfig;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 37
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
    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManagerMethodAutoProvider;->get()Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    return-object v0
.end method
