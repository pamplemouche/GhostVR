.class public Lcom/oculus/horizon/accountlinking/dropbox/RestAdapter_com_oculus_horizon_accountlinking_dropbox_annotation_DropboxRestAdapterMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "RestAdapter_com_oculus_horizon_accountlinking_dropbox_annotation_DropboxRestAdapterMethodAutoProvider.java"


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
    .line 17
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/oculus/horizon/accountlinking/dropbox/RestAdapter_com_oculus_horizon_accountlinking_dropbox_annotation_DropboxRestAdapterMethodAutoProvider;->get()Lretrofit/RestAdapter;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit/RestAdapter;
    .locals 6

    .prologue
    .line 20
    const-string v0, "getMethod_retrofit.RestAdapter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/oculus/http/common/HttpModule;->$ul_$xXXokhttp3_OkHttpClient$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 24
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_ErrorHandler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/ErrorHandler;

    move-result-object v1

    .line 25
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_RestAdapter_LogLevel$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/RestAdapter$LogLevel;

    move-result-object v2

    .line 26
    invoke-static {p0}, Lcom/oculus/http/core/interceptor/UserAgentInterceptor;->$ul_$xXXcom_oculus_http_core_interceptor_UserAgentInterceptor$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/http/core/interceptor/UserAgentInterceptor;

    move-result-object v3

    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/accountlinking/dropbox/interceptor/DropboxAPIInterceptor;->$ul_$xXXcom_oculus_horizon_accountlinking_dropbox_interceptor_DropboxAPIInterceptor$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/accountlinking/dropbox/interceptor/DropboxAPIInterceptor;

    move-result-object v4

    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/accountlinking/dropbox/interceptor/DropboxAuthorizationInterceptor;->$ul_$xXXcom_oculus_horizon_accountlinking_dropbox_interceptor_DropboxAuthorizationInterceptor$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/accountlinking/dropbox/interceptor/DropboxAuthorizationInterceptor;

    move-result-object v5

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIModule;->provideDropboxRestAdapter(Lokhttp3/OkHttpClient;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$LogLevel;Lcom/oculus/http/core/interceptor/UserAgentInterceptor;Lcom/oculus/horizon/accountlinking/dropbox/interceptor/DropboxAPIInterceptor;Lcom/oculus/horizon/accountlinking/dropbox/interceptor/DropboxAuthorizationInterceptor;)Lretrofit/RestAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
