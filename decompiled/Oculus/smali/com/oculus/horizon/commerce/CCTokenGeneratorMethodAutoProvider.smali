.class public Lcom/oculus/horizon/commerce/CCTokenGeneratorMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "CCTokenGeneratorMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod;",
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
.method public get()Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod;
    .locals 6

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.horizon.commerce.CCTokenGeneratorMethod"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod;

    .line 22
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 23
    invoke-static {p0}, Lcom/oculus/http/common/HttpModule;->$ul_$xXXokhttp3_OkHttpClient$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 24
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_content_pm_PackageInfo$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 25
    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v4

    .line 26
    invoke-static {p0}, Lcom/oculus/http/core/LoggingErrorHandler;->$ul_$xXXcom_oculus_http_core_LoggingErrorHandler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/http/core/LoggingErrorHandler;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod;-><init>(Landroid/content/Context;Lokhttp3/OkHttpClient;Landroid/content/pm/PackageInfo;Ljavax/inject/Provider;Lcom/oculus/http/core/LoggingErrorHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
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
    .line 16
    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/CCTokenGeneratorMethodAutoProvider;->get()Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod;

    move-result-object v0

    return-object v0
.end method
