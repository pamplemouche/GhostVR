.class public Lcom/facebook/common/util/TextSizeUtil;
.super Ljava/lang/Object;
.source "TextSizeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/util/TextSizeUtil$TextMeasuredAttributes;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static measureText(Ljava/lang/String;IFLandroid/text/TextPaint;Landroid/text/Layout$Alignment;)Lcom/facebook/common/util/TextSizeUtil$TextMeasuredAttributes;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "availableWidth"    # I
    .param p2, "lineHeightMultiplier"    # F
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Lcom/facebook/common/util/TextSizeUtil$TextMeasuredAttributes;

    invoke-direct {v1, v2, v2}, Lcom/facebook/common/util/TextSizeUtil$TextMeasuredAttributes;-><init>(II)V

    .line 45
    :goto_0
    return-object v1

    .line 34
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 44
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    new-instance v1, Lcom/facebook/common/util/TextSizeUtil$TextMeasuredAttributes;

    .line 45
    invoke-static {v0}, Lcom/facebook/fbui/textlayoutbuilder/util/LayoutMeasureUtil;->getHeight(Landroid/text/Layout;)I

    move-result v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/common/util/TextSizeUtil$TextMeasuredAttributes;-><init>(II)V

    goto :goto_0
.end method
