.class Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;
.super Ljava/lang/Object;
.source "GlMediaRenderThread.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/GlMediaRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoreographerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;)V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;-><init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-boolean v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsTearingDown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->access$600(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->access$500(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
