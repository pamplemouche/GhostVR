.class public abstract Lcom/facebook/inject/AbstractSingletonScopeProvider;
.super Ljava/lang/Object;
.source "AbstractSingletonScopeProvider.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Lcom/facebook/inject/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<TT;>;",
        "Lcom/facebook/inject/Lazy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;

.field private final mScopeUnawareInjector:Lcom/facebook/inject/ScopeUnawareInjector;


# direct methods
.method protected constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 2
    .param p1, "injector"    # Lcom/facebook/inject/InjectorLike;

    .prologue
    .line 13
    .local p0, "this":Lcom/facebook/inject/AbstractSingletonScopeProvider;, "Lcom/facebook/inject/AbstractSingletonScopeProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-interface {p1}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/InjectorLike;

    move-result-object v0

    .line 15
    .local v0, "applicationInjector":Lcom/facebook/inject/InjectorLike;
    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/AbstractSingletonScopeProvider;->mScopeUnawareInjector:Lcom/facebook/inject/ScopeUnawareInjector;

    .line 16
    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/AbstractSingletonScopeProvider;->mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;

    .line 17
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/facebook/inject/AbstractSingletonScopeProvider;, "Lcom/facebook/inject/AbstractSingletonScopeProvider<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/inject/AbstractSingletonScopeProvider;->onGetInstance(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 31
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .line 27
    .restart local v0    # "instance":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v2, p0, Lcom/facebook/inject/AbstractSingletonScopeProvider;->mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;

    invoke-interface {v2}, Lcom/facebook/inject/ScopeAwareInjector;->enterPreamble()Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "token":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/facebook/inject/AbstractSingletonScopeProvider;->mScopeUnawareInjector:Lcom/facebook/inject/ScopeUnawareInjector;

    invoke-virtual {p0, v2}, Lcom/facebook/inject/AbstractSingletonScopeProvider;->onGetInstance(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 31
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/facebook/inject/AbstractSingletonScopeProvider;->mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;

    invoke-interface {v2, v1}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    goto :goto_0

    .restart local v0    # "instance":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/facebook/inject/AbstractSingletonScopeProvider;->mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;

    invoke-interface {v3, v1}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    throw v2
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
