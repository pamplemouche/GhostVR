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

    .prologue
    .line 22
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
    iget-object v0, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    if-eqz v0, :cond_1

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;

    .line 34
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 35
    iget-byte v0, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopesSeenAtConstruction:B

    invoke-virtual {v2, v0}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B

    move-result v3

    .line 36
    invoke-interface {v1}, Lcom/facebook/inject/BasicScopeAwareInjector;->enterPreamble()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/inject/AbstractDefaultScopeLazy;->onGetInstance(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mCachedInstance:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mScopeAwareInjector:Lcom/facebook/inject/BasicScopeAwareInjector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-interface {v1, v4}, Lcom/facebook/inject/BasicScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    .line 45
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/facebook/inject/AbstractDefaultScopeLazy;->mCachedInstance:Ljava/lang/Object;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v1, v4}, Lcom/facebook/inject/BasicScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    throw v0

    .line 45
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
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
