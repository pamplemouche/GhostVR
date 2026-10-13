.class public Lcom/oculus/http/common/OkHttpClientMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "OkHttpClientMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lokhttp3/OkHttpClient;",
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
    invoke-virtual {p0}, Lcom/oculus/http/common/OkHttpClientMethodAutoProvider;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/OkHttpClient;
    .locals 5

    .prologue
    .line 17
    const-string v0, "getMethod_okhttp3.OkHttpClient"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-static {p0}, Lcom/oculus/http/common/HttpModule;->$ul_$xXXcom_facebook_http_config_SocketConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/http/config/SocketConfig;

    move-result-object v0

    .line 21
    invoke-static {p0}, Lcom/oculus/http/common/HttpModule;->$ul_$xXXokhttp3_CertificatePinner$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lokhttp3/CertificatePinner;

    move-result-object v1

    .line 22
    invoke-static {p0}, Lcom/oculus/http/common/HttpModule;->$ul_$xXXokhttp3_ConnectionSpec$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lokhttp3/ConnectionSpec;

    move-result-object v2

    .line 23
    invoke-static {p0}, Lcom/facebook/common/manifest/ManifestModule;->$ul_$xXXcom_facebook_common_manifest_AppBuildInfo$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/manifest/AppBuildInfo;

    move-result-object v3

    .line 24
    invoke-static {p0}, Lcom/oculus/debug/DebugMode;->$ul_$xXXcom_oculus_debug_DebugMode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/debug/DebugMode;

    move-result-object v4

    .line 19
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/http/common/HttpModule;->provideOkHttpClient(Lcom/facebook/http/config/SocketConfig;Lokhttp3/CertificatePinner;Lokhttp3/ConnectionSpec;Lcom/facebook/common/manifest/AppBuildInfo;Lcom/oculus/debug/DebugMode;)Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
