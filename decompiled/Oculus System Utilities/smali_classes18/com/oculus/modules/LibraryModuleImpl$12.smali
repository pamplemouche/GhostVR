.class Lcom/oculus/modules/LibraryModuleImpl$12;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->downloadAndInstallAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/modules/codegen/Resolver;)V
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

.field final synthetic val$callback:Lcom/oculus/library/model/InstallerCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$requestOrigin:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;


# direct methods
.method constructor <init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/LibraryModuleImpl;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$12;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$12;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/modules/LibraryModuleImpl$12;->val$requestOrigin:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    iput-object p4, p0, Lcom/oculus/modules/LibraryModuleImpl$12;->val$callback:Lcom/oculus/library/model/InstallerCallback;

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
    .line 424
    invoke-virtual {p0}, Lcom/oculus/modules/LibraryModuleImpl$12;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 427
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$600()Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/modules/LibraryModuleImpl$12;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/modules/LibraryModuleImpl$12;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iget-object v3, p0, Lcom/oculus/modules/LibraryModuleImpl$12;->val$requestOrigin:Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    invoke-virtual {v3}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oculus/modules/LibraryModuleImpl;->access$1000(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/modules/LibraryModuleImpl$12;->val$callback:Lcom/oculus/library/model/InstallerCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/libraryapi/OVRLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 428
    const/4 v0, 0x0

    return-object v0
.end method
