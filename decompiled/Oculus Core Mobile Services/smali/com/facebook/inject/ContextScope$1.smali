.class Lcom/facebook/inject/ContextScope$1;
.super Ljava/lang/Object;
.source "ContextScope.java"

# interfaces
.implements Lcom/facebook/common/cache/CacheLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/ContextScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/facebook/inject/ContextScope;


# direct methods
.method constructor <init>(Lcom/facebook/inject/ContextScope;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/inject/ContextScope$1;->this$0:Lcom/facebook/inject/ContextScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;)Lcom/facebook/inject/ContextScopeAwareInjector;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/inject/ContextScopeAwareInjector;

    iget-object v1, p0, Lcom/facebook/inject/ContextScope$1;->this$0:Lcom/facebook/inject/ContextScope;

    invoke-static {v1}, Lcom/facebook/inject/ContextScope;->access$000(Lcom/facebook/inject/ContextScope;)Lcom/facebook/inject/FbInjector;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/inject/ContextScopeAwareInjector;-><init>(Lcom/facebook/inject/FbInjector;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/facebook/inject/ContextScope$1;->load(Landroid/content/Context;)Lcom/facebook/inject/ContextScopeAwareInjector;

    move-result-object v0

    return-object v0
.end method
