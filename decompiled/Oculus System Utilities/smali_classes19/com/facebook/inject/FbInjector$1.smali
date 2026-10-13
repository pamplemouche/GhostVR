.class final Lcom/facebook/inject/FbInjector$1;
.super Ljava/lang/Object;
.source "FbInjector.java"

# interfaces
.implements Lcom/facebook/common/cache/CacheLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/inject/FbInjector;->getCacheLoader()Lcom/facebook/common/cache/CacheLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/cache/CacheLoader",
        "<",
        "Landroid/content/Context;",
        "Lcom/facebook/inject/ContextScopeAwareInjector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;)Lcom/facebook/inject/ContextScopeAwareInjector;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {}, Lcom/facebook/inject/FbInjector;->access$000()Lcom/facebook/inject/FbInjectorProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/facebook/inject/FbInjector;->access$000()Lcom/facebook/inject/FbInjectorProvider;

    move-result-object v1

    .line 83
    .local v1, "injectorProvider":Lcom/facebook/inject/FbInjectorProvider;
    :goto_0
    invoke-interface {v1}, Lcom/facebook/inject/FbInjectorProvider;->getInjector()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .line 84
    .local v0, "injector":Lcom/facebook/inject/FbInjector;
    if-nez v0, :cond_1

    .line 85
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can NOT get FbInjector instance! Possible reasons: (1) This method was called in ContentProvider\'s onCreate. (2) This is a test, and you forgot to initialize the MockInjector. For example, using RobolectricTestUtil.initializeMockInjector()."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v0    # "injector":Lcom/facebook/inject/FbInjector;
    .end local v1    # "injectorProvider":Lcom/facebook/inject/FbInjectorProvider;
    :cond_0
    invoke-static {p1}, Lcom/facebook/inject/FbInjector;->access$100(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;

    move-result-object v1

    goto :goto_0

    .line 91
    .restart local v0    # "injector":Lcom/facebook/inject/FbInjector;
    .restart local v1    # "injectorProvider":Lcom/facebook/inject/FbInjectorProvider;
    :cond_1
    new-instance v2, Lcom/facebook/inject/ContextScopeAwareInjector;

    invoke-direct {v2, v0, p1}, Lcom/facebook/inject/ContextScopeAwareInjector;-><init>(Lcom/facebook/inject/FbInjector;Landroid/content/Context;)V

    return-object v2
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/facebook/inject/FbInjector$1;->load(Landroid/content/Context;)Lcom/facebook/inject/ContextScopeAwareInjector;

    move-result-object v0

    return-object v0
.end method
