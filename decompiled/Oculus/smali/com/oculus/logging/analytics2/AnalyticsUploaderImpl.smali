.class public Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;
.super Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;
.source "AnalyticsUploaderImpl.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# instance fields
.field private mAppInfo:Lcom/oculus/base/app/AppInfo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOkHttpClient:Lokhttp3/OkHttpClient;
    .annotation runtime Lcom/oculus/http/defaultclient/DefaultHttpClient;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserAgentString:Ljava/lang/String;
    .annotation runtime Lcom/oculus/http/useragent/UserAgentString;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;)V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/oculus/http/defaultclient/DefaultClientModule;->$ul_$xXXokhttp3_OkHttpClient$xXXcom_oculus_http_defaultclient_DefaultHttpClient$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {p0}, Lcom/oculus/base/app/AppInfoModule;->$ul_$xXXcom_oculus_base_app_AppInfo$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/base/app/AppInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->mAppInfo:Lcom/oculus/base/app/AppInfo;

    invoke-static {p0}, Lcom/oculus/http/useragent/UserAgentModule;->$ul_$xXXjava_lang_String$xXXcom_oculus_http_useragent_UserAgentString$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->mUserAgentString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {p1, p0}, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected getAccessToken()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->mAppInfo:Lcom/oculus/base/app/AppInfo;

    iget-object v1, v1, Lcom/oculus/base/app/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->mAppInfo:Lcom/oculus/base/app/AppInfo;

    iget-object v1, v1, Lcom/oculus/base/app/AppInfo;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->mUserAgentString:Ljava/lang/String;

    return-object v0
.end method
