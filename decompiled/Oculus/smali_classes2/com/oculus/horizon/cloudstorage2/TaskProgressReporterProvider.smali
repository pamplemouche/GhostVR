.class public Lcom/oculus/horizon/cloudstorage2/TaskProgressReporterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "TaskProgressReporterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 17
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/oculus/horizon/cloudstorage2/task/MasterTask;",
            ">;",
            "Ljava/lang/String;",
            "TE;)",
            "Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 21
    const-string v0, "getMethod_com.oculus.horizon.cloudstorage2.TaskProgressReporter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 23
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;-><init>(Lcom/facebook/inject/InjectorLike;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
