.class public Lcom/oculus/horizon/library/init/OVRLibraryInitAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "OVRLibraryInitAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/library/init/OVRLibraryInit;",
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
.method public get()Lcom/oculus/horizon/library/init/OVRLibraryInit;
    .locals 2

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.horizon.library.init.OVRLibraryInit"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/library/init/OVRLibraryInit;

    .line 17
    invoke-static {p0}, Lcom/oculus/horizon/library/init/LibraryManager;->$ul_$xXXcom_oculus_horizon_library_init_LibraryManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/library/init/LibraryManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/library/init/OVRLibraryInit;-><init>(Lcom/oculus/horizon/library/init/LibraryManager;)V
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
    invoke-virtual {p0}, Lcom/oculus/horizon/library/init/OVRLibraryInitAutoProvider;->get()Lcom/oculus/horizon/library/init/OVRLibraryInit;

    move-result-object v0

    return-object v0
.end method
