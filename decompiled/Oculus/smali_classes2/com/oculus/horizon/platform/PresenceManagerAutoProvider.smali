.class public Lcom/oculus/horizon/platform/PresenceManagerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PresenceManagerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/platform/PresenceManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/platform/PresenceManager;
    .locals 9

    .prologue
    .line 21
    const-string v0, "getMethod_com.oculus.horizon.platform.PresenceManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 23
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/platform/PresenceManager;

    .line 24
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 25
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_RestAdapter$xXXcom_oculus_http_core_annotations_OculusRestAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/RestAdapter;

    move-result-object v2

    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/platform/PlatformContext;->$ul_$xXXcom_oculus_horizon_platform_PlatformContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platform/PlatformContext;

    move-result-object v3

    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginModule;->$ul_$xXXcom_oculus_horizon_platformplugin_PlatformPluginManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v4

    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v5

    .line 29
    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibrary$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v6

    .line 30
    invoke-static {p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_vr$x5Flifecycle_VRLifecycleSessionManager$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v7

    .line 31
    invoke-static {p0}, Lcom/oculus/horizon/chromecast/interfaces/ChromecastInterfacesModule;->$ul_$xXXcom_oculus_horizon_chromecast_interfaces_ChromecastManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/chromecast/interfaces/ChromecastManager;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/oculus/horizon/platform/PresenceManager;-><init>(Landroid/content/Context;Lretrofit/RestAdapter;Lcom/oculus/horizon/platform/PlatformContext;Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Lcom/oculus/horizon/profile/UserProfileHelper;Lcom/oculus/libraryapi/OVRLibrary;Lcom/facebook/inject/Lazy;Lcom/oculus/horizon/chromecast/interfaces/ChromecastManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
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
    .line 18
    invoke-virtual {p0}, Lcom/oculus/horizon/platform/PresenceManagerAutoProvider;->get()Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v0

    return-object v0
.end method
