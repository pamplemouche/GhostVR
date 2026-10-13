.class public Lcom/oculus/horizon/appmanager/ui/InstallPresenterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "InstallPresenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/appmanager/ui/InstallPresenter;",
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
.method public get(Ljava/util/List;Z)Lcom/oculus/horizon/appmanager/ui/InstallPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/oculus/horizon/appmanager/ui/InstallPresenter;"
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.horizon.appmanager.ui.InstallPresenter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;-><init>(Lcom/facebook/inject/InjectorLike;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
