.class public Lcom/oculus/http/useragent/UserAgentFactoryAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "UserAgentFactoryAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/http/useragent/UserAgentFactory;",
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
.method public get()Lcom/oculus/http/useragent/UserAgentFactory;
    .locals 5

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.http.useragent.UserAgentFactory"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/http/useragent/UserAgentFactory;

    .line 20
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 21
    invoke-static {p0}, Lcom/oculus/http/useragent/UserAgentModule;->$ul_$xXXjava_lang_String$xXXcom_oculus_http_useragent_AppNameInUserAgent$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_content_pm_PackageInfo$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 23
    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/http/useragent/UserAgentFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljavax/inject/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
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
    .line 14
    invoke-virtual {p0}, Lcom/oculus/http/useragent/UserAgentFactoryAutoProvider;->get()Lcom/oculus/http/useragent/UserAgentFactory;

    move-result-object v0

    return-object v0
.end method
