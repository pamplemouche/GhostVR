.class Lcom/oculus/video/VideoSession$10;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoSession;->updateSyncPlaybackState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoSession;


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoSession;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/oculus/video/VideoSession$10;->this$0:Lcom/oculus/video/VideoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/oculus/video/VideoSession$10;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/video/SimpleSyncPlayer;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/oculus/video/VideoSession$10;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/SimpleSyncPlayer;

    invoke-virtual {v0}, Lcom/oculus/video/SimpleSyncPlayer;->updateSyncPlaybackState()V

    :cond_0
    return-void
.end method
