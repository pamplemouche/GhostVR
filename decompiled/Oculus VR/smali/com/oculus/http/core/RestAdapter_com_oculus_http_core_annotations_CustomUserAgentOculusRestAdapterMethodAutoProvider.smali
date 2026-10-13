.class public Lcom/oculus/http/core/RestAdapter_com_oculus_http_core_annotations_CustomUserAgentOculusRestAdapterMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "RestAdapter_com_oculus_http_core_annotations_CustomUserAgentOculusRestAdapterMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lretrofit/RestAdapter;",
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
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/oculus/http/core/RestAdapter_com_oculus_http_core_annotations_CustomUserAgentOculusRestAdapterMethodAutoProvider;->get()Lretrofit/RestAdapter;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit/RestAdapter;
    .locals 4

    .prologue
    .line 16
    const-string v0, "getMethod_retrofit.RestAdapter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXokhttp3_OkHttpClient$xXXcom_oculus_http_customuseragentclient_CustomUserAgentHttpClient$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/oculus/http/core/endpoint/EndpointModule;->$ul_$xXXjava_lang_String$xXXcom_oculus_http_core_annotations_OculusApiEndpoint$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_ErrorHandler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/ErrorHandler;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_RestAdapter_LogLevel$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/RestAdapter$LogLevel;

    move-result-object v3

    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/http/core/ApiModule;->provideCustomUserAgentOculusRestAdapter(Lokhttp3/OkHttpClient;Ljava/lang/String;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
