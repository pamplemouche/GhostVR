.class Lcom/oculus/modules/LibraryModuleImpl$10;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V
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

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$requestOrigin:Lcom/oculus/appmanager/info/model/RequestOrigin;


# direct methods
.method constructor <init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/LibraryModuleImpl;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$10;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$10;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/modules/LibraryModuleImpl$10;->val$requestOrigin:Lcom/oculus/appmanager/info/model/RequestOrigin;

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
    .line 402
    invoke-virtual {p0}, Lcom/oculus/modules/LibraryModuleImpl$10;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 405
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$600()Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/modules/LibraryModuleImpl$10;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/modules/LibraryModuleImpl$10;->val$requestOrigin:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/libraryapi/OVRLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    .line 406
    const/4 v0, 0x0

    return-object v0
.end method
