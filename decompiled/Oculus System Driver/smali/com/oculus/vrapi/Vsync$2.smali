.class final Lcom/oculus/vrapi/Vsync$2;
.super Ljava/lang/Object;
.source "Vsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrapi/Vsync;->stopVsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    sget-object v0, Lcom/oculus/vrapi/Vsync;->choreographerInstance:Landroid/view/Choreographer;

    sget-object v1, Lcom/oculus/vrapi/Vsync;->handler:Lcom/oculus/vrapi/Vsync;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
