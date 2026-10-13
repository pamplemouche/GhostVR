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
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;-><init>(Lcom/facebook/common/cache/CacheLoader;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/cache/CacheLoader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/cache/CacheLoader",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 27
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
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->mCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->mLoader:Lcom/facebook/common/cache/CacheLoader;

    invoke-interface {v0, p1}, Lcom/facebook/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->set(Ljava/lang/Object;Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->mCache:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
