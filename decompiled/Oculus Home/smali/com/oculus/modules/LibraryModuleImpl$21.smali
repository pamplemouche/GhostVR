.class Lcom/oculus/modules/LibraryModuleImpl$21;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->getInstalledAppPermissionsImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<[",
        "Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;",
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
    .line 549
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$21;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$21;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

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
    .line 570
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while fetching install app permissions"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    iget-object v0, p0, Lcom/oculus/modules/LibraryModuleImpl$21;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-interface {v0, p1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 572
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 549
    check-cast p1, [Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$21;->onSuccess([Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;)V

    return-void
.end method

.method public onSuccess([Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;)V
    .locals 7
    .param p1, "permissionInfoResponses"    # [Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v1, "jsonResponses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    if-eqz p1, :cond_0

    .line 555
    :try_start_0
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, p1, v3

    .line 556
    .local v2, "response":Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$400()Lcom/google/gson/Gson;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 558
    .end local v2    # "response":Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception while parsing permissions"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v3, p0, Lcom/oculus/modules/LibraryModuleImpl$21;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-interface {v3, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 566
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 565
    :cond_0
    iget-object v3, p0, Lcom/oculus/modules/LibraryModuleImpl$21;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-interface {v3, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_1
.end method
