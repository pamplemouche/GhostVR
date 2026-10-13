.class public final Lcom/facebook/inject/InjectionContext;
.super Ljava/lang/Object;
.source "InjectionContext.java"


# instance fields
.field public final injector:Lcom/facebook/inject/ScopeAwareInjector;

.field public final lazyCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final scopesSeenAtConstruction:B


# direct methods
.method public constructor <init>(ILcom/facebook/inject/InjectorLike;)V
    .locals 1
    .param p1, "cacheSize"    # I
    .param p2, "injector"    # Lcom/facebook/inject/InjectorLike;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/inject/ScopeSet;->getSeenScopes()B

    move-result v0

    iput-byte v0, p0, Lcom/facebook/inject/InjectionContext;->scopesSeenAtConstruction:B

    .line 22
    invoke-interface {p2}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/InjectionContext;->injector:Lcom/facebook/inject/ScopeAwareInjector;

    .line 23
    if-lez p1, :cond_0

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/inject/InjectionContext;->lazyCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/inject/InjectionContext;->lazyCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_0
.end method
