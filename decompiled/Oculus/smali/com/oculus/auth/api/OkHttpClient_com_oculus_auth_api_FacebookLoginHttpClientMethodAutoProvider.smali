.class public Lcom/oculus/auth/api/OkHttpClient_com_oculus_auth_api_FacebookLoginHttpClientMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "OkHttpClient_com_oculus_auth_api_FacebookLoginHttpClientMethodAutoProvider.java"


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
    .line 17
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/oculus/auth/api/OkHttpClient_com_oculus_auth_api_FacebookLoginHttpClientMethodAutoProvider;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/OkHttpClient;
    .locals 6

    .prologue
    .line 20
    const-string v0, "getMethod_okhttp3.OkHttpClient"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/oculus/http/common/HttpModule;->$ul_$xXXokhttp3_OkHttpClient$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 24
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 25
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_content_pm_PackageInfo$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 26
    invoke-static {p0}, Lcom/oculus/http/useragent/UserAgentModule;->$ul_$xXXjava_lang_String$xXXcom_oculus_http_useragent_UserAgentString$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v4

    .line 28
    invoke-static {p0}, Lcom/oculus/auth/api/FacebookAuthorizationInterceptor;->$ul_$xXXcom_oculus_auth_api_FacebookAuthorizationInterceptor$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/api/FacebookAuthorizationInterceptor;

    move-result-object v5

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/oculus/auth/api/ApiModule;->provideFacebookLoginHttpClient(Lokhttp3/OkHttpClient;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljavax/inject/Provider;Lcom/oculus/auth/api/FacebookAuthorizationInterceptor;)Lokhttp3/OkHttpClient;
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
