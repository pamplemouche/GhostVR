.class Lcom/oculus/horizon/media/MediaPlayerHelper$2;
.super Ljava/lang/Object;
.source "MediaPlayerHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 63
    iput-object p1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$2;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$2;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-static {v0}, Lcom/oculus/horizon/media/MediaPlayerHelper;->access$000(Lcom/oculus/horizon/media/MediaPlayerHelper;)Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$2;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-static {v0}, Lcom/oculus/horizon/media/MediaPlayerHelper;->access$000(Lcom/oculus/horizon/media/MediaPlayerHelper;)Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;->onCompletion()V

    .line 70
    :cond_0
    return-void
.end method
