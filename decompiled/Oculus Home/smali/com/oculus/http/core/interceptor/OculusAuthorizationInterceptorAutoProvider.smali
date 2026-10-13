.class public Lcom/oculus/http/core/interceptor/OculusAuthorizationInterceptorAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "OculusAuthorizationInterceptorAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/http/core/interceptor/OculusAuthorizationInterceptor;",
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
.method public get()Lcom/oculus/http/core/interceptor/OculusAuthorizationInterceptor;
    .locals 2

    .prologue
    .line 14
    const-string v1, "getMethod_com.oculus.http.core.interceptor.OculusAuthorizationInterceptor"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/http/core/interceptor/OculusAuthorizationInterceptor;

    invoke-direct {v0, p0}, Lcom/oculus/http/core/interceptor/OculusAuthorizationInterceptor;-><init>(Lcom/facebook/inject/InjectorLike;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .local v0, "instance":Lcom/oculus/http/core/interceptor/OculusAuthorizationInterceptor;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Lcom/oculus/http/core/interceptor/OculusAuthorizationInterceptor;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/oculus/http/core/interceptor/OculusAuthorizationInterceptorAutoProvider;->get()Lcom/oculus/http/core/interceptor/OculusAuthorizationInterceptor;

    move-result-object v0

    return-object v0
.end method
