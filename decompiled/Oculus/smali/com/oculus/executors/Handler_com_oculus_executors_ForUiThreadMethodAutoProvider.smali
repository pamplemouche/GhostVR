.class public Lcom/oculus/executors/Handler_com_oculus_executors_ForUiThreadMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "Handler_com_oculus_executors_ForUiThreadMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Landroid/os/Handler;",
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
.method public get()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 15
    const-string v0, "getMethod_android.os.Handler"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/oculus/executors/ExecutorsModule;->$ul_$xXXandroid_os_Looper$xXXcom_oculus_executors_ForUiThread$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/os/Looper;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/oculus/executors/ExecutorsModule;->provideUiThreadHandler(Landroid/os/Looper;)Landroid/os/Handler;
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

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/oculus/executors/Handler_com_oculus_executors_ForUiThreadMethodAutoProvider;->get()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
