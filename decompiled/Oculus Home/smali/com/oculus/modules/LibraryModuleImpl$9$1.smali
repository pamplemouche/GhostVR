.class Lcom/oculus/modules/LibraryModuleImpl$9$1;
.super Landroid/os/ResultReceiver;
.source "LibraryModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl$9;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/modules/LibraryModuleImpl$9;


# direct methods
.method constructor <init>(Lcom/oculus/modules/LibraryModuleImpl$9;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oculus/modules/LibraryModuleImpl$9;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$9$1;->this$1:Lcom/oculus/modules/LibraryModuleImpl$9;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 368
    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 369
    .local v1, "success":Z
    :goto_0
    if-nez v1, :cond_1

    .line 370
    const-string v0, "Unable to refresh OVRLibrary after adding item"

    .line 371
    .local v0, "error":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/oculus/modules/LibraryModuleImpl$9$1;->this$1:Lcom/oculus/modules/LibraryModuleImpl$9;

    iget-object v2, v2, Lcom/oculus/modules/LibraryModuleImpl$9;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 377
    .end local v0    # "error":Ljava/lang/String;
    :goto_1
    return-void

    .line 368
    .end local v1    # "success":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 376
    .restart local v1    # "success":Z
    :cond_1
    iget-object v2, p0, Lcom/oculus/modules/LibraryModuleImpl$9$1;->this$1:Lcom/oculus/modules/LibraryModuleImpl$9;

    iget-object v2, v2, Lcom/oculus/modules/LibraryModuleImpl$9;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_1
.end method
