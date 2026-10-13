.class public abstract Lcom/facebook/inject/AbstractDefaultScopeLazy;
.super Ljava/lang/Object;
.source "AbstractDefaultScopeLazy.java"

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

.field private final mInjector:Lcom/facebook/inject/InjectorLike;

.field private volatile mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mScopesSeenAtConstruction:B


# direct methods
.method protected constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 1
    .param p1, "injector"    # Lcom/facebook/inject/InjectorLike;

    .prologue
    .line 22
    .local p0, "this":Lcom/facebook/inject/AbstractDefaultScopeLazy;, "Lcom/facebook/inject/AbstractDefaultScopeLazy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mInjector:Lcom/facebook/inject/InjectorLike;

    .line 24
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/inject/ScopeSet;->getSeenScopes()B

    move-result v0

    iput-byte v0, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopesSeenAtConstruction:B

    .line 25
    invoke-interface {p1}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    .line 26
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/facebook/inject/AbstractDefaultScopeLazy;, "Lcom/facebook/inject/AbstractDefaultScopeLazy<TT;>;"
    iget-object v4, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    if-eqz v4, :cond_1

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v4, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    if-eqz v4, :cond_0

    .line 33
    iget-object v1, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    .line 34
    .local v1, "scopeAwareInjector":Lcom/facebook/inject/BasicScopeAwareInjector;
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 35
    .local v2, "scopeSet":Lcom/facebook/inject/ScopeSet;
    iget-byte v4, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopesSeenAtConstruction:B

    invoke-virtual {v2, v4}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B

    move-result v0

    .line 36
    .local v0, "enterResult":B
    invoke-interface {v1}, Lcom/facebook/inject/BasicScopeAwareInjector;->enterPreamble()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 38
    .local v3, "token":Ljava/lang/Object;
    :try_start_1
    iget-object v4, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v4}, Lcom/facebook/inject/InjectorLike;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/inject/AbstractDefaultScopeLazy;->onGetInstance(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mCachedInstance:Ljava/lang/Object;

    .line 39
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-interface {v1, v3}, Lcom/facebook/inject/BasicScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2, v0}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    .line 45
    .end local v0    # "enterResult":B
    .end local v1    # "scopeAwareInjector":Lcom/facebook/inject/BasicScopeAwareInjector;
    .end local v2    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    .end local v3    # "token":Ljava/lang/Object;
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :cond_1
    iget-object v4, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mCachedInstance:Ljava/lang/Object;

    return-object v4

    .line 41
    .restart local v0    # "enterResult":B
    .restart local v1    # "scopeAwareInjector":Lcom/facebook/inject/BasicScopeAwareInjector;
    .restart local v2    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    .restart local v3    # "token":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface {v1, v3}, Lcom/facebook/inject/BasicScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2, v0}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    throw v4

    .line 45
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

.method protected abstract onGetInstance(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/InjectorLike;",
            ")TT;"
        }
    .end annotation
.end method
