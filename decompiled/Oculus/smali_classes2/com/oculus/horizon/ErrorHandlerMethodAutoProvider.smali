.class public Lcom/oculus/horizon/ErrorHandlerMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ErrorHandlerMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lretrofit/ErrorHandler;",
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
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/oculus/horizon/ErrorHandlerMethodAutoProvider;->get()Lretrofit/ErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit/ErrorHandler;
    .locals 2

    .prologue
    .line 17
    const-string v0, "getMethod_retrofit.ErrorHandler"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-static {p0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->$ul_$xXXcom_oculus_horizon_debug_DebugErrorToaster$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    .line 21
    invoke-static {p0}, Lcom/oculus/http/core/LoggingErrorHandler;->$ul_$xXXcom_oculus_http_core_LoggingErrorHandler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/http/core/LoggingErrorHandler;

    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/oculus/horizon/HorizonModule;->provideErrorHandler(Lcom/oculus/horizon/debug/DebugErrorToaster;Lcom/oculus/http/core/LoggingErrorHandler;)Lretrofit/ErrorHandler;
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
