.class Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;
.super Landroid/os/Handler;
.source "FullScreenVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->hideOverlay()V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$000(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$100(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    .line 100
    invoke-static {v1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$200(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    .line 101
    invoke-static {v1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$300(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    .line 102
    invoke-static {v1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$300(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 104
    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
