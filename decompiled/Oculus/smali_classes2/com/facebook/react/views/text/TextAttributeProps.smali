.class public Lcom/facebook/react/views/text/TextAttributeProps;
.super Ljava/lang/Object;
.source "TextAttributeProps.java"


# instance fields
.field protected mAllowFontScaling:Z

.field protected mBackgroundColor:I

.field protected mColor:I

.field protected mContainsImages:Z

.field protected mFontFamily:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mFontSize:I

.field protected mFontSizeInput:F

.field protected mFontStyle:I

.field protected mFontWeight:I

.field protected mHeightOfTallestInlineImage:F

.field protected mIncludeFontPadding:Z

.field protected mIsBackgroundColorSet:Z

.field protected mIsColorSet:Z

.field protected mIsLineThroughTextDecorationSet:Z

.field protected mIsUnderlineTextDecorationSet:Z

.field protected mJustificationMode:I

.field protected mLetterSpacing:F

.field protected mLetterSpacingInput:F

.field protected mLineHeight:F

.field protected mLineHeightInput:F

.field protected mNumberOfLines:I

.field private final mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

.field protected mTextAlign:I

.field protected mTextBreakStrategy:I

.field protected mTextShadowColor:I

.field protected mTextShadowOffsetDx:F

.field protected mTextShadowOffsetDy:F

.field protected mTextShadowRadius:F

