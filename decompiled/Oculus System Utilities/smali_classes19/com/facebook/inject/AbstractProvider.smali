.class public abstract Lcom/facebook/inject/AbstractProvider;
.super Ljava/lang/Object;
.source "AbstractProvider.java"

# interfaces
.implements Lcom/facebook/inject/ProviderWithInjector;
.implements Lcom/facebook/inject/InjectorLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/ProviderWithInjector",
        "<TT;>;",
        "Lcom/facebook/inject/InjectorLike;"
    }
.end annotation


# instance fields
.field private mInjector:Lcom/facebook/inject/InjectorLike;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationInjector()Lcom/facebook/inject/InjectorLike;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/InjectorLike;

    move-result-object v0

    return-object v0
.end method

.method public getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 53
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1}, Lcom/facebook/inject/InjectorLike;->getInstance(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TS;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1}, Lcom/facebook/inject/InjectorLike;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1}, Lcom/facebook/inject/InjectorLike;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TS;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1, p2}, Lcom/facebook/inject/InjectorLike;->getInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLazy(Lcom/google/inject/Key;)Lcom/facebook/inject/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TS;>;)",
            "Lcom/facebook/inject/Lazy",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TS;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1}, Lcom/facebook/inject/InjectorLike;->getLazy(Lcom/google/inject/Key;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public getLazySet(Lcom/google/inject/Key;)Lcom/facebook/inject/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1}, Lcom/facebook/inject/InjectorLike;->getLazySet(Lcom/google/inject/Key;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TS;>;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TS;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/AbstractProvider;->getScopeAwareInjectorInternal()Lcom/facebook/inject/Injector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/inject/Injector;->getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/inject/Scope;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1}, Lcom/facebook/inject/InjectorLike;->getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;

    move-result-object v0

    return-object v0
.end method

.method public getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    return-object v0
.end method

.method protected getScopeAwareInjectorInternal()Lcom/facebook/inject/Injector;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    return-object v0
.end method

.method public getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    return-object v0
.end method

.method public getSet(Lcom/google/inject/Key;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1}, Lcom/facebook/inject/InjectorLike;->getSet(Lcom/google/inject/Key;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSetProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/AbstractProvider;->getScopeAwareInjectorInternal()Lcom/facebook/inject/Injector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/inject/Injector;->getSetProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public setInjector(Lcom/facebook/inject/InjectorLike;)V
    .locals 0
    .param p1, "injector"    # Lcom/facebook/inject/InjectorLike;

    .prologue
    .line 18
    .local p0, "this":Lcom/facebook/inject/AbstractProvider;, "Lcom/facebook/inject/AbstractProvider<TT;>;"
    iput-object p1, p0, Lcom/facebook/inject/AbstractProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    .line 19
    return-void
.end method
