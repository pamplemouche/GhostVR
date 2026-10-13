.class public Lcom/oculus/http/useragent/String_com_oculus_http_useragent_UserAgentStringMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "String_com_oculus_http_useragent_UserAgentStringMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/oculus/http/useragent/String_com_oculus_http_useragent_UserAgentStringMethodAutoProvider;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "getMethod_java.lang.String"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/oculus/http/useragent/UserAgentFactory;->$ul_$xXXcom_oculus_http_useragent_UserAgentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/http/useragent/UserAgentFactory;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/oculus/http/useragent/UserAgentModule;->provideUserAgentString(Lcom/oculus/http/useragent/UserAgentFactory;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
