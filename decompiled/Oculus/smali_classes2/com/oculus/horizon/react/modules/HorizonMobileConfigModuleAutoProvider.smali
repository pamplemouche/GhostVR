.class public Lcom/oculus/horizon/react/modules/HorizonMobileConfigModuleAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "HorizonMobileConfigModuleAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/react/modules/HorizonMobileConfigModule;",
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
.method public get()Lcom/oculus/horizon/react/modules/HorizonMobileConfigModule;
    .locals 6

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.horizon.react.modules.HorizonMobileConfigModule"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/react/modules/HorizonMobileConfigModule;

    .line 22
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 23
    invoke-static {p0}, Lcom/facebook/tigon/oktigon/OkTigonServiceHolder;->$ul_$xXXcom_facebook_tigon_oktigon_OkTigonServiceHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tigon/oktigon/OkTigonServiceHolder;

    move-result-object v2

    .line 24
    invoke-static {p0}, Lcom/oculus/xanalytics/OculusXAnalyticsProvider;->$ul_$xXXcom_oculus_xanalytics_OculusXAnalyticsProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/xanalytics/OculusXAnalyticsProvider;

    move-result-object v3

    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->$ul_$xXXcom_oculus_horizon_react_HorizonReactNativeHost$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/react/HorizonReactNativeHost;

    move-result-object v4

    .line 26
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/react/modules/HorizonMobileConfigModule;-><init>(Landroid/content/Context;Lcom/facebook/tigon/oktigon/OkTigonServiceHolder;Lcom/oculus/xanalytics/OculusXAnalyticsProvider;Lcom/oculus/horizon/react/HorizonReactNativeHost;Ljavax/inject/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
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
    invoke-virtual {p0}, Lcom/oculus/horizon/react/modules/HorizonMobileConfigModuleAutoProvider;->get()Lcom/oculus/horizon/react/modules/HorizonMobileConfigModule;

    move-result-object v0

    return-object v0
.end method
