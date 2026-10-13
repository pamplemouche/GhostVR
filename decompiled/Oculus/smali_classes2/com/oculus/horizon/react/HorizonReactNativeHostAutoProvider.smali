.class public Lcom/oculus/horizon/react/HorizonReactNativeHostAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "HorizonReactNativeHostAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/react/HorizonReactNativeHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/react/HorizonReactNativeHost;
    .locals 4

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.horizon.react.HorizonReactNativeHost"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/react/HorizonReactNativeHost;

    .line 19
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/debug/DebugMode;->$ul_$xXXcom_oculus_debug_DebugMode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/debug/DebugMode;

    move-result-object v2

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/react/HorizonReactModule;->$ul_$xXXcom_facebook_react_bridge_ReactMarker_MarkerListener$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oculus/horizon/react/HorizonReactNativeHost;-><init>(Lcom/facebook/inject/InjectorLike;Landroid/content/Context;Lcom/oculus/debug/DebugMode;Lcom/facebook/react/bridge/ReactMarker$MarkerListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
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
    .line 13
    invoke-virtual {p0}, Lcom/oculus/horizon/react/HorizonReactNativeHostAutoProvider;->get()Lcom/oculus/horizon/react/HorizonReactNativeHost;

    move-result-object v0

    return-object v0
.end method
