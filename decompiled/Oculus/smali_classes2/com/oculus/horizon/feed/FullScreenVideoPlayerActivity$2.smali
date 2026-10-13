.class Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "FullScreenVideoPlayerActivity.java"

# interfaces
.implements Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 186
    iput-object p1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$602(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;Z)Z

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$000(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)I

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$700(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/widget/OculusMediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusMediaController;->setCompletion(Z)V

    .line 211
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay(I)V

    .line 212
    return-void
.end method

.method public onPrepared()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$300(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$500(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$300(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    iget-object v2, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v2}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$500(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->seekTo(I)V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$600(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    iget-object v2, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    .line 197
    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$500(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v3}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$300(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v3}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->getDuration()I

    move-result v3

    if-ne v0, v3, :cond_4

    move v0, v1

    .line 196
    :goto_1
    invoke-static {v2, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$602(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;Z)Z

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$600(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$700(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/widget/OculusMediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusMediaController;->setCompletion(Z)V

    goto :goto_0

    .line 197
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$800(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$300(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->play()V

    goto :goto_0
.end method
