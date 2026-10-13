.class public LZ41;
.super Landroid/media/projection/MediaProjection$Callback;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/media/ScreenCapture;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/media/ScreenCapture;LX41;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ41;->a:Lorg/chromium/media/ScreenCapture;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, LZ41;->a:Lorg/chromium/media/ScreenCapture;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/chromium/media/ScreenCapture;->a(Lorg/chromium/media/ScreenCapture;I)V

    .line 2
    iget-object v0, p0, LZ41;->a:Lorg/chromium/media/ScreenCapture;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lorg/chromium/media/ScreenCapture;->z:Landroid/media/projection/MediaProjection;

    .line 4
    iget-object v0, v0, Lorg/chromium/media/ScreenCapture;->B:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 6
    iget-object v0, p0, LZ41;->a:Lorg/chromium/media/ScreenCapture;

    .line 7
    iput-object v1, v0, Lorg/chromium/media/ScreenCapture;->B:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method
