.class Lcom/oculus/video/VideoSession$8;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoSession;->updateSyncedPlaybackTime(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoSession;

.field final synthetic val$pdtData:Ljava/lang/String;

.field final synthetic val$playbackTimeMS:I


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoSession;ILjava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/oculus/video/VideoSession$8;->this$0:Lcom/oculus/video/VideoSession;

    iput p2, p0, Lcom/oculus/video/VideoSession$8;->val$playbackTimeMS:I

    iput-object p3, p0, Lcom/oculus/video/VideoSession$8;->val$pdtData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/oculus/video/VideoSession$8;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/video/SyncMediaPlayer;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/oculus/video/VideoSession$8;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/SyncMediaPlayer;

    iget v1, p0, Lcom/oculus/video/VideoSession$8;->val$playbackTimeMS:I

    iget-object v2, p0, Lcom/oculus/video/VideoSession$8;->val$pdtData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/video/SyncMediaPlayer;->updateSyncedPlaybackTime(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
