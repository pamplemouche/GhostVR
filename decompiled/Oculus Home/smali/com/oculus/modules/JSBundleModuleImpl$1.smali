.class Lcom/oculus/modules/JSBundleModuleImpl$1;
.super Ljava/lang/Object;
.source "JSBundleModuleImpl.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/JSBundleModuleImpl;->fetchAndApplyFirstTimeNuxBundleOverrideImpl(Lcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/JSBundleModuleImpl;

.field final synthetic val$resolver:Lcom/oculus/modules/codegen/Resolver;


# direct methods
.method constructor <init>(Lcom/oculus/modules/JSBundleModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/JSBundleModuleImpl;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oculus/modules/JSBundleModuleImpl$1;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/JSBundleModuleImpl$1;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/oculus/modules/JSBundleModuleImpl$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/oculus/modules/JSBundleModuleImpl$1;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 78
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/oculus/modules/JSBundleModuleImpl$1;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method
