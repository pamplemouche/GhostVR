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
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/inject/SingletonProvider;->mInitializedInstance:Z

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v1

    .line 29
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v2

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/facebook/inject/SingletonProvider;->mScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 34
    :try_start_2
    iget-object v0, p0, Lcom/facebook/inject/SingletonProvider;->mUnscopedProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/SingletonProvider;->mInstance:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/inject/SingletonProvider;->mInitializedInstance:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    iget-object v0, p0, Lcom/facebook/inject/SingletonProvider;->mScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v0, v3}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :try_start_4
    invoke-virtual {v1, v2}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/SingletonProvider;->mInstance:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v4, p0, Lcom/facebook/inject/SingletonProvider;->mScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v4, v3}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 40
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v2}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 27
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
