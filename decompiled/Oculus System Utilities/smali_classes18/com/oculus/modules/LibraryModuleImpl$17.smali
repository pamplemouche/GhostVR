.class Lcom/oculus/modules/LibraryModuleImpl$17;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/LibraryModuleImpl;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/LibraryModuleImpl;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$17;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$17;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 486
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$600()Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    new-instance v1, Lcom/oculus/library/model/App$Builder;

    .line 487
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$600()Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/modules/LibraryModuleImpl$17;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    const/4 v2, 0x0

    .line 488
    invoke-virtual {v1, v2}, Lcom/oculus/library/model/App$Builder;->withUnseen(Z)Lcom/oculus/library/model/App$Builder;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v1

    .line 486
    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 490
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/oculus/modules/LibraryModuleImpl$17;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
