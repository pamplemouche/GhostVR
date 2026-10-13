.class public Lcom/oculus/horizon/service/ExternalPlatformLocalAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ExternalPlatformLocalAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/service/ExternalPlatformLocal;",
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
.method public get()Lcom/oculus/horizon/service/ExternalPlatformLocal;
    .locals 3

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.horizon.service.ExternalPlatformLocal"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/service/ExternalPlatformLocal;

    .line 18
    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Flivestreaming$x5Fenable$x5Fall$x5Fapps$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibrary$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/horizon/service/ExternalPlatformLocal;-><init>(Lcom/facebook/inject/InjectorLike;Ljavax/inject/Provider;Lcom/oculus/libraryapi/OVRLibrary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
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
    .line 12
    invoke-virtual {p0}, Lcom/oculus/horizon/service/ExternalPlatformLocalAutoProvider;->get()Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v0

    return-object v0
.end method
