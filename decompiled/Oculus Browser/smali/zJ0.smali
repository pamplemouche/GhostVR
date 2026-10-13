.class public LzJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, LzJ0;->a:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 14

    move-object v0, p0

    .line 1
    iget-object v1, v0, LzJ0;->a:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    .line 2
    iget-wide v2, v1, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v2, v3, v1}, LJ/N;->MbxMyH8q(JLjava/lang/Object;)V

    .line 4
    iget-object v9, v0, LzJ0;->a:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    .line 5
    iget-wide v7, v9, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    const/4 v10, -0x1

    .line 6
    new-instance v13, Landroid/view/Surface;

    move-object v1, p1

    invoke-direct {v13, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move/from16 v11, p2

    move/from16 v12, p3

    .line 7
    invoke-static/range {v7 .. v13}, LJ/N;->MExWQgw3(JLjava/lang/Object;IIILjava/lang/Object;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 6

    .line 1
    iget-object p1, p0, LzJ0;->a:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    .line 2
    iget-wide v0, p1, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 3
    :cond_0
    invoke-static {v0, v1, p1}, LJ/N;->MX9WkLzq(JLjava/lang/Object;)V

    return v4
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 12

    .line 1
    iget-object v0, p0, LzJ0;->a:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    .line 2
    iget-wide v0, v0, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v7, p0, LzJ0;->a:Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    .line 4
    iget-wide v5, v7, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;->c:J

    const/4 v8, -0x1

    .line 5
    new-instance v11, Landroid/view/Surface;

    invoke-direct {v11, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move v9, p2

    move v10, p3

    .line 6
    invoke-static/range {v5 .. v11}, LJ/N;->MExWQgw3(JLjava/lang/Object;IIILjava/lang/Object;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
