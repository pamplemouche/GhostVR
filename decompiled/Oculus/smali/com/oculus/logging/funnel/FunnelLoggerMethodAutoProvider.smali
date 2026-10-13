.class public Lcom/oculus/logging/funnel/FunnelLoggerMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "FunnelLoggerMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/funnellogger/core/FunnelLogger;",
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
.method public get()Lcom/facebook/funnellogger/core/FunnelLogger;
    .locals 1

    .prologue
    .line 15
    const-string v0, "getMethod_com.facebook.funnellogger.core.FunnelLogger"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/oculus/logging/funnel/FunnelLoggerManager;->$ul_$xXXcom_oculus_logging_funnel_FunnelLoggerManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/logging/funnel/FunnelLoggerManager;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/oculus/logging/funnel/OculusFunnelLoggerModule;->provideFunnelLogger(Lcom/oculus/logging/funnel/FunnelLoggerManager;)Lcom/facebook/funnellogger/core/FunnelLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 21
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
    invoke-virtual {p0}, Lcom/oculus/logging/funnel/FunnelLoggerMethodAutoProvider;->get()Lcom/facebook/funnellogger/core/FunnelLogger;

    move-result-object v0

    return-object v0
.end method
