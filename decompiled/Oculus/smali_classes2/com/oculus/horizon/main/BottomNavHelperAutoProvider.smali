.class public Lcom/oculus/horizon/main/BottomNavHelperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "BottomNavHelperAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/main/BottomNavHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/main/BottomNavHelper;
    .locals 8

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.horizon.main.BottomNavHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/main/BottomNavHelper;

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/legacy/feed/FeedModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Ffeed$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v2

    .line 23
    invoke-static {p0}, Lcom/oculus/horizon/events/EventsModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fevents$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v3

    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v4

    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v5

    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/libraryui/LibraryBadgeCountTracker;->$ul_$xXXcom_oculus_horizon_libraryui_LibraryBadgeCountTracker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/LibraryBadgeCountTracker;

    move-result-object v6

    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/main/BottomNavHelper;-><init>(Lcom/facebook/inject/InjectorLike;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/style/StyleManager;Lcom/oculus/horizon/libraryui/LibraryBadgeCountTracker;Lcom/oculus/horizon/logging/OculusLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
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
    .line 16
    invoke-virtual {p0}, Lcom/oculus/horizon/main/BottomNavHelperAutoProvider;->get()Lcom/oculus/horizon/main/BottomNavHelper;

    move-result-object v0

    return-object v0
.end method
