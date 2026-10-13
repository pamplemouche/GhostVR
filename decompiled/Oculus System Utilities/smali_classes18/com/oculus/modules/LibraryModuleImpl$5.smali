.class Lcom/oculus/modules/LibraryModuleImpl$5;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->fetchLibraryAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[",
        "Lcom/oculus/library/model/App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/LibraryModuleImpl;


# direct methods
.method constructor <init>(Lcom/oculus/modules/LibraryModuleImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/LibraryModuleImpl;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$5;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

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
    .line 296
    invoke-virtual {p0}, Lcom/oculus/modules/LibraryModuleImpl$5;->call()[Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public call()[Lcom/oculus/library/model/App;
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$600()Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/libraryapi/OVRLibrary;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method
