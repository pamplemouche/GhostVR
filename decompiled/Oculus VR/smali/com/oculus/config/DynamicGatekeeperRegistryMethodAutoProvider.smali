.class public Lcom/oculus/config/DynamicGatekeeperRegistryMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "DynamicGatekeeperRegistryMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;
    .locals 2

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.config.gatekeeper.DynamicGatekeeperRegistry"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/oculus/config/ConfigModule;->$ul_$xXXandroid_content_SharedPreferences$xXXcom_oculus_config_annotations_GatekeeperSharedPrefs$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    invoke-static {p0}, Lcom/oculus/config/ConfigModule;->$ul_$xXXjava_util_Set$x3Cjava_lang_String$x3E$xXXcom_oculus_config_annotations_GatekeeperSet$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/util/Set;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/oculus/config/ConfigModule;->provideDynamicGatekeeperStore(Landroid/content/SharedPreferences;Ljava/util/Set;)Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 22
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
    .line 12
    invoke-virtual {p0}, Lcom/oculus/config/DynamicGatekeeperRegistryMethodAutoProvider;->get()Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;

    move-result-object v0

    return-object v0
.end method
