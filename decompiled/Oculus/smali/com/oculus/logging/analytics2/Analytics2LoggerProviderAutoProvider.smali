.class public Lcom/oculus/logging/analytics2/Analytics2LoggerProviderAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "Analytics2LoggerProviderAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/logging/analytics2/Analytics2LoggerProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/logging/analytics2/Analytics2LoggerProvider;
    .locals 2

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.logging.analytics2.Analytics2LoggerProvider"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/logging/analytics2/Analytics2LoggerProvider;

    .line 17
    invoke-static {p0}, Lcom/oculus/logging/analytics2/Analytics2LoggerModule;->$ul_$xXXcom_facebook_analytics2_logger_DeviceIdProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/analytics2/logger/DeviceIdProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oculus/logging/analytics2/Analytics2LoggerProvider;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/facebook/analytics2/logger/DeviceIdProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
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
    .line 11
    invoke-virtual {p0}, Lcom/oculus/logging/analytics2/Analytics2LoggerProviderAutoProvider;->get()Lcom/oculus/logging/analytics2/Analytics2LoggerProvider;

    move-result-object v0

    return-object v0
.end method
