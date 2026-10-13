.class public Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;
.super Ljava/lang/Object;
.source "WeakKeyWeakValueLoadingCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x10


# instance fields
.field private final mCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<TK;",
            "Ljava/lang/ref/WeakReference",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final mLoader:Lcom/facebook/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/cache/CacheLoader",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/cache/CacheLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/cache/CacheLoader",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;, "Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache<TK;TV;>;"
    .local p1, "loader":Lcom/facebook/common/cache/CacheLoader;, "Lcom/facebook/common/cache/CacheLoader<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;-><init>(Lcom/facebook/common/cache/CacheLoader;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/cache/CacheLoader;I)V
    .locals 1
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/cache/CacheLoader",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;, "Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache<TK;TV;>;"
    .local p1, "loader":Lcom/facebook/common/cache/CacheLoader;, "Lcom/facebook/common/cache/CacheLoader<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->mLoader:Lcom/facebook/common/cache/CacheLoader;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p2}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->mCache:Ljava/util/WeakHashMap;

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;, "Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->mCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 57
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;, "Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->mCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 39
    .local v2, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TV;>;"
    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "item":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 47
    .end local v0    # "item":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->mLoader:Lcom/facebook/common/cache/CacheLoader;

    invoke-interface {v3, p1}, Lcom/facebook/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v1}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 47
    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;, "Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->mCache:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
