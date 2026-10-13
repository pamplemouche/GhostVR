.class Lcom/oculus/modules/LibraryModuleImpl$18;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->toggleOffUnseenAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/LibraryModuleImpl;

.field final synthetic val$resolver:Lcom/oculus/modules/codegen/Resolver;


# direct methods
.method constructor <init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/LibraryModuleImpl;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$18;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$18;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 499
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while toggling off unseen on app"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    iget-object v0, p0, Lcom/oculus/modules/LibraryModuleImpl$18;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-interface {v0, p1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 501
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "updated"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 495
    iget-object v0, p0, Lcom/oculus/modules/LibraryModuleImpl$18;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 496
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 492
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$18;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
