.class public Lcom/facebook/inject/InjectorThreadStack;
.super Ljava/lang/Object;
.source "InjectorThreadStack.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mContextStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mScopeAwareInjectorStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/ScopeAwareInjector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/inject/InjectorThreadStack;->mAppContext:Landroid/content/Context;

    .line 21
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mContextStack:Ljava/util/List;

    .line 22
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mScopeAwareInjectorStack:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public enterAppContext()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mContextStack:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/inject/InjectorThreadStack;->mAppContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public enterContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mContextStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public exitContext()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mContextStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 35
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mContextStack:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/inject/InjectorThreadStack;->mContextStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mContextStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mAppContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mContextStack:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/inject/InjectorThreadStack;->mContextStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method public getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mScopeAwareInjectorStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mScopeAwareInjectorStack:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/inject/InjectorThreadStack;->mScopeAwareInjectorStack:Ljava/util/List;

    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/ScopeAwareInjector;

    goto :goto_0
.end method

.method public popInjector()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mScopeAwareInjectorStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 44
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mScopeAwareInjectorStack:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/inject/InjectorThreadStack;->mScopeAwareInjectorStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushInjector(Lcom/facebook/inject/ScopeAwareInjector;)V
    .locals 1
    .param p1, "injector"    # Lcom/facebook/inject/ScopeAwareInjector;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/inject/InjectorThreadStack;->mScopeAwareInjectorStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
