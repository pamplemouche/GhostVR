.class Lcom/oculus/modules/LibraryModuleImpl$23;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->getPermissionInfoAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
        "Ljava/lang/String;",
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
    .line 583
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$23;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$23;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

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
    .line 602
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while fetching permission info"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    iget-object v0, p0, Lcom/oculus/modules/LibraryModuleImpl$23;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-interface {v0, p1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 604
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 583
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$23;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "permissionInfoJson"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 586
    if-nez p1, :cond_0

    .line 587
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received null success from OVRLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lcom/oculus/modules/LibraryModuleImpl$23;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Received null success from OVRLibrary"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 598
    :goto_0
    return-void

    .line 593
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/modules/LibraryModuleImpl$23;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception while parsing permission"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v1, p0, Lcom/oculus/modules/LibraryModuleImpl$23;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-interface {v1, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
