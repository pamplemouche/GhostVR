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
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/facebook/inject/FbInjector;->access$000()Lcom/facebook/inject/FbInjectorProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/inject/FbInjector;->access$000()Lcom/facebook/inject/FbInjectorProvider;

    move-result-object v0

    .line 83
    :goto_0
    invoke-interface {v0}, Lcom/facebook/inject/FbInjectorProvider;->getInjector()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can NOT get FbInjector instance! Possible reasons: (1) This method was called in ContentProvider\'s onCreate. (2) This is a test, and you forgot to initialize the MockInjector. For example, using RobolectricTestUtil.initializeMockInjector()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {p1}, Lcom/facebook/inject/FbInjector;->access$100(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    new-instance v1, Lcom/facebook/inject/ContextScopeAwareInjector;

    invoke-direct {v1, v0, p1}, Lcom/facebook/inject/ContextScopeAwareInjector;-><init>(Lcom/facebook/inject/FbInjector;Landroid/content/Context;)V

    return-object v1
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
