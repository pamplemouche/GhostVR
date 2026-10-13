.class public Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;
.super Landroid/text/style/ReplacementSpan;
.source "TextInlineViewPlaceholderSpan.java"

# interfaces
.implements Lcom/facebook/react/views/text/ReactSpan;


# instance fields
.field private mHeight:I

.field private mReactTag:I

.field private mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 23
    iput p1, p0, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->mReactTag:I

    .line 24
    iput p2, p0, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->mWidth:I

    .line 25
    iput p3, p0, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->mHeight:I

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->mHeight:I

    return v0
.end method

.method public getReactTag()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->mReactTag:I

    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    if-eqz p5, :cond_0

    .line 45
    iget v0, p0, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->mHeight:I

    neg-int v0, v0

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 46
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 48
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 49
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 52
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->mWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->mWidth:I

    return v0
.end method
