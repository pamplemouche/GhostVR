.class Lcom/oculus/video/VideoSession$9;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoSession;->futureSeekVideo(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoSession;

.field final synthetic val$positionMs:I

.field final synthetic val$syncTimestampMs:J


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoSession;IJ)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/oculus/video/VideoSession$9;->this$0:Lcom/oculus/video/VideoSession;

    iput p2, p0, Lcom/oculus/video/VideoSession$9;->val$positionMs:I

    iput-wide p3, p0, Lcom/oculus/video/VideoSession$9;->val$syncTimestampMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/oculus/video/VideoSession$9;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/video/SimpleSyncPlayer;

    if-eqz v0, :cond_1

    .line 410
    iget v0, p0, Lcom/oculus/video/VideoSession$9;->val$positionMs:I

    iget-object v1, p0, Lcom/oculus/video/VideoSession$9;->this$0:Lcom/oculus/video/VideoSession;

    invoke-virtual {v1}, Lcom/oculus/video/VideoSession;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/oculus/video/VideoSession$9;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$1100(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoSession$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/VideoSession$9;->this$0:Lcom/oculus/video/VideoSession;

    invoke-interface {v0, v1}, Lcom/oculus/video/VideoSession$EventListener;->onSeekComplete(Lcom/oculus/video/VideoSession;)V

    return-void

    .line 414
    :cond_0
    invoke-static {}, Lcom/oculus/video/VideoSession;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oculus/video/VideoSession$9;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v2}, Lcom/oculus/video/VideoSession;->access$400(Lcom/oculus/video/VideoSession;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - futureSeekTo: positionMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oculus/video/VideoSession$9;->val$positionMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " syncTimestampMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oculus/video/VideoSession$9;->val$syncTimestampMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/oculus/video/VideoSession$9;->this$0:Lcom/oculus/video/VideoSession;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/video/VideoSession;->access$1202(Lcom/oculus/video/VideoSession;Z)Z

    .line 417
    iget-object v0, p0, Lcom/oculus/video/VideoSession$9;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/SimpleSyncPlayer;

    iget v1, p0, Lcom/oculus/video/VideoSession$9;->val$positionMs:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/oculus/video/VideoSession$9;->val$syncTimestampMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/video/SimpleSyncPlayer;->futureSeekTo(JJ)V

    :cond_1
    return-void
.end method
