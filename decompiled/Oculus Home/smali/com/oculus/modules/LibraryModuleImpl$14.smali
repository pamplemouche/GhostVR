.class Lcom/oculus/modules/LibraryModuleImpl$14;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Lcom/oculus/library/model/InstallerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->uninstallImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/LibraryModuleImpl;

.field final synthetic val$resolver:Lcom/oculus/modules/codegen/Resolver;


# direct methods
.method constructor <init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/LibraryModuleImpl;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$14;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$14;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallerResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 3
    .param p1, "result"    # Lcom/oculus/appmanager/info/model/InstallerResult;

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/model/InstallerResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/oculus/modules/LibraryModuleImpl$14;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/oculus/modules/LibraryModuleImpl$14;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p1, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    invoke-virtual {v2}, Lcom/oculus/appmanager/info/model/InstallerResultError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
