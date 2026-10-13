.class public Lcom/oculus/config/updater/ConfigUpdaterJobSchedulerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ConfigUpdaterJobSchedulerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/config/updater/ConfigUpdaterJobScheduler;",
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
.method public get()Lcom/oculus/config/updater/ConfigUpdaterJobScheduler;
    .locals 3

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.config.updater.ConfigUpdaterJobScheduler"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/config/updater/ConfigUpdaterJobScheduler;

    .line 18
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/oculus/config/updater/ConfigUpdaterModule;->$ul_$xXXjava_lang_Long$xXXcom_oculus_config_annotations_ConfigRefreshInterval$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/config/updater/ConfigUpdaterJobScheduler;-><init>(Landroid/content/Context;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    invoke-virtual {p0}, Lcom/oculus/config/updater/ConfigUpdaterJobSchedulerAutoProvider;->get()Lcom/oculus/config/updater/ConfigUpdaterJobScheduler;

    move-result-object v0

    return-object v0
.end method
