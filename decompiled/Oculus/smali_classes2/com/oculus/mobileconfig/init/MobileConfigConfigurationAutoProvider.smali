.class public Lcom/oculus/mobileconfig/init/MobileConfigConfigurationAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "MobileConfigConfigurationAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;",
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
.method public get()Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;
    .locals 6

    .prologue
    .line 18
    const-string v0, "getMethod_com.oculus.mobileconfig.init.MobileConfigConfiguration"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v0, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;

    .line 21
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImplModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_facebook_mobileconfig_factory_MobileConfigManagerSingletonHolder$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v1

    .line 22
    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInit;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_mobileconfig_init_MobileConfigInit$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v2

    .line 23
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_facebook_mobileconfig_factory_MobileConfig$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v3

    .line 24
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v4

    .line 25
    invoke-static {p0}, Lcom/facebook/tigon/oktigon/OkTigonServiceHolder;->$ul_$xXXjavax_inject_Provider$x3Ccom_facebook_tigon_oktigon_OkTigonServiceHolder$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;-><init>(Ljavax/inject/Provider;Lcom/facebook/inject/Lazy;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
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
    invoke-virtual {p0}, Lcom/oculus/mobileconfig/init/MobileConfigConfigurationAutoProvider;->get()Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;

    move-result-object v0

    return-object v0
.end method
