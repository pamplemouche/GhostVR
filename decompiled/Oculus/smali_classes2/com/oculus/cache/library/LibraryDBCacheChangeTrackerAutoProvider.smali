.class public Lcom/oculus/cache/library/LibraryDBCacheChangeTrackerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "LibraryDBCacheChangeTrackerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;",
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
.method public get()Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;
    .locals 4

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.cache.library.LibraryDBCacheChangeTracker"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;

    .line 18
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/oculus/cache/library/LibraryCacheEventListener;->$ul_$xXXcom_oculus_cache_library_LibraryCacheEventListener$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/cache/library/LibraryCacheEventListener;

    move-result-object v2

    .line 20
    invoke-static {p0}, Lcom/oculus/cache/library/LibraryDBCacheManager;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_cache_library_LibraryDBCacheManager$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;-><init>(Landroid/content/Context;Lcom/oculus/cache/library/LibraryCacheEventListener;Lcom/facebook/inject/Lazy;)V
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
    .line 12
    invoke-virtual {p0}, Lcom/oculus/cache/library/LibraryDBCacheChangeTrackerAutoProvider;->get()Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;

    move-result-object v0

    return-object v0
.end method
