.class public final Lcom/facebook/inject/SingletonClassInit;
.super Ljava/lang/Object;
.source "SingletonClassInit.java"


# static fields
.field private static final sPool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/facebook/inject/SingletonClassInit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnterResult:Ljava/lang/Byte;

.field private mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

.field private mScope:Lcom/facebook/inject/SingletonScope;

.field private mScopeSet:Lcom/facebook/inject/ScopeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/facebook/inject/SingletonClassInit;->sPool:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Ljava/lang/Object;Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/SingletonClassInit;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/inject/InjectorLike;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    if-nez p0, :cond_0

    if-nez p1, :cond_1

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    .line 57
    :cond_1
    sget-object v1, Lcom/facebook/inject/SingletonClassInit;->sPool:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/facebook/inject/SingletonClassInit;->sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/SingletonClassInit;

    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-nez v0, :cond_2

    .line 61
    new-instance v0, Lcom/facebook/inject/SingletonClassInit;

    invoke-direct {v0}, Lcom/facebook/inject/SingletonClassInit;-><init>()V

    move-object v1, v0

    .line 64
    :goto_1
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/inject/SingletonClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    .line 65
    iget-object v0, v1, Lcom/facebook/inject/SingletonClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    invoke-virtual {v0}, Lcom/facebook/inject/ScopeSet;->enterSingletonForStaticDI()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/inject/SingletonClassInit;->mEnterResult:Ljava/lang/Byte;

    .line 66
    const-class v0, Ljavax/inject/Singleton;

    invoke-interface {p1, v0}, Lcom/facebook/inject/InjectorLike;->getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/SingletonScope;

    iput-object v0, v1, Lcom/facebook/inject/SingletonClassInit;->mScope:Lcom/facebook/inject/SingletonScope;

    .line 67
    iget-object v0, v1, Lcom/facebook/inject/SingletonClassInit;->mScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/inject/SingletonClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/facebook/inject/SingletonClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/facebook/inject/SingletonClassInit;->mScope:Lcom/facebook/inject/SingletonScope;

    iget-object v1, p0, Lcom/facebook/inject/SingletonClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    invoke-virtual {v0, v1}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    .line 75
    iput-object v2, p0, Lcom/facebook/inject/SingletonClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    .line 78
    :cond_0
    iput-object v2, p0, Lcom/facebook/inject/SingletonClassInit;->mScope:Lcom/facebook/inject/SingletonScope;

    .line 80
    iget-object v0, p0, Lcom/facebook/inject/SingletonClassInit;->mEnterResult:Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/facebook/inject/SingletonClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    iget-object v1, p0, Lcom/facebook/inject/SingletonClassInit;->mEnterResult:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    .line 82
    iput-object v2, p0, Lcom/facebook/inject/SingletonClassInit;->mEnterResult:Ljava/lang/Byte;

    .line 85
    :cond_1
    iput-object v2, p0, Lcom/facebook/inject/SingletonClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    .line 95
    sget-object v1, Lcom/facebook/inject/SingletonClassInit;->sPool:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/facebook/inject/SingletonClassInit;->sPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
