.class public Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcherAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ApkUpdateInfoDispatcherAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;",
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
.method public get()Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;
    .locals 3

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.appmanager.info.ApkUpdateInfoDispatcher"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;

    .line 18
    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/oculus/appmanager/info/InfoModule;->$ul_$xXXjava_util_Set$x3Ccom_oculus_appmanager_info_ApkUpdateInfoListener$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;-><init>(Lcom/oculus/errorreporting/ErrorReporter;Ljava/util/Set;)V
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
    invoke-virtual {p0}, Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcherAutoProvider;->get()Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;

    move-result-object v0

    return-object v0
.end method
