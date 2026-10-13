.class final Lcom/oculus/modules/LibraryModuleImpl$1;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->fetchLibraryAsync(Lcom/oculus/libraryapi/OVRLibrary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;


# direct methods
.method constructor <init>(Lcom/oculus/libraryapi/OVRLibrary;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$1;->val$ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

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
    .line 115
    invoke-virtual {p0}, Lcom/oculus/modules/LibraryModuleImpl$1;->call()[Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public call()[Lcom/oculus/library/model/App;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/modules/LibraryModuleImpl$1;->val$ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-virtual {v0}, Lcom/oculus/libraryapi/OVRLibrary;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method
