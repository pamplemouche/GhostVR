.class public Lcom/oculus/vrapi/Vsync;
.super Ljava/lang/Object;
.source "Vsync.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "Vsync"

.field public static choreographerInstance:Landroid/view/Choreographer;

.field public static handler:Lcom/oculus/vrapi/Vsync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/oculus/vrapi/Vsync;

    invoke-direct {v0}, Lcom/oculus/vrapi/Vsync;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/Vsync;->handler:Lcom/oculus/vrapi/Vsync;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeVsync(J)V
.end method

.method public static startVsync(Landroid/content/Context;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/oculus/vrapi/Vsync$1;

    invoke-direct {v0}, Lcom/oculus/vrapi/Vsync$1;-><init>()V

    invoke-static {p0, v0}, Lcom/oculus/vrapi/ContextHelper;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static stopVsync(Landroid/content/Context;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/oculus/vrapi/Vsync$2;

    invoke-direct {v0}, Lcom/oculus/vrapi/Vsync$2;-><init>()V

    invoke-static {p0, v0}, Lcom/oculus/vrapi/ContextHelper;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 60
    invoke-static {p1, p2}, Lcom/oculus/vrapi/Vsync;->nativeVsync(J)V

    .line 61
    sget-object p1, Lcom/oculus/vrapi/Vsync;->choreographerInstance:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
