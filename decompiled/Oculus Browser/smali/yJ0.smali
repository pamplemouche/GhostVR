.class public LyJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, LyJ0;->w:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 13

    move-object v0, p0

    .line 1
    iget-object v1, v0, LyJ0;->w:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    .line 2
    iget-wide v1, v1, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v8, v0, LyJ0;->w:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    .line 4
    iget-wide v6, v8, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    .line 5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v12

    move v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 6
    invoke-static/range {v6 .. v12}, LJ/N;->MExWQgw3(JLjava/lang/Object;IIILjava/lang/Object;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    iget-object p1, p0, LyJ0;->w:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    .line 2
    iget-wide v0, p1, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0, v1, p1}, LJ/N;->MbxMyH8q(JLjava/lang/Object;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    iget-object p1, p0, LyJ0;->w:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    .line 2
    iget-wide v0, p1, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0, v1, p1}, LJ/N;->MX9WkLzq(JLjava/lang/Object;)V

    return-void
.end method
