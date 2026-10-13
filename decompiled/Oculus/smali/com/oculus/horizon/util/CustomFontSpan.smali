.class public Lcom/oculus/horizon/util/CustomFontSpan;
.super Landroid/text/style/TypefaceSpan;
.source "CustomFontSpan.java"


# instance fields
.field private final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method private apply(Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/util/CustomFontSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/util/CustomFontSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 36
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/horizon/util/CustomFontSpan;->apply(Landroid/graphics/Paint;)V

    .line 24
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oculus/horizon/util/CustomFontSpan;->apply(Landroid/graphics/Paint;)V

    .line 29
    return-void
.end method
