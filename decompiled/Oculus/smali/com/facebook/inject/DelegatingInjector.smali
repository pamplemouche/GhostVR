.class public abstract Lcom/facebook/inject/DelegatingInjector;
.super Lcom/facebook/inject/AbstractInjector;
.source "DelegatingInjector.java"


# instance fields
.field private final mDelegate:Lcom/facebook/inject/FbInjector;


# direct methods
.method protected constructor <init>(Lcom/facebook/inject/FbInjector;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/inject/AbstractInjector;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/inject/DelegatingInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    .line 21
    return-void
.end method


# virtual methods
.method public getApplicationInjector()Lcom/facebook/inject/InjectorLike;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/inject/DelegatingInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getApplicationInjector()Lcom/facebook/inject/InjectorLike;

    move-result-object v0

    return-object v0
.end method

.method public getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/inject/DelegatingInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

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
    .line 73
    iget-object v0, p0, Lcom/facebook/inject/DelegatingInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/inject/FbInjector;->getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;

    move-result-object v0

    return-object v0
.end method

.method public getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/inject/DelegatingInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    return-object v0
.end method

.method public getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/inject/DelegatingInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    return-object v0
.end method

.method protected abstract injectComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method
