.class Lorg/webrtc/SurfaceViewRenderer$3;
.super Ljava/lang/Object;
.source "SurfaceViewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/SurfaceViewRenderer;->tryCreateEglSurface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/SurfaceViewRenderer;


# direct methods
.method constructor <init>(Lorg/webrtc/SurfaceViewRenderer;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer$3;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$3;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0}, Lorg/webrtc/SurfaceViewRenderer;->access$200(Lorg/webrtc/SurfaceViewRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$3;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0}, Lorg/webrtc/SurfaceViewRenderer;->access$300(Lorg/webrtc/SurfaceViewRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$3;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0}, Lorg/webrtc/SurfaceViewRenderer;->access$400(Lorg/webrtc/SurfaceViewRenderer;)Lorg/webrtc/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$3;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0}, Lorg/webrtc/SurfaceViewRenderer;->access$400(Lorg/webrtc/SurfaceViewRenderer;)Lorg/webrtc/EglBase;

    move-result-object v0

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer$3;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v2}, Lorg/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/webrtc/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 178
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$3;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0}, Lorg/webrtc/SurfaceViewRenderer;->access$400(Lorg/webrtc/SurfaceViewRenderer;)Lorg/webrtc/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->makeCurrent()V

    .line 180
    const/16 v0, 0xcf5

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 182
    :cond_0
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
