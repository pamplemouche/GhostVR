.class Lcom/facebook/inject/ContextScopeAwareInjector$1;
.super Ljava/lang/Object;
.source "ContextScopeAwareInjector.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/inject/ContextScopeAwareInjector;->wrapProvider(Ljavax/inject/Provider;)Ljavax/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/inject/ContextScopeAwareInjector;

.field final synthetic val$provider:Ljavax/inject/Provider;


# direct methods
.method constructor <init>(Lcom/facebook/inject/ContextScopeAwareInjector;Ljavax/inject/Provider;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/inject/ContextScopeAwareInjector$1;->this$0:Lcom/facebook/inject/ContextScopeAwareInjector;

    iput-object p2, p0, Lcom/facebook/inject/ContextScopeAwareInjector$1;->val$provider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector$1;->this$0:Lcom/facebook/inject/ContextScopeAwareInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/ContextScopeAwareInjector;->enterPreamble()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/ContextScopeAwareInjector$1;->val$provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/facebook/inject/ContextScopeAwareInjector$1;->this$0:Lcom/facebook/inject/ContextScopeAwareInjector;

    invoke-static {v2, v1}, Lcom/facebook/inject/ContextScopeAwareInjector;->access$000(Lcom/facebook/inject/ContextScopeAwareInjector;Lcom/facebook/inject/InjectorThreadStack;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/facebook/inject/ContextScopeAwareInjector$1;->this$0:Lcom/facebook/inject/ContextScopeAwareInjector;

    invoke-static {v2, v1}, Lcom/facebook/inject/ContextScopeAwareInjector;->access$000(Lcom/facebook/inject/ContextScopeAwareInjector;Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
.end method
