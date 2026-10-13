.class public Lcom/facebook/inject/ContextScopedProvider;
.super Ljava/lang/Object;
.source "ContextScopedProvider.java"

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


# static fields
.field private static final INVALID_SCOPES:[B


# instance fields
.field private final mContextScope:Lcom/facebook/inject/ContextScope;

.field private final mUnscopedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mValueInAppContext:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 14
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lcom/facebook/inject/ContextScopedProvider;->INVALID_SCOPES:[B

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/ContextScope;Ljavax/inject/Provider;)V
    .locals 0
    .param p1, "contextScope"    # Lcom/facebook/inject/ContextScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/ContextScope;",
            "Ljavax/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/facebook/inject/ContextScopedProvider;, "Lcom/facebook/inject/ContextScopedProvider<TT;>;"
    .local p2, "unscopedProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    .line 23
    iput-object p2, p0, Lcom/facebook/inject/ContextScopedProvider;->mUnscopedProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/inject/ContextScopedProvider;, "Lcom/facebook/inject/ContextScopedProvider<TT;>;"
    const/16 v7, 0x8

    .line 28
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v5

    .line 30
    .local v5, "scopeSet":Lcom/facebook/inject/ScopeSet;
    iget-object v6, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v6}, Lcom/facebook/inject/ContextScope;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v2

    .line 31
    .local v2, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    invoke-virtual {v2}, Lcom/facebook/inject/InjectorThreadStack;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 33
    new-instance v6, Lcom/facebook/inject/ProvisioningException;

    const-string v7, "Called context scoped provider outside of context scope"

    invoke-direct {v6, v7}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 36
    :cond_0
    instance-of v6, v0, Landroid/app/Application;

    if-nez v6, :cond_1

    .line 37
    sget-object v6, Lcom/facebook/inject/ContextScopedProvider;->INVALID_SCOPES:[B

    invoke-virtual {v5, v7, v6}, Lcom/facebook/inject/ScopeSet;->assertNoInvalidScopesInSet(B[B)V

    .line 40
    :cond_1
    invoke-virtual {v5, v7}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B

    move-result v1

    .line 47
    .local v1, "enterResult":B
    :try_start_0
    iget-object v6, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v6, v0}, Lcom/facebook/inject/ContextScope;->getPropertyBagForContext(Landroid/content/Context;)Lcom/facebook/common/propertybag/PropertyBag;

    move-result-object v4

    .line 48
    .local v4, "propertyBag":Lcom/facebook/common/propertybag/PropertyBag;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    if-eqz v4, :cond_3

    .line 51
    :try_start_1
    invoke-interface {v4, p0}, Lcom/facebook/common/propertybag/PropertyBag;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    .local v3, "instance":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v3, :cond_2

    .line 56
    iget-object v6, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v6, v0, v2}, Lcom/facebook/inject/ContextScope;->enterScope(Landroid/content/Context;Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :try_start_2
    iget-object v6, p0, Lcom/facebook/inject/ContextScopedProvider;->mUnscopedProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 60
    :try_start_3
    iget-object v6, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v6, v2}, Lcom/facebook/inject/ContextScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    .line 62
    if-eqz v4, :cond_4

    .line 63
    invoke-interface {v4, p0, v3}, Lcom/facebook/common/propertybag/PropertyBag;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    invoke-virtual {v5, v1}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    return-object v3

    .line 53
    .end local v3    # "instance":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/facebook/inject/ContextScopedProvider;->mValueInAppContext:Ljava/lang/Object;

    .restart local v3    # "instance":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v7, v2}, Lcom/facebook/inject/ContextScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v6

    .line 69
    .end local v3    # "instance":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 71
    .end local v4    # "propertyBag":Lcom/facebook/common/propertybag/PropertyBag;
    :catchall_2
    move-exception v6

    invoke-virtual {v5, v1}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    throw v6

    .line 65
    .restart local v3    # "instance":Ljava/lang/Object;, "TT;"
    .restart local v4    # "propertyBag":Lcom/facebook/common/propertybag/PropertyBag;
    :cond_4
    :try_start_6
    iput-object v3, p0, Lcom/facebook/inject/ContextScopedProvider;->mValueInAppContext:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method
