.class public abstract Lcom/facebook/inject/AbstractComponentProvider;
.super Ljava/lang/Object;
.source "AbstractComponentProvider.java"

# interfaces
.implements Lcom/facebook/inject/ComponentProviderWithInjector;
.implements Lcom/facebook/inject/InjectorLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/ComponentProviderWithInjector",
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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationInjector()Lcom/facebook/inject/InjectorLike;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/inject/AbstractComponentProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/InjectorLike;

    move-result-object v0

    return-object v0
.end method

.method public getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/inject/AbstractComponentProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

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
    .line 52
    iget-object v0, p0, Lcom/facebook/inject/AbstractComponentProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1}, Lcom/facebook/inject/InjectorLike;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;

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
    .line 27
    iget-object v0, p0, Lcom/facebook/inject/AbstractComponentProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0, p1}, Lcom/facebook/inject/InjectorLike;->getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;

    move-result-object v0

    return-object v0
.end method

.method public getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/inject/AbstractComponentProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    return-object v0
.end method

.method public getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/inject/AbstractComponentProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    return-object v0
.end method

.method public setInjector(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/facebook/inject/AbstractComponentProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    .line 23
    return-void
.end method
