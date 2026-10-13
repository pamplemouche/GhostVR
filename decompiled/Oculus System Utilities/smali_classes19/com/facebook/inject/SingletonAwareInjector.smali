.class public Lcom/facebook/inject/SingletonAwareInjector;
.super Lcom/facebook/inject/DelegatingInjector;
.source "SingletonAwareInjector.java"

# interfaces
.implements Lcom/facebook/inject/ScopeAwareInjector;
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private isInjected:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDelegate:Lcom/facebook/inject/FbInjector;

.field private final mSingletonScope:Lcom/facebook/inject/SingletonScope;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/facebook/inject/SingletonAwareInjector;)V
    .locals 2
    .param p0, "$ul_context"    # Landroid/content/Context;
    .param p1, "$ul_instance"    # Lcom/facebook/inject/SingletonAwareInjector;

    .prologue
    .line 16
    sget-boolean v1, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .local v0, "$ul_injector":Lcom/facebook/inject/FbInjector;
    invoke-static {v0, p1}, Lcom/facebook/inject/SingletonAwareInjector;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/facebook/inject/SingletonAwareInjector;)V

    .end local v0    # "$ul_injector":Lcom/facebook/inject/FbInjector;
    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/facebook/inject/SingletonAwareInjector;

    invoke-static {v1, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/facebook/inject/SingletonAwareInjector;)V
    .locals 2
    .param p0, "$ul_injector"    # Lcom/facebook/inject/InjectorLike;
    .param p1, "$ul_instance"    # Lcom/facebook/inject/SingletonAwareInjector;

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/facebook/inject/SingletonAwareInjector;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-virtual {p1}, Lcom/facebook/inject/SingletonAwareInjector;->injectSingletonAwareInjector()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/FbInjector;Lcom/facebook/inject/SingletonScope;)V
    .locals 1
    .param p1, "delegate"    # Lcom/facebook/inject/FbInjector;
    .param p2, "singletonScope"    # Lcom/facebook/inject/SingletonScope;

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

.method static synthetic access$000(Lcom/facebook/inject/SingletonAwareInjector;)Lcom/facebook/inject/SingletonScope;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/inject/SingletonAwareInjector;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    return-object v0
.end method

.method private declared-synchronized ensureInjected()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->isInjected:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/facebook/inject/SingletonAwareInjector;->$ul_injectMe(Landroid/content/Context;Lcom/facebook/inject/SingletonAwareInjector;)V

    .line 123
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->isInjected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 75
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    new-instance v0, Lcom/facebook/inject/SingletonAwareInjector$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/inject/SingletonAwareInjector$1;-><init>(Lcom/facebook/inject/SingletonAwareInjector;Ljavax/inject/Provider;)V

    return-object v0
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
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    check-cast p1, Lcom/facebook/inject/InjectorThreadStack;

    .end local p1    # "token":Ljava/lang/Object;
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

.method public getInstance(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 56
    iget-object v1, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v1}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    .line 58
    .local v0, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/inject/SingletonAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v1}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getInstance(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v2, v0}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v2, v0}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v1
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
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v1, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v1}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    .line 47
    .local v0, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/inject/SingletonAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v1}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v2, v0}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/facebook/inject/SingletonAwareInjector;->mSingletonScope:Lcom/facebook/inject/SingletonScope;

    invoke-virtual {v2, v0}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v1
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
    .line 71
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

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
    .line 66
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/SingletonAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/inject/SingletonAwareInjector;->wrapProvider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    return-object p0
.end method

.method public getViewerContextManager()Lcom/facebook/auth/viewercontext/ViewerContextManager;
    .locals 3

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/facebook/inject/SingletonAwareInjector;->ensureInjected()V

    .line 115
    sget v1, Lcom/facebook/inject/BundledAndroidModule$UL_id;->$ul_$xXXcom_facebook_auth_viewercontext_ViewerContextManager$xXXcom_facebook_auth_viewercontext_ViewerContextManagerForApp$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/facebook/inject/SingletonAwareInjector;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v1, v2}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/auth/viewercontext/ViewerContextManager;

    .line 116
    .local v0, "viewerContextManager":Lcom/facebook/auth/viewercontext/ViewerContextManager;
    return-object v0
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
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "instance":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "injectComponent should only be called on ContextScope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final injectSingletonAwareInjector()V
    .locals 0
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 32
    return-void
.end method
