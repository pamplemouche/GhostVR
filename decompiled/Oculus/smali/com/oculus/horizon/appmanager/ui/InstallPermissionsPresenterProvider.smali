.class public Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "InstallPermissionsPresenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;",
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
.method public get(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;"
        }
    .end annotation

    .prologue
    .line 21
    const-string v0, "getMethod_com.oculus.horizon.appmanager.ui.InstallPermissionsPresenter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 23
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    .line 24
    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;-><init>(Lcom/oculus/errorreporting/ErrorReporter;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
