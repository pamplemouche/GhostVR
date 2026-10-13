.class Lcom/oculus/localmedia/LocalMediaManager$1;
.super Landroid/database/ContentObserver;
.source "LocalMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/localmedia/LocalMediaManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/localmedia/LocalMediaManager;


# direct methods
.method constructor <init>(Lcom/oculus/localmedia/LocalMediaManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/localmedia/LocalMediaManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oculus/localmedia/LocalMediaManager$1;->this$0:Lcom/oculus/localmedia/LocalMediaManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 107
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v1, "Images has been changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager$1;->this$0:Lcom/oculus/localmedia/LocalMediaManager;

    invoke-static {v0}, Lcom/oculus/localmedia/LocalMediaManager;->access$000(Lcom/oculus/localmedia/LocalMediaManager;)Lcom/oculus/localmedia/ImageMediaProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager$1;->this$0:Lcom/oculus/localmedia/LocalMediaManager;

    invoke-static {v0}, Lcom/oculus/localmedia/LocalMediaManager;->access$000(Lcom/oculus/localmedia/LocalMediaManager;)Lcom/oculus/localmedia/ImageMediaProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/localmedia/ImageMediaProvider;->onChange()V

    .line 111
    :cond_0
    return-void
.end method
