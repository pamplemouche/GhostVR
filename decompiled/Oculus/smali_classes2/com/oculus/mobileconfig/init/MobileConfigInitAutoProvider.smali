.class public Lcom/oculus/mobileconfig/init/MobileConfigInitAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "MobileConfigInitAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/mobileconfig/init/MobileConfigInit;",
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
.method public get()Lcom/oculus/mobileconfig/init/MobileConfigInit;
    .locals 8

    .prologue
    .line 21
    const-string v0, "getMethod_com.oculus.mobileconfig.init.MobileConfigInit"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 23
    :try_start_0
    new-instance v0, Lcom/oculus/mobileconfig/init/MobileConfigInit;

    .line 24
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Candroid_content_Context$x3E$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v1

    .line 25
    invoke-static {p0}, Lcom/oculus/xanalytics/OculusXAnalyticsModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_facebook_xanalytics_XAnalyticsProvider$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v2

    .line 26
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Candroid_content_pm_PackageInfo$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v3

    .line 27
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_facebook_mobileconfig_factory_MobileConfig$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v4

    .line 28
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v5

    .line 29
    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v6

    .line 30
    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_errorreporting_ErrorReporter$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/oculus/mobileconfig/init/MobileConfigInit;-><init>(Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/inject/Lazy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
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
    invoke-virtual {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitAutoProvider;->get()Lcom/oculus/mobileconfig/init/MobileConfigInit;

    move-result-object v0

    return-object v0
.end method
