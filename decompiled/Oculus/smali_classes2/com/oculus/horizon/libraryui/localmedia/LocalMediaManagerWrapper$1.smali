.class Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper$1;
.super Ljava/lang/Object;
.source "LocalMediaManagerWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;->initAsync()Lbolts/Task;
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
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;

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
    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;->access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oculus/localmedia/MediaType;

    const/4 v2, 0x0

    sget-object v3, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/oculus/localmedia/MediaType;->list([Lcom/oculus/localmedia/MediaType;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->init(Landroid/content/Context;I)V

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
