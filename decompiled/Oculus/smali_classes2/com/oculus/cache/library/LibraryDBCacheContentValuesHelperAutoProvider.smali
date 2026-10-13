.class public Lcom/oculus/cache/library/LibraryDBCacheContentValuesHelperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "LibraryDBCacheContentValuesHelperAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/cache/library/LibraryDBCacheContentValuesHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/cache/library/LibraryDBCacheContentValuesHelper;
    .locals 3

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.cache.library.LibraryDBCacheContentValuesHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/cache/library/LibraryDBCacheContentValuesHelper;

    .line 19
    invoke-static {p0}, Lcom/oculus/common/packagescache/PackagesCache;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/library/utils/PermissionsManager;->$ul_$xXXcom_oculus_library_utils_PermissionsManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/library/utils/PermissionsManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/cache/library/LibraryDBCacheContentValuesHelper;-><init>(Lcom/oculus/common/packagescache/PackagesCache;Lcom/oculus/library/utils/PermissionsManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
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
    .line 13
    invoke-virtual {p0}, Lcom/oculus/cache/library/LibraryDBCacheContentValuesHelperAutoProvider;->get()Lcom/oculus/cache/library/LibraryDBCacheContentValuesHelper;

    move-result-object v0

    return-object v0
.end method
