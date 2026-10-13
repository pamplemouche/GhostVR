.class public LTe1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKe1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LTe1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)LCe1;
    .locals 12

    .line 1
    iget v0, p0, LTe1;->a:I

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    div-float/2addr p1, v0

    const v0, 0x3f5db22d    # 0.866f

    mul-float v0, v0, p1

    sub-float v1, p1, v0

    neg-float v2, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v2, v4

    sub-float/2addr v2, v0

    mul-float v4, v4, p1

    .line 2
    new-instance v7, Landroid/graphics/RectF;

    add-float v0, v5, v4

    add-float/2addr v4, v2

    invoke-direct {v7, v5, v2, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 4
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v0, 0xbb

    .line 5
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    float-to-int p1, p1

    float-to-int v0, v1

    .line 7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x1

    const/high16 v8, 0x42340000    # 45.0f

    .line 9
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 10
    new-instance v2, LQe1;

    invoke-direct {v2, p1}, LQe1;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    .line 12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "android:drawable/overscroll_glow"

    .line 13
    invoke-static {v0, v3, v2, v2}, LbY;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x40

    .line 14
    invoke-static {p1, v0, v1, v2}, LQe1;->a(Landroid/content/res/Resources;III)LQe1;

    move-result-object v2

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "android:drawable/overscroll_edge"

    .line 17
    invoke-static {v0, v3, v2, v2}, LbY;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc

    .line 18
    invoke-static {p1, v0, v1, v2}, LQe1;->a(Landroid/content/res/Resources;III)LQe1;

    move-result-object v2

    :goto_0
    return-object v2
.end method
