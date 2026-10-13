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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 28
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v1

    .line 30
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v0}, Lcom/facebook/inject/ContextScope;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/facebook/inject/InjectorThreadStack;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    new-instance v0, Lcom/facebook/inject/ProvisioningException;

    const-string v1, "Called context scoped provider outside of context scope"

    invoke-direct {v0, v1}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    instance-of v0, v3, Landroid/app/Application;

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lcom/facebook/inject/ContextScopedProvider;->INVALID_SCOPES:[B

    invoke-virtual {v1, v4, v0}, Lcom/facebook/inject/ScopeSet;->assertNoInvalidScopesInSet(B[B)V

    .line 40
    :cond_1
    invoke-virtual {v1, v4}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B

    move-result v4

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v0, v3}, Lcom/facebook/inject/ContextScope;->getPropertyBagForContext(Landroid/content/Context;)Lcom/facebook/common/propertybag/PropertyBag;

    move-result-object v5

    .line 48
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    if-eqz v5, :cond_3

    .line 51
    :try_start_1
    invoke-interface {v5, p0}, Lcom/facebook/common/propertybag/PropertyBag;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    :goto_0
    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v0, v3, v2}, Lcom/facebook/inject/ContextScope;->enterScope(Landroid/content/Context;Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :try_start_2
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedProvider;->mUnscopedProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 60
    :try_start_3
    iget-object v3, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v3, v2}, Lcom/facebook/inject/ContextScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    .line 62
    if-eqz v5, :cond_4

    .line 63
    invoke-interface {v5, p0, v0}, Lcom/facebook/common/propertybag/PropertyBag;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    invoke-virtual {v1, v4}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    return-object v0

    .line 53
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedProvider;->mValueInAppContext:Ljava/lang/Object;

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/facebook/inject/ContextScopedProvider;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v3, v2}, Lcom/facebook/inject/ContextScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0

    .line 69
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 71
    :catchall_2
    move-exception v0

    invoke-virtual {v1, v4}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    throw v0

    .line 65
    :cond_4
    :try_start_6
    iput-object v0, p0, Lcom/facebook/inject/ContextScopedProvider;->mValueInAppContext:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method
