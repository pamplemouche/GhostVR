.class public Lcom/oculus/horizon/library/init/LibraryManagerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "LibraryManagerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/library/init/LibraryManager;",
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
.method public get()Lcom/oculus/horizon/library/init/LibraryManager;
    .locals 3

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.horizon.library.init.LibraryManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/library/init/LibraryManager;

    .line 19
    invoke-static {p0}, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;->$ul_$xXXcom_oculus_cache_library_LibraryDBCacheChangeTracker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/library/init/LibraryManager;-><init>(Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;Lcom/oculus/cache/library/LibraryMemoryCacheManager;)V
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
    invoke-virtual {p0}, Lcom/oculus/horizon/library/init/LibraryManagerAutoProvider;->get()Lcom/oculus/horizon/library/init/LibraryManager;

    move-result-object v0

    return-object v0
.end method
