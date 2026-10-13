.class public Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:I

.field public final c:Ly30;

.field public d:J

.field public final e:Ljava/util/ArrayList;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly30;Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->e:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->c:Ly30;

    .line 4
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->f:Z

    const p2, 0x7f0c0009

    const-string p3, "thumbnails"

    .line 5
    invoke-static {p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 6
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->b:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0c0008

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0c000a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const p2, 0x7f0c0007

    const-string p3, "approximation-thumbnails"

    .line 9
    invoke-static {p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->d()Z

    move-result v6

    .line 11
    invoke-static {p1}, Lcd1;->a(Landroid/content/Context;)Lcd1;

    move-result-object p2

    .line 12
    iget p2, p2, Lcd1;->d:F

    .line 13
    invoke-static {p1}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    div-float/2addr p3, p2

    const/4 p1, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3fc00000    # 1.5f

    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    div-float p3, p1, p2

    :cond_1
    const/4 p1, 0x1

    const/4 v5, 0x1

    .line 14
    :goto_0
    iput p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a:F

    .line 15
    iget p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->b:I

    new-array p1, p1, [I

    move-object v0, p0

    .line 16
    invoke-static/range {v0 .. v6}, LJ/N;->MtRahKHu(Ljava/lang/Object;IIIIZZ)J

    move-result-wide p1

    .line 17
    iput-wide p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f0c0009

    if-ne p1, p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const v0, 0x7f0c0007

    if-ne p1, v0, :cond_2

    const/16 p0, 0x8

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 3
    :cond_2
    :goto_1
    invoke-static {}, LwT;->c()LwT;

    move-result-object p1

    invoke-virtual {p1, p2}, LwT;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :cond_3
    return p0
.end method

.method private getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    return-wide v0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 36
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 37
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    .line 38
    invoke-static {v0, v1, p0, p1}, LJ/N;->MZeSR4YP(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 5

    .line 33
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 34
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    .line 35
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MO5IR90z(JLjava/lang/Object;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 13

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->f:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 6
    :cond_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->b(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iget-wide v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a:F

    mul-float v5, v3, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 10
    invoke-static/range {v1 .. v7}, LJ/N;->MzwUkJbE(JLjava/lang/Object;Ljava/lang/Object;FZLjava/lang/Object;)V

    goto/16 :goto_5

    .line 11
    :cond_3
    :goto_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a:F

    .line 12
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    .line 13
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->b(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    .line 14
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    goto :goto_2

    .line 15
    :cond_5
    instance-of v2, v1, Lrl0;

    if-nez v2, :cond_7

    .line 16
    check-cast v1, Lrl0;

    if-eqz v1, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    throw v3

    :cond_7
    :goto_1
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_a

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 19
    :cond_8
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->c:Ly30;

    invoke-interface {v2}, Ly30;->getOverlayTranslateY()F

    move-result v2

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v5, v5

    .line 23
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v4, v4

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    .line 24
    :goto_3
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    sub-float/2addr v7, v2

    iget v8, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 26
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 28
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v2

    add-float/2addr v0, v4

    .line 29
    invoke-virtual {v6, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    invoke-virtual {v1, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :catch_0
    :cond_a
    :goto_4
    move-object v11, v3

    if-nez v11, :cond_b

    goto :goto_5

    .line 31
    :cond_b
    iget-wide v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    iget v12, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a:F

    move-object v9, p0

    move-object v10, p1

    .line 32
    invoke-static/range {v7 .. v12}, LJ/N;->MbWClKZF(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;F)V

    :cond_c
    :goto_5
    return-void
.end method

.method public final b(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p1}, LaH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 4
    sget-object v0, LHN0;->w:Ljava/lang/Class;

    invoke-virtual {p1, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p1

    check-cast p1, LHN0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public notifyListenersOfThumbnailChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz30;

    .line 2
    invoke-interface {v1, p1}, Lz30;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
