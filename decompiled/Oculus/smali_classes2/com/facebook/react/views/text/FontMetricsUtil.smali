.class public Lcom/facebook/react/views/text/FontMetricsUtil;
.super Ljava/lang/Object;
.source "FontMetricsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    .line 26
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 27
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 33
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 34
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v9

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 35
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 36
    const-string v5, "T"

    const-string v6, "T"

    .line 37
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 36
    invoke-virtual {v3, v5, v0, v6, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 38
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 39
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 40
    const-string v7, "x"

    const-string v8, "x"

    .line 41
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 40
    invoke-virtual {v3, v7, v0, v8, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 42
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    .line 43
    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 44
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 45
    invoke-virtual {p1, v0, v3}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 46
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    .line 47
    const-string v9, "x"

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    iget v11, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-interface {v8, v9, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 48
    const-string v9, "y"

    iget v10, v3, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v11, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-interface {v8, v9, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 49
    const-string v9, "width"

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v10

    iget v11, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-interface {v8, v9, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 50
    const-string v9, "height"

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v10, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v10

    float-to-double v10, v3

    invoke-interface {v8, v9, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 51
    const-string v3, "descender"

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-interface {v8, v3, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 52
    const-string v3, "ascender"

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-interface {v8, v3, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 53
    const-string v3, "baseline"

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-interface {v8, v3, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 54
    const-string v3, "capHeight"

    invoke-interface {v8, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 55
    const-string v3, "xHeight"

    invoke-interface {v8, v3, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 56
    const-string v3, "text"

    .line 57
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    invoke-interface {p0, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-interface {v8, v3, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {v2, v8}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 60
    :cond_0
    return-object v2
.end method
