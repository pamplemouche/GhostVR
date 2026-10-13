.class public Landroidx/percentlayout/widget/PercentLayoutHelper;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;,
        Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;,
        Landroidx/percentlayout/widget/PercentLayoutHelper$PercentMarginLayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mHost:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iput-object p1, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 138
    return-void
.end method

.method public static fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    return-void
.end method

.method public static getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    .line 199
    const/4 v0, 0x0

    .line 200
    sget-object v1, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 201
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_widthPercent:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 203
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_0

    .line 207
    if-eqz v0, :cond_a

    .line 208
    :goto_0
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    .line 210
    :cond_0
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_heightPercent:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 211
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_1

    .line 215
    if-eqz v0, :cond_b

    .line 216
    :goto_1
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    .line 218
    :cond_1
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_marginPercent:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 219
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_2

    .line 223
    if-eqz v0, :cond_c

    .line 224
    :goto_2
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    .line 225
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 226
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    .line 227
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    .line 229
    :cond_2
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_marginLeftPercent:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 231
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_3

    .line 235
    if-eqz v0, :cond_d

    .line 236
    :goto_3
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    .line 238
    :cond_3
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_marginTopPercent:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 240
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_4

    .line 244
    if-eqz v0, :cond_e

    .line 245
    :goto_4
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 247
    :cond_4
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_marginRightPercent:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 249
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_5

    .line 253
    if-eqz v0, :cond_f

    .line 254
    :goto_5
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    .line 256
    :cond_5
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_marginBottomPercent:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 258
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_6

    .line 262
    if-eqz v0, :cond_10

    .line 263
    :goto_6
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    .line 265
    :cond_6
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_marginStartPercent:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 267
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_7

    .line 271
    if-eqz v0, :cond_11

    .line 272
    :goto_7
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    .line 274
    :cond_7
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_marginEndPercent:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 276
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_8

    .line 280
    if-eqz v0, :cond_12

    .line 281
    :goto_8
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    .line 284
    :cond_8
    sget v2, Landroidx/percentlayout/R$styleable;->PercentLayout_Layout_layout_aspectRatio:I

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 285
    cmpl-float v3, v2, v4

    if-eqz v3, :cond_9

    .line 289
    if-eqz v0, :cond_13

    .line 290
    :goto_9
    iput v2, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    .line 293
    :cond_9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    return-object v0

    .line 207
    :cond_a
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto/16 :goto_0

    .line 215
    :cond_b
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto/16 :goto_1

    .line 223
    :cond_c
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto/16 :goto_2

    .line 235
    :cond_d
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_3

    .line 244
    :cond_e
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_4

    .line 253
    :cond_f
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_5

    .line 262
    :cond_10
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_6

    .line 271
    :cond_11
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_7

    .line 280
    :cond_12
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_8

    .line 289
    :cond_13
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_9
.end method

.method private static shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    .line 380
    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p1, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroidx/percentlayout/widget/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentMarginLayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    .line 374
    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p1, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroidx/percentlayout/widget/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentMarginLayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustChildren(II)V
    .locals 8

    .prologue
    .line 165
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 166
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 167
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 168
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 169
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    .line 170
    iget-object v0, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 171
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 175
    instance-of v0, v1, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 176
    check-cast v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;

    .line 177
    invoke-interface {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    instance-of v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_1

    .line 183
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v6, v1, v3, v4}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->fillMarginLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;II)V

    .line 169
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v0, v1, v3, v4}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V

    goto :goto_1

    .line 191
    :cond_2
    return-void
.end method

.method public handleMeasuredStateTooSmall()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v8, -0x2

    .line 345
    iget-object v1, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v4, v0

    move v3, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 346
    iget-object v0, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 347
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 351
    instance-of v0, v1, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 352
    check-cast v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;

    .line 353
    invoke-interface {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v7

    .line 354
    if-eqz v7, :cond_0

    .line 355
    invoke-static {v6, v7}, Landroidx/percentlayout/widget/PercentLayoutHelper;->shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v0, v2

    .line 359
    :goto_1
    invoke-static {v6, v7}, Landroidx/percentlayout/widget/PercentLayoutHelper;->shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, v2

    .line 345
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 369
    :cond_1
    return v3

    :cond_2
    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public restoreOriginalParams()V
    .locals 5

    .prologue
    .line 306
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 307
    iget-object v0, p0, Landroidx/percentlayout/widget/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 312
    instance-of v0, v1, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 313
    check-cast v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;

    .line 314
    invoke-interface {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    instance-of v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    .line 320
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->restoreMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 306
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 327
    :cond_2
    return-void
.end method
