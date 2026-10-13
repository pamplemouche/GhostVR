.class public Lcom/oculus/video/ui/SubtitleSurfacePainter;
.super Ljava/lang/Object;
.source "SubtitleSurfacePainter.java"


# static fields
.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f


# instance fields
.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private fontScale:F

.field private final painter:Lcom/oculus/video/ui/SubtitlePainter;

.field private style:Lcom/oculus/android/exoplayer2/text/CaptionStyleCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/oculus/video/ui/SubtitlePainter;

    invoke-direct {v0, p1}, Lcom/oculus/video/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->painter:Lcom/oculus/video/ui/SubtitlePainter;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    iput p1, p0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->fontScale:F

    .line 41
    new-instance p1, Lcom/oculus/android/exoplayer2/text/CaptionStyleCompat;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->style:Lcom/oculus/android/exoplayer2/text/CaptionStyleCompat;

    return-void
.end method

.method private draw(Landroid/view/Surface;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 87
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    const/4 v3, 0x0

    .line 89
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    .line 91
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    .line 92
    iget-object v3, v0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->cues:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, v0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->cues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/oculus/android/exoplayer2/text/Cue;

    .line 94
    iget-object v3, v0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->painter:Lcom/oculus/video/ui/SubtitlePainter;

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->style:Lcom/oculus/android/exoplayer2/text/CaptionStyleCompat;

    const v8, 0x3d5a511a    # 0.0533f

    int-to-float v9, v14

    mul-float v9, v9, v8

    iget v8, v0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->fontScale:F

    mul-float v8, v8, v9

    const v9, 0x3da3d70a    # 0.08f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v2

    move v13, v15

    move/from16 v17, v14

    invoke-virtual/range {v3 .. v14}, Lcom/oculus/video/ui/SubtitlePainter;->draw(Lcom/oculus/android/exoplayer2/text/Cue;ZZLcom/oculus/android/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V

    move/from16 v14, v17

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public setCues(Ljava/util/List;Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/text/Cue;",
            ">;",
            "Landroid/view/Surface;",
            ")V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->cues:Ljava/util/List;

    if-ne v0, p1, :cond_0

    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->cues:Ljava/util/List;

    .line 56
    invoke-direct {p0, p2}, Lcom/oculus/video/ui/SubtitleSurfacePainter;->draw(Landroid/view/Surface;)V

    return-void
.end method

.method public setFontScale(FLandroid/view/Surface;)V
    .locals 1

    .line 65
    iget v0, p0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->fontScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iput p1, p0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->fontScale:F

    .line 69
    invoke-direct {p0, p2}, Lcom/oculus/video/ui/SubtitleSurfacePainter;->draw(Landroid/view/Surface;)V

    return-void
.end method

.method public setStyle(Lcom/oculus/android/exoplayer2/text/CaptionStyleCompat;Landroid/view/Surface;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->style:Lcom/oculus/android/exoplayer2/text/CaptionStyleCompat;

    if-ne v0, p1, :cond_0

    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/oculus/video/ui/SubtitleSurfacePainter;->style:Lcom/oculus/android/exoplayer2/text/CaptionStyleCompat;

    .line 82
    invoke-direct {p0, p2}, Lcom/oculus/video/ui/SubtitleSurfacePainter;->draw(Landroid/view/Surface;)V

    return-void
.end method
