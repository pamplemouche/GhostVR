.class public Lcom/oculus/mobileconfig/dumper/MobileConfigDumperPluginAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "MobileConfigDumperPluginAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/mobileconfig/dumper/MobileConfigDumperPlugin;",
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
.method public get()Lcom/oculus/mobileconfig/dumper/MobileConfigDumperPlugin;
    .locals 6

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.mobileconfig.dumper.MobileConfigDumperPlugin"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/mobileconfig/dumper/MobileConfigDumperPlugin;

    .line 22
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 23
    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_facebook_mobileconfig_factory_MobileConfig$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v2

    .line 24
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImplModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_facebook_mobileconfig_factory_MobileConfigManagerSingletonHolder$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v3

    .line 25
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigDebugUtil;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfigDebugUtil$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfigDebugUtil;

    move-result-object v4

    .line 26
    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;->$ul_$xXXcom_oculus_mobileconfig_init_MobileConfigConfiguration$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/mobileconfig/dumper/MobileConfigDumperPlugin;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/mobileconfig/factory/MobileConfigDebugUtil;Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;)V
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
    invoke-virtual {p0}, Lcom/oculus/mobileconfig/dumper/MobileConfigDumperPluginAutoProvider;->get()Lcom/oculus/mobileconfig/dumper/MobileConfigDumperPlugin;

    move-result-object v0

    return-object v0
.end method
