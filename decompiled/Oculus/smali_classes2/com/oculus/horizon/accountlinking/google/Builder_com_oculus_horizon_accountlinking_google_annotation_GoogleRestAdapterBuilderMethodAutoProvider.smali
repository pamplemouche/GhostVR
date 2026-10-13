.class public Lcom/oculus/horizon/accountlinking/google/Builder_com_oculus_horizon_accountlinking_google_annotation_GoogleRestAdapterBuilderMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "Builder_com_oculus_horizon_accountlinking_google_annotation_GoogleRestAdapterBuilderMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lretrofit/RestAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/oculus/horizon/accountlinking/google/Builder_com_oculus_horizon_accountlinking_google_annotation_GoogleRestAdapterBuilderMethodAutoProvider;->get()Lretrofit/RestAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit/RestAdapter$Builder;
    .locals 5

    .prologue
    .line 19
    const-string v0, "getMethod_retrofit.RestAdapter.Builder"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 22
    :try_start_0
    invoke-static {p0}, Lcom/oculus/http/common/HttpModule;->$ul_$xXXokhttp3_OkHttpClient$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 23
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_ErrorHandler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/ErrorHandler;

    move-result-object v1

    .line 24
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_RestAdapter_LogLevel$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/RestAdapter$LogLevel;

    move-result-object v2

    .line 25
    invoke-static {p0}, Lcom/oculus/http/core/interceptor/UserAgentInterceptor;->$ul_$xXXcom_oculus_http_core_interceptor_UserAgentInterceptor$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/http/core/interceptor/UserAgentInterceptor;

    move-result-object v3

    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/accountlinking/google/interceptor/GoogleAuthorizationInterceptor;->$ul_$xXXcom_oculus_horizon_accountlinking_google_interceptor_GoogleAuthorizationInterceptor$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/accountlinking/google/interceptor/GoogleAuthorizationInterceptor;

    move-result-object v4

    .line 21
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/accountlinking/google/GoogleAPIModule;->provideGoogleRestAdapterBuilder(Lokhttp3/OkHttpClient;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$LogLevel;Lcom/oculus/http/core/interceptor/UserAgentInterceptor;Lcom/oculus/horizon/accountlinking/google/interceptor/GoogleAuthorizationInterceptor;)Lretrofit/RestAdapter$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
