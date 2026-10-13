.class public Lcom/facebook/inject/ContextScope;
.super Ljava/lang/Object;
.source "ContextScope.java"

# interfaces
.implements Lcom/facebook/inject/Scope;


# annotations
.annotation runtime Lcom/facebook/inject/ContextScoped;
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mCachedInjectors:Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache",
            "<",
            "Landroid/content/Context;",
            "Lcom/facebook/inject/ContextScopeAwareInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final mFbInjector:Lcom/facebook/inject/FbInjector;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/FbInjector;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;

    new-instance v1, Lcom/facebook/inject/ContextScope$1;

    invoke-direct {v1, p0}, Lcom/facebook/inject/ContextScope$1;-><init>(Lcom/facebook/inject/ContextScope;)V

    invoke-direct {v0, v1}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;-><init>(Lcom/facebook/common/cache/CacheLoader;)V

    iput-object v0, p0, Lcom/facebook/inject/ContextScope;->mCachedInjectors:Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;

    .line 55
    iput-object p1, p0, Lcom/facebook/inject/ContextScope;->mFbInjector:Lcom/facebook/inject/FbInjector;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/inject/FbInjector;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/inject/InjectorThreadStack;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/ContextScope;->mAppContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/inject/ContextScope;)Lcom/facebook/inject/FbInjector;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/inject/ContextScope;->mFbInjector:Lcom/facebook/inject/FbInjector;

    return-object v0
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-class v0, Lcom/facebook/inject/ContextScoped;

    return-object v0
.end method

.method public enterScope(Landroid/content/Context;Lcom/facebook/inject/InjectorThreadStack;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/inject/ContextScope;->mCachedInjectors:Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;

    invoke-virtual {v0, p1}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/ScopeAwareInjector;

    invoke-virtual {p2, v0}, Lcom/facebook/inject/InjectorThreadStack;->pushInjector(Lcom/facebook/inject/ScopeAwareInjector;)V

    .line 85
    return-void
.end method

.method public exitScope(Lcom/facebook/inject/InjectorThreadStack;)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/facebook/inject/InjectorThreadStack;->popInjector()V

    .line 94
    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/inject/ContextScope;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/inject/ContextScope;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyBagForContext(Landroid/content/Context;)Lcom/facebook/common/propertybag/PropertyBag;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    const-class v0, Lcom/facebook/common/propertybag/PropertyBag;

    invoke-static {p1, v0}, Lcom/facebook/common/util/context/wrapper/ContextWrapperUtils;->findContextOfType(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/propertybag/PropertyBag;

    return-object v0
.end method

.method public scope(Lcom/google/inject/Key;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/inject/ContextScopedProvider;

    invoke-direct {v0, p0, p2}, Lcom/facebook/inject/ContextScopedProvider;-><init>(Lcom/facebook/inject/ContextScope;Ljavax/inject/Provider;)V

    return-object v0
.end method
