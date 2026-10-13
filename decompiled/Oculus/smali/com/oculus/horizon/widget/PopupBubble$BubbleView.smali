.class Lcom/oculus/horizon/widget/PopupBubble$BubbleView;
.super Landroid/widget/FrameLayout;
.source "PopupBubble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/PopupBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BubbleView"
.end annotation


# instance fields
.field final mBox:Landroid/view/View;

.field final mContentInset:Landroid/graphics/Rect;

.field mIsLaidOut:Z

.field final mNub:Landroid/view/View;

.field final mShowBelow:Z

.field final mTextView:Landroid/widget/TextView;

.field final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 235
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 232
    iput-boolean v3, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mIsLaidOut:Z

    .line 237
    sget v0, Lcom/oculus/horizon/R$layout;->bubble_view_layout:I

    invoke-static {p1, v0, p0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 239
    iput-boolean p2, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mShowBelow:Z

    .line 241
    sget v0, Lcom/oculus/horizon/R$id;->upper_nub:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    sget v1, Lcom/oculus/horizon/R$id;->lower_nub:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 244
    iget-boolean v2, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mShowBelow:Z

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_0
    sget v2, Lcom/oculus/horizon/R$id;->box:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mBox:Landroid/view/View;

    .line 250
    iget-boolean v2, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mShowBelow:Z

    if-eqz v2, :cond_2

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mNub:Landroid/view/View;

    .line 251
    sget v0, Lcom/oculus/horizon/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mTextView:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mTitleView:Landroid/widget/TextView;

    .line 254
    if-eqz p3, :cond_1

    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mContentInset:Landroid/graphics/Rect;

    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mNub:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 261
    return-void

    :cond_2
    move-object v0, v1

    .line 250
    goto :goto_0
.end method

.method private measureContentInset()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 332
    iget-object v1, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mContentInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 333
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->setVisibility(I)V

    .line 269
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 300
    invoke-direct {p0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->measureContentInset()V

    .line 302
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 303
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mNub:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 305
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$dimen;->tooltip_overlap:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 312
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mShowBelow:Z

    if-eqz v0, :cond_0

    .line 314
    add-int v0, v2, v4

    .line 315
    iget-object v3, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mContentInset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v3

    sub-int/2addr v3, v5

    .line 316
    add-int/2addr v1, v3

    move v4, v3

    move v3, v1

    move v1, v2

    .line 323
    :goto_0
    iget-object v5, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mBox:Landroid/view/View;

    iget-object v6, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mBox:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v2, v4, v6, v3}, Landroid/view/View;->layout(IIII)V

    .line 324
    iget-object v3, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mNub:Landroid/view/View;

    iget-object v4, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mNub:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v2, v1, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mIsLaidOut:Z

    .line 327
    return-void

    .line 319
    :cond_0
    add-int v3, v2, v1

    .line 320
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mContentInset:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    sub-int v1, v0, v5

    .line 321
    add-int v0, v1, v4

    move v4, v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 273
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 275
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 276
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 278
    if-ne v1, v4, :cond_0

    if-ne v0, v4, :cond_0

    .line 280
    invoke-virtual {p0, v2, v3}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->setMeasuredDimension(II)V

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mBox:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 284
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mNub:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mBox:Landroid/view/View;

    .line 288
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mNub:Landroid/view/View;

    .line 289
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 291
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$dimen;->tooltip_overlap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 293
    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->setVisibility(I)V

    .line 265
    return-void
.end method
