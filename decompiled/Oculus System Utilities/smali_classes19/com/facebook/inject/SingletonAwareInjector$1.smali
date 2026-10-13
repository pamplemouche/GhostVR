.class Lcom/facebook/inject/SingletonAwareInjector$1;
.super Ljava/lang/Object;
.source "SingletonAwareInjector.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/inject/SingletonAwareInjector;->wrapProvider(Ljavax/inject/Provider;)Ljavax/inject/Provider;
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
.field final synthetic this$0:Lcom/facebook/inject/SingletonAwareInjector;

.field final synthetic val$provider:Ljavax/inject/Provider;


# direct methods
.method constructor <init>(Lcom/facebook/inject/SingletonAwareInjector;Ljavax/inject/Provider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/inject/SingletonAwareInjector;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/inject/SingletonAwareInjector$1;->this$0:Lcom/facebook/inject/SingletonAwareInjector;

    iput-object p2, p0, Lcom/facebook/inject/SingletonAwareInjector$1;->val$provider:Ljavax/inject/Provider;

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
    .line 80
    iget-object v1, p0, Lcom/facebook/inject/SingletonAwareInjector$1;->this$0:Lcom/facebook/inject/SingletonAwareInjector;

    invoke-static {v1}, Lcom/facebook/inject/SingletonAwareInjector;->access$000(Lcom/facebook/inject/SingletonAwareInjector;)Lcom/facebook/inject/SingletonScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    .line 82
    .local v0, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/inject/SingletonAwareInjector$1;->val$provider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/facebook/inject/SingletonAwareInjector$1;->this$0:Lcom/facebook/inject/SingletonAwareInjector;

    invoke-static {v2}, Lcom/facebook/inject/SingletonAwareInjector;->access$000(Lcom/facebook/inject/SingletonAwareInjector;)Lcom/facebook/inject/SingletonScope;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/facebook/inject/SingletonAwareInjector$1;->this$0:Lcom/facebook/inject/SingletonAwareInjector;

    invoke-static {v2}, Lcom/facebook/inject/SingletonAwareInjector;->access$000(Lcom/facebook/inject/SingletonAwareInjector;)Lcom/facebook/inject/SingletonScope;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/inject/SingletonScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v1
.end method
