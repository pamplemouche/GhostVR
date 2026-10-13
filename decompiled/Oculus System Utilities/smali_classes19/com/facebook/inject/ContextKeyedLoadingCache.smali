.class public Lcom/facebook/inject/ContextKeyedLoadingCache;
.super Lcom/google/common/cache/ForwardingLoadingCache;
.source "ContextKeyedLoadingCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/ForwardingLoadingCache",
        "<",
        "Landroid/content/Context;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCacheLoader:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader",
            "<",
            "Landroid/content/Context;",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDelegate:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache",
            "<",
            "Landroid/content/Context;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/cache/CacheLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheLoader",
            "<",
            "Landroid/content/Context;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/facebook/inject/ContextKeyedLoadingCache;, "Lcom/facebook/inject/ContextKeyedLoadingCache<TT;>;"
    .local p1, "cacheLoader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<Landroid/content/Context;TT;>;"
    invoke-direct {p0}, Lcom/google/common/cache/ForwardingLoadingCache;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/inject/ContextKeyedLoadingCache;->mCacheLoader:Lcom/google/common/cache/CacheLoader;

    .line 24
    invoke-direct {p0}, Lcom/facebook/inject/ContextKeyedLoadingCache;->createWeakRefDelegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/ContextKeyedLoadingCache;->mDelegate:Lcom/google/common/cache/LoadingCache;

    .line 25
    return-void
.end method

.method private createWeakRefDelegate()Lcom/google/common/cache/LoadingCache;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LoadingCache",
            "<",
            "Landroid/content/Context;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/facebook/inject/ContextKeyedLoadingCache;, "Lcom/facebook/inject/ContextKeyedLoadingCache<TT;>;"
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakValues()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/CacheBuilder;->maximumSize(J)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/inject/ContextKeyedLoadingCache;->mCacheLoader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Lcom/google/common/cache/Cache;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/facebook/inject/ContextKeyedLoadingCache;, "Lcom/facebook/inject/ContextKeyedLoadingCache<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/ContextKeyedLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/google/common/cache/LoadingCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LoadingCache",
            "<",
            "Landroid/content/Context;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/facebook/inject/ContextKeyedLoadingCache;, "Lcom/facebook/inject/ContextKeyedLoadingCache<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/ContextKeyedLoadingCache;->mDelegate:Lcom/google/common/cache/LoadingCache;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/facebook/inject/ContextKeyedLoadingCache;, "Lcom/facebook/inject/ContextKeyedLoadingCache<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/ContextKeyedLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method
