.class public Lcom/oculus/downloader/dispatcher/OculusDownloadListenerDispatcherAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "OculusDownloadListenerDispatcherAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/downloader/dispatcher/OculusDownloadListenerDispatcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/downloader/dispatcher/OculusDownloadListenerDispatcher;
    .locals 2

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.downloader.dispatcher.OculusDownloadListenerDispatcher"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/downloader/dispatcher/OculusDownloadListenerDispatcher;

    .line 17
    invoke-static {p0}, Lcom/oculus/downloader/dispatcher/DispatcherModule;->$ul_$xXXjava_util_Set$x3Ccom_oculus_downloader_OculusDownloadListener$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/downloader/dispatcher/OculusDownloadListenerDispatcher;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
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
    .line 11
    invoke-virtual {p0}, Lcom/oculus/downloader/dispatcher/OculusDownloadListenerDispatcherAutoProvider;->get()Lcom/oculus/downloader/dispatcher/OculusDownloadListenerDispatcher;

    move-result-object v0

    return-object v0
.end method
