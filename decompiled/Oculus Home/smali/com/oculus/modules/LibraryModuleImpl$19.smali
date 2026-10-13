.class Lcom/oculus/modules/LibraryModuleImpl$19;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->networkRefreshAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
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
    .line 507
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$19;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$19;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/oculus/modules/LibraryModuleImpl$19;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 510
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$600()Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$19$1;

    invoke-direct {v1, p0, v2}, Lcom/oculus/modules/LibraryModuleImpl$19$1;-><init>(Lcom/oculus/modules/LibraryModuleImpl$19;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->refetch(Landroid/os/ResultReceiver;)V

    .line 524
    return-object v2
.end method
