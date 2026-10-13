.class public Lcom/facebook/inject/ContextScopeAwareInjector;
.super Lcom/facebook/inject/DelegatingInjector;
.source "ContextScopeAwareInjector.java"

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

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/facebook/inject/FbInjector;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/facebook/inject/ContextScopeAwareInjector;)V
    .locals 2
    .param p0, "$ul_context"    # Landroid/content/Context;
    .param p1, "$ul_instance"    # Lcom/facebook/inject/ContextScopeAwareInjector;

    .prologue
    .line 23
    sget-boolean v1, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .local v0, "$ul_injector":Lcom/facebook/inject/FbInjector;
    invoke-static {v0, p1}, Lcom/facebook/inject/ContextScopeAwareInjector;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/facebook/inject/ContextScopeAwareInjector;)V

    .end local v0    # "$ul_injector":Lcom/facebook/inject/FbInjector;
    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/facebook/inject/ContextScopeAwareInjector;

    invoke-static {v1, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/facebook/inject/ContextScopeAwareInjector;)V
    .locals 2
    .param p0, "$ul_injector"    # Lcom/facebook/inject/InjectorLike;
    .param p1, "$ul_instance"    # Lcom/facebook/inject/ContextScopeAwareInjector;

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/facebook/inject/ContextScopeAwareInjector;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-virtual {p1}, Lcom/facebook/inject/ContextScopeAwareInjector;->injectContextScopeAwareInjector()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/FbInjector;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegate"    # Lcom/facebook/inject/FbInjector;
    .param p2, "context"    # Landroid/content/Context;

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
    .param p0, "x0"    # Lcom/facebook/inject/ContextScopeAwareInjector;
    .param p1, "x1"    # Lcom/facebook/inject/InjectorThreadStack;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    return-void
.end method

.method private declared-synchronized ensureInjected()V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->isInjected:Z

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->getInjectorContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-static {v0, p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->$ul_injectMe(Landroid/content/Context;Lcom/facebook/inject/ContextScopeAwareInjector;)V

    .line 145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->isInjected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V
    .locals 0
    .param p1, "injectorThreadStack"    # Lcom/facebook/inject/InjectorThreadStack;

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
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
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
    .local v0, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
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
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, Lcom/facebook/inject/InjectorThreadStack;

    .end local p1    # "token":Ljava/lang/Object;
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
    .param p1, "key"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->enterPreamble()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    .line 55
    .local v0, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v1}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getInstance(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 57
    invoke-direct {p0, v0}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v1
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
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->enterPreamble()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    .line 45
    .local v0, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v1}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 47
    invoke-direct {p0, v0}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

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
    .line 69
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
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
    .locals 2
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
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v1, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v1}, Lcom/facebook/inject/FbInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/facebook/inject/ScopeUnawareInjector;->getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    .line 64
    .local v0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0, v0}, Lcom/facebook/inject/ContextScopeAwareInjector;->wrapProvider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    return-object v1
.end method

.method public getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    return-object p0
.end method

.method public getViewerContextManager()Lcom/facebook/auth/viewercontext/ViewerContextManager;
    .locals 6

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->ensureInjected()V

    .line 125
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->getInjectorContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/app/Activity;

    invoke-static {v4, v5}, Lcom/facebook/common/util/context/wrapper/ContextWrapperUtils;->findContextOfType(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 126
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->getInjectorContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/app/Service;

    invoke-static {v4, v5}, Lcom/facebook/common/util/context/wrapper/ContextWrapperUtils;->findContextOfType(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 128
    .local v1, "service":Landroid/app/Service;
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    sget v4, Lcom/facebook/inject/BundledAndroidModule$UL_id;->$ul_$xXXcom_facebook_auth_viewercontext_ViewerContextManager$xXXcom_facebook_auth_viewercontext_ViewerContextManagerForContext$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v4, v5}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/auth/viewercontext/ViewerContextManager;

    .local v2, "viewerContextManager":Lcom/facebook/auth/viewercontext/ViewerContextManager;
    move-object v3, v2

    .line 137
    .end local v2    # "viewerContextManager":Lcom/facebook/auth/viewercontext/ViewerContextManager;
    .local v3, "viewerContextManager":Lcom/facebook/auth/viewercontext/ViewerContextManager;
    :goto_0
    return-object v3

    .line 136
    .end local v3    # "viewerContextManager":Lcom/facebook/auth/viewercontext/ViewerContextManager;
    :cond_1
    sget v4, Lcom/facebook/inject/BundledAndroidModule$UL_id;->$ul_$xXXcom_facebook_auth_viewercontext_ViewerContextManager$xXXcom_facebook_auth_viewercontext_ViewerContextManagerForApp$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v4, v5}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/auth/viewercontext/ViewerContextManager;

    .restart local v2    # "viewerContextManager":Lcom/facebook/auth/viewercontext/ViewerContextManager;
    move-object v3, v2

    .line 137
    .end local v2    # "viewerContextManager":Lcom/facebook/auth/viewercontext/ViewerContextManager;
    .restart local v3    # "viewerContextManager":Lcom/facebook/auth/viewercontext/ViewerContextManager;
    goto :goto_0
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
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "instance":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/facebook/inject/ContextScopeAwareInjector;->enterPreamble()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    .line 103
    .local v0, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/inject/ContextScopeAwareInjector;->mDelegate:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/inject/FbInjector;->injectComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-direct {p0, v0}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/facebook/inject/ContextScopeAwareInjector;->exitPostamble(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v1
.end method

.method final injectContextScopeAwareInjector()V
    .locals 0
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 39
    return-void
.end method
