.class public Lcom/facebook/fbui/textlayoutbuilder/util/LayoutMeasureUtil;
.super Ljava/lang/Object;
.source "LayoutMeasureUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentLeft(Landroid/text/Layout;)I
    .locals 3
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 93
    :cond_1
    return v1

    .line 88
    :cond_2
    const v1, 0x7fffffff

    .line 89
    .local v1, "left":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 90
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getHeight(Landroid/text/Layout;)I
    .locals 12
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 57
    if-nez p0, :cond_0

    .line 75
    :goto_0
    return v6

    .line 61
    :cond_0
    const/4 v3, 0x0

    .line 62
    .local v3, "extra":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-ge v7, v8, :cond_1

    instance-of v7, p0, Landroid/text/StaticLayout;

    if-eqz v7, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 65
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v0

    .line 66
    .local v0, "above":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    .line 67
    .local v1, "below":I
    sub-int v6, v1, v0

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v7

    div-float v5, v6, v7

    .line 68
    .local v5, "originalSize":F
    sub-int v6, v1, v0

    int-to-float v6, v6

    sub-float v2, v6, v5

    .line 69
    .local v2, "ex":F
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_2

    .line 70
    float-to-double v6, v2

    add-double/2addr v6, v10

    double-to-int v3, v6

    .line 75
    .end local v0    # "above":I
    .end local v1    # "below":I
    .end local v2    # "ex":F
    .end local v4    # "line":I
    .end local v5    # "originalSize":F
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    goto :goto_0

    .line 72
    .restart local v0    # "above":I
    .restart local v1    # "below":I
    .restart local v2    # "ex":F
    .restart local v4    # "line":I
    .restart local v5    # "originalSize":F
    :cond_2
    neg-float v6, v2

    float-to-double v6, v6

    add-double/2addr v6, v10

    double-to-int v6, v6

    neg-int v3, v6

    goto :goto_1
.end method

.method public static getWidth(Landroid/text/Layout;)I
    .locals 4
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    .line 32
    if-nez p0, :cond_1

    .line 33
    const/4 v2, 0x0

    .line 44
    :cond_0
    return v2

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 38
    .local v0, "count":I
    const/4 v2, 0x0

    .line 40
    .local v2, "maxWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 41
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
