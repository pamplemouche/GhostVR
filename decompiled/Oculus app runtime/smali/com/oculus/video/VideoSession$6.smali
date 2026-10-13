.class Lcom/oculus/video/VideoSession$6;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoSession;->seekTo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoSession;

.field final synthetic val$positionMs:J


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoSession;J)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/oculus/video/VideoSession$6;->this$0:Lcom/oculus/video/VideoSession;

    iput-wide p2, p0, Lcom/oculus/video/VideoSession$6;->val$positionMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/oculus/video/VideoSession$6;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/VideoSession$6;->val$positionMs:J

    iget-object v2, p0, Lcom/oculus/video/VideoSession$6;->this$0:Lcom/oculus/video/VideoSession;

    invoke-virtual {v2}, Lcom/oculus/video/VideoSession;->getPosition()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 298
    iget-object v0, p0, Lcom/oculus/video/VideoSession$6;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$1100(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoSession$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/VideoSession$6;->this$0:Lcom/oculus/video/VideoSession;

    invoke-interface {v0, v1}, Lcom/oculus/video/VideoSession$EventListener;->onSeekComplete(Lcom/oculus/video/VideoSession;)V

    return-void

    .line 301
    :cond_1
    invoke-static {}, Lcom/oculus/video/VideoSession;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oculus/video/VideoSession$6;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v2}, Lcom/oculus/video/VideoSession;->access$400(Lcom/oculus/video/VideoSession;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - seekTo: position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oculus/video/VideoSession$6;->val$positionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/oculus/video/VideoSession$6;->this$0:Lcom/oculus/video/VideoSession;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/video/VideoSession;->access$1202(Lcom/oculus/video/VideoSession;Z)Z

    .line 303
    iget-object v0, p0, Lcom/oculus/video/VideoSession$6;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/VideoSession$6;->val$positionMs:J

    invoke-interface {v0, v1, v2}, Lcom/oculus/video/VideoPlayer;->seekTo(J)V

    return-void
.end method
