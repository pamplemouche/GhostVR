.class public Lcom/oculus/horizon/cloudstorage2/task/FileUploadTaskProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "FileUploadTaskProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 19
    return-void
.end method


# virtual methods
.method public get(Ljava/io/File;Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;
    .locals 6
    .param p3    # Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    const-string v0, "getMethod_com.oculus.horizon.cloudstorage2.task.FileUploadTask"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 25
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;-><init>(Lcom/facebook/inject/InjectorLike;Ljava/io/File;Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
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
