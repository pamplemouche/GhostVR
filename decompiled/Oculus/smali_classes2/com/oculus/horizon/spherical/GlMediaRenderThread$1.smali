.class Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;
.super Landroid/os/Handler;
.source "GlMediaRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/spherical/GlMediaRenderThread;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

.field final viewDimensions:[I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 176
    iput-object p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->viewDimensions:[I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->access$200(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->handleMessageInternal(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->viewDimensions:[I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->onPrepareForRendering([I)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->viewDimensions:[I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->onVSync([I)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->access$200(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
