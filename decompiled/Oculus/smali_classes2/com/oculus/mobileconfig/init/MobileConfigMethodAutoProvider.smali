.class public Lcom/oculus/mobileconfig/init/MobileConfigMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "MobileConfigMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/mobileconfig/factory/MobileConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/mobileconfig/factory/MobileConfig;
    .locals 3

    .prologue
    .line 18
    const-string v0, "getMethod_com.facebook.mobileconfig.factory.MobileConfig"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImplModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfigManagerSingletonHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    move-result-object v0

    .line 22
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 23
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v2

    .line 20
    invoke-static {v0, v1, v2}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->provideMobileConfig(Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;Landroid/content/Context;Lcom/facebook/inject/Lazy;)Lcom/facebook/mobileconfig/factory/MobileConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 26
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
    .line 15
    invoke-virtual {p0}, Lcom/oculus/mobileconfig/init/MobileConfigMethodAutoProvider;->get()Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    return-object v0
.end method
