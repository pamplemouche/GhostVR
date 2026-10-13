.class Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field final synthetic val$format:Lcom/oculus/android/exoplayer2/Format;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/oculus/android/exoplayer2/Format;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->this$0:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->val$format:Lcom/oculus/android/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->this$0:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->access$000(Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->val$format:Lcom/oculus/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    return-void
.end method
