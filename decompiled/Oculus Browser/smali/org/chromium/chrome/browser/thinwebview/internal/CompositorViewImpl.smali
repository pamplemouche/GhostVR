.class public Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LwJ0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;

.field public c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->a:Landroid/content/Context;

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Landroid/view/SurfaceView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, LyJ0;

    invoke-direct {v1, p0}, LyJ0;-><init>(Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Landroid/view/TextureView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v0, LzJ0;

    invoke-direct {v0, p0}, LzJ0;-><init>(Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 8
    :goto_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->b:Landroid/view/View;

    .line 9
    invoke-static {p0, p2}, LJ/N;->Mq0jHMQB(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p1

    .line 10
    iput-wide p1, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    return-void
.end method

.method private getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    return-wide v0
.end method

.method private onCompositorLayout()V
    .locals 0

    return-void
.end method

.method private recreateSurface()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->b:Landroid/view/View;

    return-object v0
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MpzaPVBA(JLjava/lang/Object;)V

    .line 4
    iput-wide v2, p0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    :cond_0
    return-void
.end method
