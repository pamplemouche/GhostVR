.class public abstract Lcom/facebook/inject/AbstractDefaultScopeProvider;
.super Ljava/lang/Object;
.source "AbstractDefaultScopeProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mInjector:Lcom/facebook/inject/InjectorLike;

.field private final mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;


# direct methods
.method protected constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/inject/AbstractDefaultScopeProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    .line 15
    invoke-interface {p1}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/AbstractDefaultScopeProvider;->mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;

    .line 16
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/inject/AbstractDefaultScopeProvider;->mInjector:Lcom/facebook/inject/InjectorLike;

    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/facebook/inject/AbstractDefaultScopeProvider;->mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;

    invoke-interface {v1}, Lcom/facebook/inject/ScopeAwareInjector;->enterPreamble()Ljava/lang/Object;

    move-result-object v1

    .line 23
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/facebook/inject/AbstractDefaultScopeProvider;->onGetInstance(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/facebook/inject/AbstractDefaultScopeProvider;->mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;

    invoke-interface {v2, v1}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/facebook/inject/AbstractDefaultScopeProvider;->mScopeAwareInjector:Lcom/facebook/inject/ScopeAwareInjector;

    invoke-interface {v2, v1}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

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
