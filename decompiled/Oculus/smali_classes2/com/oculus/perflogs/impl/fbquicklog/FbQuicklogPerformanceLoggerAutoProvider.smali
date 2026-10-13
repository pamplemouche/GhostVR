.class public Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLoggerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "FbQuicklogPerformanceLoggerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLogger;",
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
.method public get()Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLogger;
    .locals 2

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.perflogs.impl.fbquicklog.FbQuicklogPerformanceLogger"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLogger;

    .line 17
    invoke-static {p0}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;->$ul_$xXXcom_oculus_perflogs_impl_fbquicklog_PerfLogsHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLogger;-><init>(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;)V
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
    invoke-virtual {p0}, Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLoggerAutoProvider;->get()Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLogger;

    move-result-object v0

    return-object v0
.end method
