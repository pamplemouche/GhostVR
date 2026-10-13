.class public Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;
.super Lorg/webrtc/SurfaceViewRenderer;
.source "PartyVideoStreamSurfaceViewRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceFrame:Landroid/graphics/Rect;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mVideoRenderer:Lorg/webrtc/VideoRenderer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mVideoTrack:Lorg/webrtc/VideoTrack;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Surface;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lorg/webrtc/SurfaceViewRenderer;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mSurface:Landroid/view/Surface;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 33
    iput p3, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mSurfaceWidth:I

    .line 34
    iput p4, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mSurfaceHeight:I

    .line 35
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mCallbacks:Ljava/util/ArrayList;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    .prologue
    .line 65
    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFixedSize(II)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public setFormat(I)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public startRenderingTrack(J)V
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    .line 40
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 41
    const/4 v2, -0x1

    iget v3, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mSurfaceWidth:I

    iget v4, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mSurfaceHeight:I

    invoke-interface {v0, p0, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lorg/webrtc/VideoTrack;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/VideoTrack;-><init>(J)V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoTrack:Lorg/webrtc/VideoTrack;

    .line 45
    new-instance v0, Lorg/webrtc/VideoRenderer;

    invoke-direct {v0, p0}, Lorg/webrtc/VideoRenderer;-><init>(Lorg/webrtc/VideoRenderer$Callbacks;)V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoRenderer:Lorg/webrtc/VideoRenderer;

    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoTrack:Lorg/webrtc/VideoTrack;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoRenderer:Lorg/webrtc/VideoRenderer;

    invoke-virtual {v0, v1}, Lorg/webrtc/VideoTrack;->addRenderer(Lorg/webrtc/VideoRenderer;)V

    .line 47
    return-void
.end method

.method public stopRendering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoTrack:Lorg/webrtc/VideoTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoRenderer:Lorg/webrtc/VideoRenderer;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoTrack:Lorg/webrtc/VideoTrack;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoRenderer:Lorg/webrtc/VideoRenderer;

    invoke-virtual {v0, v1}, Lorg/webrtc/VideoTrack;->removeRenderer(Lorg/webrtc/VideoRenderer;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    .line 56
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 59
    :cond_1
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoTrack:Lorg/webrtc/VideoTrack;

    .line 60
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->mVideoRenderer:Lorg/webrtc/VideoRenderer;

    .line 61
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
