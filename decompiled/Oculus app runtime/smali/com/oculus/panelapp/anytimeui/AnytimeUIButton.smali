.class public Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;
.super Lcom/oculus/vrshell/panels/views/ShellButton;
.source "AnytimeUIButton.java"


# static fields
.field private static final BADGE_RADIUS:I = 0x3

.field private static final MAX_LINES_OF_TEXT:I = 0x2

.field private static final MENU_BADGE_X_MARGIN:I = 0x1e

.field private static final MENU_BADGE_Y:I = 0x5


# instance fields
.field private mInDetailBar:Z

.field private mIsBadgeSticky:Z

.field private mIsBadged:Z

.field private mMeasuredWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mStableWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/panels/views/ShellButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mStableWidth:Z

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mPaint:Landroid/graphics/Paint;

    .line 18
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawBadge(Landroid/graphics/Canvas;)V
    .locals 5

    .line 86
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mMeasuredWidth:I

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$color;->blue_3:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-boolean v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mInDetailBar:Z

    const/high16 v2, 0x40400000    # 3.0f

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sget v4, Lcom/oculus/panelapp/anytimeui/R$dimen;->anytime_detail_button_icon_width:I

    .line 105
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    add-float/2addr v1, v2

    add-float/2addr v1, v2

    .line 113
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getPaddingTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    .line 115
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 117
    :cond_1
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mMeasuredWidth:I

    add-int/lit8 v0, v0, -0x1e

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public contentChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mStableWidth:Z

    .line 123
    iput v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mMeasuredWidth:I

    return-void
.end method

.method protected getIsBadgeSticky()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mIsBadgeSticky:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/oculus/vrshell/panels/views/ShellButton;->onAttachedToWindow()V

    .line 42
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 43
    instance-of v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mInDetailBar:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 50
    invoke-super {p0, p1}, Lcom/oculus/vrshell/panels/views/ShellButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mStableWidth:Z

    if-nez v0, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getLineCount()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 63
    invoke-super {p0}, Lcom/oculus/vrshell/panels/views/ShellButton;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 66
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setTextSize(F)V

    goto :goto_1

    .line 71
    :cond_2
    iput-boolean v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mStableWidth:Z

    .line 75
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mStableWidth:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mMeasuredWidth:I

    if-nez v0, :cond_4

    .line 76
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mMeasuredWidth:I

    .line 79
    :cond_4
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mIsBadged:Z

    if-eqz v0, :cond_5

    .line 80
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->drawBadge(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method protected setIsBadgeSticky(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mIsBadgeSticky:Z

    return-void
.end method

.method protected setIsBadged(Z)V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mIsBadged:Z

    if-eq v0, p1, :cond_0

    .line 23
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->mIsBadged:Z

    .line 25
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->invalidate()V

    :cond_0
    return-void
.end method
