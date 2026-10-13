.class Lcom/oculus/cache/library/LibraryMemoryCacheManager$1;
.super Ljava/lang/Object;
.source "LibraryMemoryCacheManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/cache/library/LibraryMemoryCacheManager;->loadCacheAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/cache/library/LibraryMemoryCacheManager;


# direct methods
.method constructor <init>(Lcom/oculus/cache/library/LibraryMemoryCacheManager;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oculus/cache/library/LibraryMemoryCacheManager$1;->this$0:Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lcom/oculus/cache/library/LibraryMemoryCacheManager$1;->this$0:Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    const/4 v0, 0x0

    sget v2, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryDBCacheManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/cache/library/LibraryMemoryCacheManager$1;->this$0:Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-static {v3}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->access$000(Lcom/oculus/cache/library/LibraryMemoryCacheManager;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryDBCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryDBCacheManager;->getAllCurrentUserEntries()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->setEntries(Lcom/google/common/collect/ImmutableList;)V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method
