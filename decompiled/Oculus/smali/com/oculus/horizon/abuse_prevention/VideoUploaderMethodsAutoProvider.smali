.class public Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethodsAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "VideoUploaderMethodsAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;",
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
.method public get()Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;
    .locals 3

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.horizon.abuse_prevention.VideoUploaderMethods"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

    .line 19
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_RestAdapter$xXXcom_oculus_http_core_annotations_OculusRestAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/RestAdapter;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/util/thread/ThreadUtils;->$ul_$xXXcom_oculus_util_thread_ThreadUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/thread/ThreadUtils;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;-><init>(Lretrofit/RestAdapter;Lcom/oculus/util/thread/ThreadUtils;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
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
    .line 13
    invoke-virtual {p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethodsAutoProvider;->get()Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

    move-result-object v0

    return-object v0
.end method
