.class Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field final synthetic val$format:Lcom/oculus/android/exoplayer2/Format;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lcom/oculus/android/exoplayer2/Format;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;->this$0:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;->val$format:Lcom/oculus/android/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;->this$0:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->access$000(Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;->val$format:Lcom/oculus/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    return-void
.end method
