.class public Lcom/oculus/mobileconfig/init/MobileConfigLogoutHandlerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "MobileConfigLogoutHandlerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/mobileconfig/init/MobileConfigLogoutHandler;",
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
.method public get()Lcom/oculus/mobileconfig/init/MobileConfigLogoutHandler;
    .locals 4

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.mobileconfig.init.MobileConfigLogoutHandler"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/mobileconfig/init/MobileConfigLogoutHandler;

    .line 19
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImplModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_facebook_mobileconfig_factory_MobileConfigManagerSingletonHolder$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_facebook_mobileconfig_factory_MobileConfig$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v2

    .line 21
    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInit;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_mobileconfig_init_MobileConfigInit$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/mobileconfig/init/MobileConfigLogoutHandler;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/inject/Lazy;)V
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
    invoke-virtual {p0}, Lcom/oculus/mobileconfig/init/MobileConfigLogoutHandlerAutoProvider;->get()Lcom/oculus/mobileconfig/init/MobileConfigLogoutHandler;

    move-result-object v0

    return-object v0
.end method
