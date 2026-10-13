.class public Lcom/oculus/horizon/library/init/OVRLibraryLoginHandlerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "OVRLibraryLoginHandlerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/library/init/OVRLibraryLoginHandler;",
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
.method public get()Lcom/oculus/horizon/library/init/OVRLibraryLoginHandler;
    .locals 2

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.horizon.library.init.OVRLibraryLoginHandler"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/library/init/OVRLibraryLoginHandler;

    .line 18
    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/library/init/OVRLibraryLoginHandler;-><init>(Lcom/oculus/libraryapi/OVRLibraryInternal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    invoke-virtual {p0}, Lcom/oculus/horizon/library/init/OVRLibraryLoginHandlerAutoProvider;->get()Lcom/oculus/horizon/library/init/OVRLibraryLoginHandler;

    move-result-object v0

    return-object v0
.end method
