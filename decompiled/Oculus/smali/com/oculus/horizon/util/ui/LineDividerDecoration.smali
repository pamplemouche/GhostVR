.class public Lcom/oculus/horizon/util/ui/LineDividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LineDividerDecoration.java"


# instance fields
.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDrawLastDivider:Z

.field private mHeaderCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;ZZ)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 33
    sget-object v1, Lcom/oculus/horizon/R$styleable;->LineDividerDecoration:[I

    .line 34
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    if-eqz p3, :cond_3

    .line 39
    sget v2, Lcom/oculus/horizon/R$styleable;->LineDividerDecoration_lineDividerDecorationDrawableLarge:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    sget v0, Lcom/oculus/horizon/R$styleable;->LineDividerDecoration_lineDividerDecorationDrawableLarge:I

    .line 41
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    :cond_1
    if-nez v0, :cond_2

    .line 53
    if-eqz p3, :cond_4

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$drawable;->divider_horizontal_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-boolean p2, p0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->mDrawLastDivider:Z

    .line 62
    return-void

    .line 45
    :cond_3
    sget v2, Lcom/oculus/horizon/R$styleable;->LineDividerDecoration_lineDividerDecorationDrawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    sget v0, Lcom/oculus/horizon/R$styleable;->LineDividerDecoration_lineDividerDecorationDrawable:I

    .line 47
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$drawable;->gray_line_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    move v1, v2

    .line 89
    :goto_0
    if-ge v1, v3, :cond_0

    .line 91
    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->mDrawLastDivider:Z

    if-nez v0, :cond_1

    .line 115
    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 95
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 98
    iget v5, p0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->mHeaderCount:I

    if-ge v0, v5, :cond_3

    .line 89
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, v4, Landroid/widget/ProgressBar;

    if-nez v0, :cond_2

    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    .line 110
    iget-object v4, p0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 112
    iget-object v5, p0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v2, v0, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public setHeaderCount(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->mHeaderCount:I

    .line 72
    return-void
.end method
