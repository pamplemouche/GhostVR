.class Lcom/oculus/video/OculusExoPlayer$4;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/text/TextOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/OculusExoPlayer;


# direct methods
.method constructor <init>(Lcom/oculus/video/OculusExoPlayer;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$4;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$4;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer$EventListener;->getSubtitleSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$4;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$2000(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/ui/SubtitleSurfacePainter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oculus/video/ui/SubtitleSurfacePainter;->setCues(Ljava/util/List;Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
