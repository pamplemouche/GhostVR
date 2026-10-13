.class public Lcom/facebook/inject/ProviderLazy;
.super Ljava/lang/Object;
.source "ProviderLazy.java"

# interfaces
.implements Lcom/facebook/inject/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/Lazy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCachedInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mScopesSeenAtConstruction:B


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Lcom/facebook/inject/BasicScopeAwareInjector;)V
    .locals 1
    .param p2, "scopeAwareInjector"    # Lcom/facebook/inject/BasicScopeAwareInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<TT;>;",
            "Lcom/facebook/inject/BasicScopeAwareInjector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/facebook/inject/ProviderLazy;, "Lcom/facebook/inject/ProviderLazy<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/inject/ProviderLazy;->mProvider:Ljavax/inject/Provider;

    .line 30
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/inject/ScopeSet;->getSeenScopes()B

    move-result v0

    iput-byte v0, p0, Lcom/facebook/inject/ProviderLazy;->mScopesSeenAtConstruction:B

    .line 31
    iput-object p2, p0, Lcom/facebook/inject/ProviderLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    .line 32
    return-void
.end method

.method private static castProviderToLazy(Ljavax/inject/Provider;)Lcom/facebook/inject/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Lcom/facebook/inject/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    check-cast p0, Lcom/facebook/inject/Lazy;

    .end local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    return-object p0
.end method

.method public static fromProvider(Ljavax/inject/Provider;Lcom/facebook/inject/BasicScopeAwareInjector;)Lcom/facebook/inject/Lazy;
    .locals 1
    .param p1, "contextScopeAwareInjector"    # Lcom/facebook/inject/BasicScopeAwareInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;",
            "Lcom/facebook/inject/BasicScopeAwareInjector;",
            ")",
            "Lcom/facebook/inject/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    instance-of v0, p0, Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0}, Lcom/facebook/inject/ProviderLazy;->castProviderToLazy(Ljavax/inject/Provider;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/inject/ProviderLazy;

    invoke-direct {v0, p0, p1}, Lcom/facebook/inject/ProviderLazy;-><init>(Ljavax/inject/Provider;Lcom/facebook/inject/BasicScopeAwareInjector;)V

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/facebook/inject/ProviderLazy;, "Lcom/facebook/inject/ProviderLazy<TT;>;"
    iget-object v4, p0, Lcom/facebook/inject/ProviderLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    if-eqz v4, :cond_1

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v4, p0, Lcom/facebook/inject/ProviderLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    if-eqz v4, :cond_0

    .line 57
    iget-object v1, p0, Lcom/facebook/inject/ProviderLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    .line 58
    .local v1, "scopeAwareInjector":Lcom/facebook/inject/BasicScopeAwareInjector;
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 59
    .local v2, "scopeSet":Lcom/facebook/inject/ScopeSet;
    iget-byte v4, p0, Lcom/facebook/inject/ProviderLazy;->mScopesSeenAtConstruction:B

    invoke-virtual {v2, v4}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B

    move-result v0

    .line 60
    .local v0, "enterResult":B
    invoke-interface {v1}, Lcom/facebook/inject/BasicScopeAwareInjector;->enterPreamble()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 62
    .local v3, "token":Ljava/lang/Object;
    :try_start_1
    iget-object v4, p0, Lcom/facebook/inject/ProviderLazy;->mProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/inject/ProviderLazy;->mCachedInstance:Ljava/lang/Object;

    .line 63
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/inject/ProviderLazy;->mProvider:Ljavax/inject/Provider;

    .line 64
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/inject/ProviderLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    invoke-interface {v1, v3}, Lcom/facebook/inject/BasicScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v2, v0}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    .line 70
    .end local v0    # "enterResult":B
    .end local v1    # "scopeAwareInjector":Lcom/facebook/inject/BasicScopeAwareInjector;
    .end local v2    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    .end local v3    # "token":Ljava/lang/Object;
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    :cond_1
    iget-object v4, p0, Lcom/facebook/inject/ProviderLazy;->mCachedInstance:Ljava/lang/Object;

    return-object v4

    .line 66
    .restart local v0    # "enterResult":B
    .restart local v1    # "scopeAwareInjector":Lcom/facebook/inject/BasicScopeAwareInjector;
    .restart local v2    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    .restart local v3    # "token":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface {v1, v3}, Lcom/facebook/inject/BasicScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v2, v0}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    throw v4

    .line 70
    .end local v0    # "enterResult":B
    .end local v1    # "scopeAwareInjector":Lcom/facebook/inject/BasicScopeAwareInjector;
    .end local v2    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    .end local v3    # "token":Ljava/lang/Object;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method
