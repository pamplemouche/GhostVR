.class public Lcom/facebook/inject/SingletonProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "SingletonProvider.java"

# interfaces
.implements Lcom/facebook/inject/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/inject/AbstractProvider",
        "<TT;>;",
        "Lcom/facebook/inject/Lazy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mInitializedInstance:Z

.field private mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mScope:Lcom/facebook/inject/SingletonScope;

.field private final mUnscopedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/SingletonScope;Ljavax/inject/Provider;)V
    .locals 0
    .param p1, "scope"    # Lcom/facebook/inject/SingletonScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/SingletonScope;",
            "Ljavax/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/facebook/inject/SingletonProvider;, "Lcom/facebook/inject/SingletonProvider<TT;>;"
    .local p2, "unscopedProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/inject/SingletonProvider;->mScope:Lcom/facebook/inject/SingletonScope;

    .line 18
    iput-object p2, p0, Lcom/facebook/inject/SingletonProvider;->mUnscopedProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/facebook/inject/SingletonProvider;, "Lcom/facebook/inject/SingletonProvider<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/facebook/inject/SingletonProvider;->mInitializedInstance:Z

    if-nez v3, :cond_0

    .line 28
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 29
    .local v2, "scopeSet":Lcom/facebook/inject/ScopeSet;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    .line 32
    .local v0, "enterResult":B
    :try_start_1
    iget-object v3, p0, Lcom/facebook/inject/SingletonProvider;->mScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v3}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 34
    .local v1, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    :try_start_2
    iget-object v3, p0, Lcom/facebook/inject/SingletonProvider;->mUnscopedProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/inject/SingletonProvider;->mInstance:Ljava/lang/Object;

    .line 35
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/inject/SingletonProvider;->mInitializedInstance:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    iget-object v3, p0, Lcom/facebook/inject/SingletonProvider;->mScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v3, v1}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :try_start_4
    invoke-virtual {v2, v0}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    .line 43
    .end local v0    # "enterResult":B
    .end local v1    # "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    .end local v2    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    :cond_0
    iget-object v3, p0, Lcom/facebook/inject/SingletonProvider;->mInstance:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object v3

    .line 37
    .restart local v0    # "enterResult":B
    .restart local v1    # "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    .restart local v2    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    :catchall_0
    move-exception v3

    :try_start_5
    iget-object v4, p0, Lcom/facebook/inject/SingletonProvider;->mScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v4, v1}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 40
    .end local v1    # "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v0}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 27
    .end local v0    # "enterResult":B
    .end local v2    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    :catchall_2
    move-exception v3

    monitor-exit p0

    throw v3
.end method
