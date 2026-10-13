.class public Lcom/facebook/inject/ContextScopeAwareInjector;
.super Lcom/facebook/inject/DelegatingInjector;
.source "ContextScopeAwareInjector.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;
.implements Lcom/facebook/inject/ScopeAwareInjector;


# instance fields
.field private isInjected:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/facebook/inject/FbInjector;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/FbInjector;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/inject/DelegatingInjector;-><init>(Lcom/facebook/inject/FbInjector;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->isInjected:Z

    .line 34
    iput-object p1, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    .line 35
    iput-object p2, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/inject/ContextScopeAwareInjector;Lcom/facebook/inject/InjectorThreadStack;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    return-void
.end method

.method private exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/facebook/inject/InjectorThreadStack;->popInjector()V

    .line 150
    invoke-virtual {p1}, Lcom/facebook/inject/InjectorThreadStack;->exitContext()V

    .line 151
    return-void
.end method

.method private wrapProvider(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/facebook/inject/ContextScopeAwareInjector$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/inject/ContextScopeAwareInjector$1;-><init>(Lcom/facebook/inject/ContextScopeAwareInjector;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public enterPreamble()Lcom/facebook/inject/InjectorThreadStack;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->getInjectorContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/inject/InjectorThreadStack;->enterContext(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v0, p0}, Lcom/facebook/inject/InjectorThreadStack;->pushInjector(Lcom/facebook/inject/ScopeAwareInjector;)V

    .line 114
    return-object v0
.end method

.method public bridge synthetic enterPreamble()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->enterPreamble()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    return-object v0
.end method

.method public exitPostamble(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Lcom/facebook/inject/InjectorThreadStack;

    invoke-direct {p0, p1}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    .line 120
    return-void
.end method

.method public getInjectorContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInstance(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->enterPreamble()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getInstance(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 57
    invoke-direct {p0, v1}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->enterPreamble()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 47
    invoke-direct {p0, v1}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
.end method

.method public getLazy(Lcom/google/inject/Key;)Lcom/facebook/inject/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/inject/ProviderLazy;->fromProvider(Ljavax/inject/Provider;Lcom/facebook/inject/BasicScopeAwareInjector;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lcom/facebook/inject/ContextScopeAwareInjector;->wrapProvider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    return-object p0
.end method

.method protected injectComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->enterPreamble()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/inject/FbInjector;->injectComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-direct {p0, v1}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
.end method
