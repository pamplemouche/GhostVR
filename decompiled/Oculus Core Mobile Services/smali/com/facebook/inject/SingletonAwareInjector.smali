.class public Lcom/facebook/inject/SingletonAwareInjector;
.super Lcom/facebook/inject/DelegatingInjector;
.source "SingletonAwareInjector.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;
.implements Lcom/facebook/inject/ScopeAwareInjector;


# instance fields
.field private isInjected:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDelegate:Lcom/facebook/inject/FbInjector;

.field private final mSingletonScope:Lcom/facebook/inject/SingletonScope;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/FbInjector;Lcom/facebook/inject/SingletonScope;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/inject/DelegatingInjector;-><init>(Lcom/facebook/inject/FbInjector;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->isInjected:Z

    .line 27
    iput-object p1, p0, Lcom/facebook/inject/SingletonAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    .line 28
    iput-object p2, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    .line 29
    return-void
.end method


# virtual methods
.method public enterPreamble()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    return-object v0
.end method

.method public exitPostamble(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    check-cast p1, Lcom/facebook/inject/InjectorThreadStack;

    invoke-virtual {v0, p1}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    .line 98
    return-void
.end method

.method public getInjectorContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 3
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
    .line 45
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v2, v1}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v2, v1}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
.end method

.method public getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
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
    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "injectComponent should only be called on ContextScope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
