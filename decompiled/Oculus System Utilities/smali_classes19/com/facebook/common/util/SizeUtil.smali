.class public Lcom/facebook/common/util/SizeUtil;
.super Ljava/lang/Object;
.source "SizeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDipsToPixels(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dips"    # F
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 20
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static convertDipsToPixels(Landroid/content/res/Resources;F)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dips"    # F
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 26
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static convertPixelsToDips(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 50
    .local v0, "scale":F
    div-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static convertPixelsToDips(Landroid/content/res/Resources;F)I
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "px"    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 56
    .local v0, "scale":F
    div-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static convertPixelsToSps(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x2
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 38
    .local v0, "scale":F
    div-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static convertSpsToPixels(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dips"    # F
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 32
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static convertSpsToPixels(Landroid/content/res/Resources;F)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dips"    # F
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x2
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 44
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getDimenInDips(Landroid/content/res/Resources;I)I
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dimenId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/common/util/SizeUtil;->convertPixelsToDips(Landroid/content/res/Resources;F)I

    move-result v0

    return v0
.end method

.method public static getFontSizePx(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "textHeightResourceId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 98
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v0, v1

    .line 96
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getFontSizeSp(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dimenId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x2
    .end annotation

    .prologue
    .line 117
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 118
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 119
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static getScaleString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const-string v1, "1"

    .line 83
    :goto_0
    return-object v1

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 78
    .local v0, "densityDpi":I
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    .line 79
    const-string v1, "1"

    goto :goto_0

    .line 80
    :cond_1
    const/16 v1, 0x140

    if-lt v0, v1, :cond_2

    .line 81
    const-string v1, "2"

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "1.5"

    goto :goto_0
.end method

.method public static getTaskTrayHeightPixels(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 61
    const/16 v0, 0x19

    .line 62
    .local v0, "taskTrayHeightDp":I
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {p0, v1}, Lcom/facebook/common/util/SizeUtil;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v1

    return v1
.end method

.method public static updateHeightInPixels(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "heightPixels"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 130
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void
.end method
