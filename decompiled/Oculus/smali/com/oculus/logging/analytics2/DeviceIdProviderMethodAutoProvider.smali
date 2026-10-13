.class public Lcom/oculus/logging/analytics2/DeviceIdProviderMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "DeviceIdProviderMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/analytics2/logger/DeviceIdProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/analytics2/logger/DeviceIdProvider;
    .locals 2

    .prologue
    .line 17
    const-string v0, "getMethod_com.facebook.analytics2.logger.DeviceIdProvider"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/oculus/logging/analytics2/Analytics2LoggerModule;->provideDeviceIdProvider(Landroid/content/Context;Lcom/oculus/util/device/DeviceUtils;)Lcom/facebook/analytics2/logger/DeviceIdProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

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
    .line 14
    invoke-virtual {p0}, Lcom/oculus/logging/analytics2/DeviceIdProviderMethodAutoProvider;->get()Lcom/facebook/analytics2/logger/DeviceIdProvider;

    move-result-object v0

    return-object v0
.end method
