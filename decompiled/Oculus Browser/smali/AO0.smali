.class public abstract LAO0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 6
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    .line 7
    aget v1, v0, p0

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    aput v1, v0, p0

    .line 8
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static a(IIF)I
    .locals 3

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p2}, LEO0;->b(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, p2}, LEO0;->b(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1, p2}, LEO0;->b(FFF)F

    move-result p0

    float-to-int p0, p0

    .line 5
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/res/Resources;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f06018d

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p1, 0x7f06018c

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/res/Resources;ZIZ)I
    .locals 0

    if-eqz p3, :cond_0

    const p1, 0x7f060191

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 13
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p1, p3

    const/high16 p3, -0x1000000

    and-int/2addr p0, p3

    .line 14
    invoke-static {p2, p0, p1}, LAO0;->a(IIF)I

    move-result p0

    return p0

    :cond_0
    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 15
    invoke-static {p0, p3}, LAO0;->b(Landroid/content/res/Resources;Z)I

    move-result p0

    return p0

    .line 16
    :cond_1
    invoke-static {p0, p3, p2}, LAO0;->a(Landroid/content/res/Resources;ZI)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f060190

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 18
    :cond_2
    invoke-static {p2}, LAO0;->e(I)Z

    move-result p0

    const/4 p1, -0x1

    if-eqz p0, :cond_3

    return p1

    :cond_3
    const p0, 0x3e4ccccd    # 0.2f

    .line 19
    invoke-static {p2, p1, p0}, LAO0;->a(IIF)I

    move-result p0

    return p0
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f06018b

    goto :goto_0

    :cond_0
    const p0, 0x7f060169

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-static {p1}, LAO0;->a(Z)I

    move-result p1

    invoke-static {p0, p1}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;ZI)Z
    .locals 0

    .line 9
    invoke-static {p0, p1}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(I)F
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 4
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p0, v2

    .line 6
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static b(Landroid/content/res/Resources;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0600e7

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p1, 0x7f06011e

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static b(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f06018b

    goto :goto_0

    :cond_0
    const p0, 0x7f06018e

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;
    .locals 0

    .line 7
    invoke-static {p1}, LAO0;->b(Z)I

    move-result p1

    invoke-static {p0, p1}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, LAO0;->b(I)F

    move-result p0

    const v0, 0x3f70a3d7    # 0.94f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(I)Z
    .locals 10

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    const v1, 0x414eb852    # 12.92f

    const-wide v3, 0x4003333340000000L    # 2.4000000953674316

    const v5, 0x3f870a3d    # 1.055f

    const v6, 0x3d6147ae    # 0.055f

    const v7, 0x3d20e411    # 0.03928f

    cmpg-float v8, v0, v7

    if-gez v8, :cond_0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    add-float/2addr v0, v6

    div-float/2addr v0, v5

    float-to-double v8, v0

    .line 4
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v0, v8

    :goto_0
    cmpg-float v8, v2, v7

    if-gez v8, :cond_1

    div-float/2addr v2, v1

    goto :goto_1

    :cond_1
    add-float/2addr v2, v6

    div-float/2addr v2, v5

    float-to-double v8, v2

    .line 5
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v2, v8

    :goto_1
    cmpg-float v7, p0, v7

    if-gez v7, :cond_2

    div-float/2addr p0, v1

    goto :goto_2

    :cond_2
    add-float/2addr p0, v6

    div-float/2addr p0, v5

    float-to-double v5, p0

    .line 6
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float p0, v3

    :goto_2
    const v1, 0x3e59b3d0    # 0.2126f

    mul-float v0, v0, v1

    const v1, 0x3f371759    # 0.7152f

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    const v0, 0x3d93dd98    # 0.0722f

    mul-float p0, p0, v0

    add-float/2addr p0, v2

    const v0, 0x3f866666    # 1.05f

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr p0, v1

    div-float/2addr v0, p0

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public static e(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, LAO0;->b(I)F

    move-result p0

    const v0, 0x3f51eb85    # 0.82f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
