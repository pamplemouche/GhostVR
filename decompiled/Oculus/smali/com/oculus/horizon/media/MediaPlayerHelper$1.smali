.class Lcom/oculus/horizon/media/MediaPlayerHelper$1;
.super Ljava/lang/Object;
.source "MediaPlayerHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/media/MediaPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/media/MediaPlayerHelper;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    iget-object v0, v0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mLogger:Lcom/oculus/horizon/media/MediaPlayerLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/MediaPlayerLogger;->logMediaPlayerPrepared()V

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPreparing:Z

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    iget-boolean v0, v0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPrepared:Z

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-static {v0}, Lcom/oculus/horizon/media/MediaPlayerHelper;->access$000(Lcom/oculus/horizon/media/MediaPlayerHelper;)Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-static {v0}, Lcom/oculus/horizon/media/MediaPlayerHelper;->access$000(Lcom/oculus/horizon/media/MediaPlayerHelper;)Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;->onPrepared()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/MediaPlayerHelper;->onMediaPrepared()V

    .line 58
    :cond_1
    invoke-static {}, Lcom/oculus/horizon/media/MediaPlayerHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer has been prepared. Current state is [%s]"

    iget-object v2, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-static {v2}, Lcom/oculus/horizon/media/MediaPlayerHelper;->access$200(Lcom/oculus/horizon/media/MediaPlayerHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
