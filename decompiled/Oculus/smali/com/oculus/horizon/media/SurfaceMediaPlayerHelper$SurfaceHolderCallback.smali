.class Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;
.super Ljava/lang/Object;
.source "SurfaceMediaPlayerHelper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceHolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;->this$0:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;-><init>(Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;->this$0:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    iget-boolean v0, v0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;->this$0:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    iget-object v0, v0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 55
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;->this$0:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    iget-object v0, v0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 63
    return-void
.end method
