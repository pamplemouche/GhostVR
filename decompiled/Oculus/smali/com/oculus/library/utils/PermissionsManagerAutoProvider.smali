.class public Lcom/oculus/library/utils/PermissionsManagerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PermissionsManagerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/library/utils/PermissionsManager;",
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
.method public get()Lcom/oculus/library/utils/PermissionsManager;
    .locals 2

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.library.utils.PermissionsManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/library/utils/PermissionsManager;

    .line 17
    invoke-static {p0}, Lcom/oculus/library/utils/PermissionsCache;->$ul_$xXXcom_oculus_library_utils_PermissionsCache$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/library/utils/PermissionsCache;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/library/utils/PermissionsManager;-><init>(Lcom/oculus/library/utils/PermissionsCache;)V
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
    invoke-virtual {p0}, Lcom/oculus/library/utils/PermissionsManagerAutoProvider;->get()Lcom/oculus/library/utils/PermissionsManager;

    move-result-object v0

    return-object v0
.end method
