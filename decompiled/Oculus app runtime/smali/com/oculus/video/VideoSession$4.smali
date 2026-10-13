.class Lcom/oculus/video/VideoSession$4;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoSession;->pauseVideo()V
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

    .line 264
    iput-object p1, p0, Lcom/oculus/video/VideoSession$4;->this$0:Lcom/oculus/video/VideoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/oculus/video/VideoSession$4;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-static {}, Lcom/oculus/video/VideoSession;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oculus/video/VideoSession$4;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v2}, Lcom/oculus/video/VideoSession;->access$400(Lcom/oculus/video/VideoSession;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - pauseVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/oculus/video/VideoSession$4;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer;->pause()V

    return-void
.end method
