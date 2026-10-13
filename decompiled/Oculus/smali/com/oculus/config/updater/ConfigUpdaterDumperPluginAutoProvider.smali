.class public Lcom/oculus/config/updater/ConfigUpdaterDumperPluginAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ConfigUpdaterDumperPluginAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/config/updater/ConfigUpdaterDumperPlugin;",
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
.method public get()Lcom/oculus/config/updater/ConfigUpdaterDumperPlugin;
    .locals 4

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.config.updater.ConfigUpdaterDumperPlugin"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/config/updater/ConfigUpdaterDumperPlugin;

    .line 19
    invoke-static {p0}, Lcom/oculus/config/ConfigModule;->$ul_$xXXcom_oculus_config_gatekeeper_GatekeeperRegistry$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/gatekeeper/GatekeeperRegistry;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/config/ConfigController;->$ul_$xXXcom_oculus_config_ConfigController$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/ConfigController;

    move-result-object v2

    .line 21
    invoke-static {p0}, Lcom/oculus/config/updater/ConfigUpdater;->$ul_$xXXcom_oculus_config_updater_ConfigUpdater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/config/updater/ConfigUpdaterDumperPlugin;-><init>(Lcom/oculus/config/gatekeeper/GatekeeperRegistry;Lcom/oculus/config/ConfigController;Lcom/oculus/config/updater/ConfigUpdater;)V
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
    invoke-virtual {p0}, Lcom/oculus/config/updater/ConfigUpdaterDumperPluginAutoProvider;->get()Lcom/oculus/config/updater/ConfigUpdaterDumperPlugin;

    move-result-object v0

    return-object v0
.end method
