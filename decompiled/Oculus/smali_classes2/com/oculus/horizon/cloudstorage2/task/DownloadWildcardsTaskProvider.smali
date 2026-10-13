.class public Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "DownloadWildcardsTaskProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 16
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;
    .locals 1

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.horizon.cloudstorage2.task.DownloadWildcardsTask"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;-><init>(Lcom/facebook/inject/InjectorLike;Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
