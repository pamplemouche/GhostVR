.class public Lcom/oculus/common/init/impl/AppInitializerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "AppInitializerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/common/init/impl/AppInitializer;",
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
.method public get()Lcom/oculus/common/init/impl/AppInitializer;
    .locals 4

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.common.init.impl.AppInitializer"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/common/init/impl/AppInitializer;

    .line 19
    invoke-static {p0}, Lcom/oculus/common/init/AppInitModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Cjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$x3E$xXXcom_oculus_common_init_NeedsHighPriorityInit$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/common/init/AppInitModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Cjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v2

    .line 21
    invoke-static {p0}, Lcom/oculus/perflogs/OculusPerformanceLoggerModule;->$ul_$xXXcom_oculus_perflogs_OculusPerformanceLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/perflogs/OculusPerformanceLogger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/common/init/impl/AppInitializer;-><init>(Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;Lcom/oculus/perflogs/OculusPerformanceLogger;)V
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
    invoke-virtual {p0}, Lcom/oculus/common/init/impl/AppInitializerAutoProvider;->get()Lcom/oculus/common/init/impl/AppInitializer;

    move-result-object v0

    return-object v0
.end method
