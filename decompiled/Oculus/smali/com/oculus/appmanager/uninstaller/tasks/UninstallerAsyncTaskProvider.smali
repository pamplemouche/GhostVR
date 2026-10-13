.class public Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTaskProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "UninstallerAsyncTaskProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;",
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
.method public get(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    const-string v0, "getMethod_com.oculus.appmanager.uninstaller.tasks.UninstallerAsyncTask"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 23
    :try_start_0
    new-instance v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;-><init>(Lcom/facebook/inject/InjectorLike;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
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
