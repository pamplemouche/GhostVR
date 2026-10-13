.class Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;
.super Ljava/lang/Object;
.source "LocalMediaThreadHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper;->callOnMediaLoadedOnUiThreadAndWaitForCompletion(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;Ljava/util/List;ZZ)V
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
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper;

.field final synthetic val$hasMoreResults:Z

.field final synthetic val$isFirstQuery:Z

.field final synthetic val$mediaItems:Ljava/util/List;

.field final synthetic val$presenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper;Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;Ljava/util/List;ZZ)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->val$presenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    iput-object p3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->val$mediaItems:Ljava/util/List;

    iput-boolean p4, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->val$hasMoreResults:Z

    iput-boolean p5, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->val$isFirstQuery:Z

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
    .line 33
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->call()Ljava/lang/Void;

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
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->val$presenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->val$mediaItems:Ljava/util/List;

    iget-boolean v2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->val$hasMoreResults:Z

    iget-boolean v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper$1;->val$isFirstQuery:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->onMediaLoaded(Ljava/util/List;ZZ)V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