.field protected mTextTransform:Lcom/facebook/react/views/text/TextTransform;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    .line 37
    iput v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacing:F

    .line 38
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    .line 39
    iput-boolean v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    .line 41
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    .line 44
    iput v6, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mNumberOfLines:I

    .line 45
    iput v6, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    .line 46
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    .line 47
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    .line 48
    iput v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 49
    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextBreakStrategy:I

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v0, v4, :cond_0

    :cond_0
    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mJustificationMode:I

    .line 54
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->UNSET:Lcom/facebook/react/views/text/TextTransform;

    iput-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    .line 59
    const/high16 v0, 0x55000000

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    .line 61
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    .line 62
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    .line 63
    iput-boolean v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIncludeFontPadding:Z

    .line 69
    iput v6, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    .line 71
    iput v6, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    .line 93
    iput-object v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mContainsImages:Z

    .line 96
    iput v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    .line 101
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 102
    const-string v0, "numberOfLines"

    invoke-direct {p0, v0, v6}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setNumberOfLines(I)V

    .line 103
    const-string v0, "lineHeight"

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    .line 104
    const-string v0, "letterSpacing"

    invoke-direct {p0, v0, v5}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setLetterSpacing(F)V

    .line 105
    const-string v0, "allowFontScaling"

    invoke-direct {p0, v0, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getBooleanProp(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setAllowFontScaling(Z)V

    .line 106
    const-string v0, "textAlign"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextAlign(Ljava/lang/String;)V

    .line 107
    const-string v0, "fontSize"

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    .line 108
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "color"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    .line 109
    const-string v0, "foregroundColor"

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "foregroundColor"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    .line 110
    const-string v0, "backgroundColor"

    .line 111
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "backgroundColor"

    .line 112
    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    :goto_3
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setBackgroundColor(Ljava/lang/Integer;)V

    .line 114
    const-string v0, "fontFamily"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontFamily(Ljava/lang/String;)V

    .line 115
    const-string v0, "fontWeight"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontWeight(Ljava/lang/String;)V

    .line 116
    const-string v0, "fontStyle"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontStyle(Ljava/lang/String;)V

    .line 117
    const-string v0, "includeFontPadding"

    invoke-direct {p0, v0, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getBooleanProp(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setIncludeFontPadding(Z)V

    .line 118
    const-string v0, "textDecorationLine"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextDecorationLine(Ljava/lang/String;)V

    .line 119
    const-string v0, "textBreakStrategy"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextBreakStrategy(Ljava/lang/String;)V

    .line 120
    const-string v0, "textShadowOffset"

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "textShadowOffset"

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 121
    const-string v0, "textShadowRadius"

    invoke-direct {p0, v0, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowRadius(F)V

    .line 122
    const-string v0, "textShadowColor"

    const/high16 v1, 0x55000000

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowColor(I)V

    .line 123
    const-string v0, "textTransform"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextTransform(Ljava/lang/String;)V

    .line 124
    return-void

    :cond_2
    move v0, v2

    .line 50
    goto/16 :goto_0

    :cond_3
    move-object v0, v3

    .line 108
    goto/16 :goto_1

    :cond_4
    move-object v0, v3

    .line 109
    goto/16 :goto_2

    :cond_5
    move-object v0, v3

    .line 112
    goto :goto_3
.end method

.method private getBooleanProp(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 130
    :cond_0
    return p2
.end method

.method private getFloatProp(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 154
    :cond_0
    return p2
.end method

.method private getIntProp(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 146
    :cond_0
    return p2
.end method

.method private getPaddingProp(Ljava/lang/String;)F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    const-string v1, "padding"

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "padding"

    invoke-direct {p0, v0, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .line 437
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    goto :goto_0
.end method

.method private getStringProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseNumericFontWeight(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "00"

    .line 396
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 398
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_0

    .line 399
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getBottomPadding()F
    .locals 1

    .prologue
    .line 409
    const-string v0, "paddingBottom"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getEffectiveLineHeight()F
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    .line 162
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    .line 163
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 165
    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    :goto_1
    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_1
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    goto :goto_1
.end method

.method public getEndPadding()F
    .locals 1

    .prologue
    .line 421
    const-string v0, "paddingEnd"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getStartPadding()F
    .locals 1

    .prologue
    .line 417
    const-string v0, "paddingStart"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 425
    const-string v0, "paddingTop"

    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getPaddingProp(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public setAllowFontScaling(Z)V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eq p1, v0, :cond_0

    .line 207
    iput-boolean p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    .line 208
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    .line 209
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    .line 210
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/TextAttributeProps;->setLetterSpacing(F)V

    .line 212
    :cond_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 261
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    .line 262
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    .line 266
    :cond_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 251
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    .line 252
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    .line 255
    :cond_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 269
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    .prologue
    .line 240
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    .line 241
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 242
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 247
    :goto_0
    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    .line 248
    return-void

    .line 245
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public setFontStyle(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    const/4 v0, -0x1

    .line 297
    const-string v1, "italic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    const/4 v0, 0x2

    .line 302
    :cond_0
    :goto_0
    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    if-eq v0, v1, :cond_1

    .line 303
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    .line 305
    :cond_1
    return-void

    .line 299
    :cond_2
    const-string v1, "normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontWeight(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x1f4

    const/4 v0, -0x1

    .line 277
    if-eqz p1, :cond_3

    .line 278
    invoke-static {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->parseNumericFontWeight(Ljava/lang/String;)I

    move-result v1

    .line 280
    :goto_0
    if-ge v1, v3, :cond_0

    const-string v2, "bold"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    :cond_0
    const/4 v0, 0x1

    .line 286
    :cond_1
    :goto_1
    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    if-eq v0, v1, :cond_2

    .line 287
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    .line 289
    :cond_2
    return-void

    :cond_3
    move v1, v0

    .line 278
    goto :goto_0

    .line 282
    :cond_4
    const-string v2, "normal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eq v1, v0, :cond_1

    if-ge v1, v3, :cond_1

    .line 284
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setIncludeFontPadding(Z)V
    .locals 0

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIncludeFontPadding:Z

    .line 309
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 1

    .prologue
    .line 198
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 199
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 201
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    .line 202
    :goto_0
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacing:F

    .line 203
    return-void

    .line 201
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 202
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    goto :goto_0
.end method

.method public setLineHeight(F)V
    .locals 1

    .prologue
    .line 186
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    .line 187
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 188
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_1

    .line 192
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    .line 193
    :goto_1
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    goto :goto_1
.end method

.method public setNumberOfLines(I)V
    .locals 0

    .prologue
    .line 182
    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mNumberOfLines:I

    .line 183
    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x1a

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    const-string v0, "justify"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_0

    .line 217
    iput v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mJustificationMode:I

    .line 219
    :cond_0
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    .line 237
    :goto_0
    return-void

    .line 221
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    .line 222
    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mJustificationMode:I

    .line 225
    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    :cond_3
    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    goto :goto_0

    .line 227
    :cond_4
    const-string v0, "left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    goto :goto_0

    .line 229
    :cond_5
    const-string v0, "right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 230
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    goto :goto_0

    .line 231
    :cond_6
    const-string v0, "center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    iput v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    goto :goto_0

    .line 234
    :cond_7
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textAlign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextBreakStrategy(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 330
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "highQuality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextBreakStrategy:I

    goto :goto_0

    .line 332
    :cond_2
    const-string v0, "simple"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextBreakStrategy:I

    goto :goto_0

    .line 334
    :cond_3
    const-string v0, "balanced"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextBreakStrategy:I

    goto :goto_0

    .line 337
    :cond_4
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textBreakStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextDecorationLine(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    .line 313
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    .line 314
    if-eqz p1, :cond_2

    .line 315
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 316
    const-string v4, "underline"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    iput-boolean v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    .line 315
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    const-string v4, "strikethrough"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    iput-boolean v5, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    goto :goto_1

    .line 323
    :cond_2
    return-void
.end method

.method public setTextShadowColor(I)V
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    if-eq p1, v0, :cond_0

    .line 368
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    .line 370
    :cond_0
    return-void
.end method

.method public setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 343
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 344
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    .line 346
    if-eqz p1, :cond_1

    .line 347
    const-string v0, "width"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "width"

    .line 348
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const-string v0, "width"

    .line 350
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 352
    :cond_0
    const-string v0, "height"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "height"

    .line 353
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    const-string v0, "height"

    .line 355
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    .line 358
    :cond_1
    return-void
.end method

.method public setTextShadowRadius(F)V
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 362
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    .line 364
    :cond_0
    return-void
.end method

.method public setTextTransform(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 373
    if-eqz p1, :cond_0

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    .line 384
    :goto_0
    return-void

    .line 375
    :cond_1
    const-string v0, "uppercase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->UPPERCASE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_0

    .line 377
    :cond_2
    const-string v0, "lowercase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_0

    .line 379
    :cond_3
    const-string v0, "capitalize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 380
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_0

    .line 382
    :cond_4
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textTransform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
