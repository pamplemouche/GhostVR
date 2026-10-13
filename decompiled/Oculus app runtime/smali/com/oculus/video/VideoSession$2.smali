.class Lcom/oculus/video/VideoSession$2;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/VideoSession;->startVideo(Lcom/oculus/video/VideoPlayer;ZLandroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoSession;

.field final synthetic val$playWhenReady:Z

.field final synthetic val$player:Lcom/oculus/video/VideoPlayer;

.field final synthetic val$videoSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoSession;Lcom/oculus/video/VideoPlayer;ZLandroid/view/Surface;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    iput-object p2, p0, Lcom/oculus/video/VideoSession$2;->val$player:Lcom/oculus/video/VideoPlayer;

    iput-boolean p3, p0, Lcom/oculus/video/VideoSession$2;->val$playWhenReady:Z

    iput-object p4, p0, Lcom/oculus/video/VideoSession$2;->val$videoSurface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 222
    invoke-static {}, Lcom/oculus/video/VideoSession;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v2}, Lcom/oculus/video/VideoSession;->access$400(Lcom/oculus/video/VideoSession;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - startVideo: player="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/video/VideoSession$2;->val$player:Lcom/oculus/video/VideoPlayer;

    invoke-interface {v2}, Lcom/oculus/video/VideoPlayer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", playWhenReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oculus/video/VideoSession$2;->val$playWhenReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    iget-boolean v1, p0, Lcom/oculus/video/VideoSession$2;->val$playWhenReady:Z

    invoke-static {v0, v1}, Lcom/oculus/video/VideoSession;->access$502(Lcom/oculus/video/VideoSession;Z)Z

    .line 225
    iget-object v0, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    iget-object v1, p0, Lcom/oculus/video/VideoSession$2;->val$videoSurface:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/oculus/video/VideoSession;->access$602(Lcom/oculus/video/VideoSession;Landroid/view/Surface;)Landroid/view/Surface;

    .line 226
    iget-object v0, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    iget-object v1, p0, Lcom/oculus/video/VideoSession$2;->val$player:Lcom/oculus/video/VideoPlayer;

    invoke-static {v0, v1}, Lcom/oculus/video/VideoSession;->access$702(Lcom/oculus/video/VideoSession;Lcom/oculus/video/VideoPlayer;)Lcom/oculus/video/VideoPlayer;

    .line 227
    iget-object v0, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/video/VideoSession;->access$802(Lcom/oculus/video/VideoSession;Z)Z

    .line 228
    iget-object v0, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0, v1}, Lcom/oculus/video/VideoSession;->access$902(Lcom/oculus/video/VideoSession;Z)Z

    .line 229
    iget-object v0, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    invoke-static {v0}, Lcom/oculus/video/VideoSession;->access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    .line 230
    invoke-static {v1}, Lcom/oculus/video/VideoSession;->access$1000(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/Video;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oculus/video/VideoSession$2;->val$playWhenReady:Z

    iget-object v3, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    .line 231
    invoke-static {v3}, Lcom/oculus/video/VideoSession;->access$600(Lcom/oculus/video/VideoSession;)Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/video/VideoSession$2;->this$0:Lcom/oculus/video/VideoSession;

    .line 229
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oculus/video/VideoPlayer;->start(Lcom/oculus/video/Video;ZLandroid/view/Surface;Lcom/oculus/video/VideoPlayer$EventListener;)V

    return-void
.end method
