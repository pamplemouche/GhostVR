.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/cy;

# interfaces
.implements Landroid/support/v7/view/menu/ah;
.implements Landroid/support/v7/view/menu/r;


# instance fields
.field a:Landroid/support/v7/view/menu/q;

.field b:Landroid/support/v7/widget/x;

.field private c:Landroid/support/v7/view/menu/p;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Z

.field private g:Landroid/support/v7/widget/ActionMenuPresenter;

.field private h:Landroid/support/v7/view/menu/ag;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/cy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->k:I

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->l:I

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->d:Landroid/content/Context;

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->e:I

    sget-object v1, Landroid/support/v7/b/l;->View:[I

    sget v2, Landroid/support/v7/b/b;->actionButtonStyle:I

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v7/b/l;->View_paddingStart:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->m:I

    sget v2, Landroid/support/v7/b/l;->View_paddingEnd:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->n:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Landroid/support/v7/b/l;->View:[I

    sget v2, Landroid/support/v7/b/b;->actionOverflowButtonStyle:I

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Landroid/support/v7/b/l;->View_paddingStart:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->o:I

    sget v1, Landroid/support/v7/b/l;->View_paddingEnd:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->p:I

    sget v1, Landroid/support/v7/b/l;->View_android_minWidth:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->q:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/v7/b/j;->sesl_action_menu_overflow_badge_text_n:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->r:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/view/View;IIII)I
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/v;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    instance-of p4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_0

    move-object p4, p0

    check-cast p4, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    const/4 v3, 0x2

    if-lez p2, :cond_5

    if-eqz p4, :cond_2

    if-lt p2, v3, :cond_5

    :cond_2
    mul-int p2, p2, p1

    const/high16 v4, -0x80000000

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int v4, p2, p1

    rem-int/2addr p2, p1

    if-eqz p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    if-ge v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iget-boolean p2, v0, Landroid/support/v7/widget/v;->a:Z

    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, v0, Landroid/support/v7/widget/v;->d:Z

    iput v3, v0, Landroid/support/v7/widget/v;->b:I

    mul-int p1, p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method private a(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method private c(II)V
    .locals 29

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/support/v7/widget/ActionMenuView;->k:I

    div-int v7, v2, v4

    rem-int v8, v2, v4

    const/4 v9, 0x0

    if-nez v7, :cond_0

    invoke-virtual {v0, v2, v9}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    div-int/2addr v8, v7

    add-int/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v8

    move v14, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    :goto_0
    if-ge v7, v8, :cond_8

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v19, v3

    const/16 v3, 0x8

    if-ne v9, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    instance-of v3, v11, Landroid/support/v7/view/menu/ActionMenuItemView;

    add-int/lit8 v13, v13, 0x1

    if-eqz v3, :cond_2

    iget v9, v0, Landroid/support/v7/widget/ActionMenuView;->l:I

    move/from16 v20, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    move/from16 v20, v13

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/v;

    iput-boolean v13, v9, Landroid/support/v7/widget/v;->f:Z

    iput v13, v9, Landroid/support/v7/widget/v;->c:I

    iput v13, v9, Landroid/support/v7/widget/v;->b:I

    iput-boolean v13, v9, Landroid/support/v7/widget/v;->d:Z

    iput v13, v9, Landroid/support/v7/widget/v;->leftMargin:I

    iput v13, v9, Landroid/support/v7/widget/v;->rightMargin:I

    if-eqz v3, :cond_3

    move-object v3, v11

    check-cast v3, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v9, Landroid/support/v7/widget/v;->e:Z

    iget-boolean v3, v9, Landroid/support/v7/widget/v;->a:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v14

    :goto_3
    invoke-static {v11, v4, v3, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-boolean v15, v9, Landroid/support/v7/widget/v;->d:Z

    if-eqz v15, :cond_5

    add-int/lit8 v16, v16, 0x1

    :cond_5
    iget-boolean v9, v9, Landroid/support/v7/widget/v;->a:Z

    if-eqz v9, :cond_6

    const/4 v12, 0x1

    :cond_6
    sub-int/2addr v14, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v9, 0x1

    if-ne v3, v9, :cond_7

    shl-int v3, v9, v7

    move v11, v10

    int-to-long v9, v3

    or-long v9, v17, v9

    move-wide/from16 v17, v9

    move v10, v11

    goto :goto_4

    :cond_7
    move v11, v10

    :goto_4
    move v15, v13

    move/from16 v13, v20

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    const/4 v9, 0x0

    goto :goto_0

    :cond_8
    move/from16 v19, v3

    const/4 v3, 0x2

    if-eqz v12, :cond_9

    if-ne v13, v3, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-lez v16, :cond_13

    if-lez v14, :cond_13

    const v9, 0x7fffffff

    const v3, 0x7fffffff

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v20, 0x0

    :goto_8
    if-ge v9, v8, :cond_d

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move/from16 v23, v7

    move-object/from16 v7, v22

    check-cast v7, Landroid/support/v7/widget/v;

    move/from16 v22, v10

    iget-boolean v10, v7, Landroid/support/v7/widget/v;->d:Z

    if-nez v10, :cond_b

    :cond_a
    move v7, v1

    move/from16 v24, v2

    goto :goto_9

    :cond_b
    iget v10, v7, Landroid/support/v7/widget/v;->b:I

    if-ge v10, v3, :cond_c

    iget v3, v7, Landroid/support/v7/widget/v;->b:I

    const/4 v10, 0x1

    shl-int v7, v10, v9

    int-to-long v10, v7

    move v7, v1

    move/from16 v24, v2

    move-wide/from16 v20, v10

    const/4 v11, 0x1

    goto :goto_9

    :cond_c
    iget v7, v7, Landroid/support/v7/widget/v;->b:I

    if-ne v7, v3, :cond_a

    const/4 v7, 0x1

    shl-int v10, v7, v9

    move v7, v1

    move/from16 v24, v2

    int-to-long v1, v10

    or-long v1, v20, v1

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v20, v1

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move v1, v7

    move/from16 v10, v22

    move/from16 v7, v23

    move/from16 v2, v24

    goto :goto_8

    :cond_d
    move/from16 v24, v2

    move/from16 v23, v7

    move/from16 v22, v10

    move v7, v1

    or-long v17, v17, v20

    if-le v11, v14, :cond_e

    goto :goto_d

    :cond_e
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v8, :cond_12

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/v;

    const/4 v10, 0x1

    shl-int v11, v10, v1

    int-to-long v10, v11

    and-long v25, v20, v10

    const-wide/16 v27, 0x0

    cmp-long v23, v25, v27

    if-nez v23, :cond_10

    iget v2, v9, Landroid/support/v7/widget/v;->b:I

    if-ne v2, v3, :cond_f

    or-long v17, v17, v10

    :cond_f
    move/from16 v23, v3

    goto :goto_c

    :cond_10
    if-eqz v5, :cond_11

    iget-boolean v10, v9, Landroid/support/v7/widget/v;->e:Z

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    if-ne v14, v10, :cond_11

    iget v11, v0, Landroid/support/v7/widget/ActionMenuView;->l:I

    add-int v10, v11, v4

    move/from16 v23, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, v11, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    :cond_11
    move/from16 v23, v3

    :goto_b
    iget v2, v9, Landroid/support/v7/widget/v;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v9, Landroid/support/v7/widget/v;->b:I

    iput-boolean v3, v9, Landroid/support/v7/widget/v;->f:Z

    add-int/lit8 v14, v14, -0x1

    :goto_c
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v23

    goto :goto_a

    :cond_12
    move v1, v7

    move/from16 v10, v22

    move/from16 v2, v24

    const/4 v3, 0x2

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_13
    move/from16 v24, v2

    move/from16 v23, v7

    move/from16 v22, v10

    move v7, v1

    :goto_d
    if-nez v12, :cond_14

    const/4 v1, 0x1

    if-ne v13, v1, :cond_15

    const/4 v2, 0x1

    goto :goto_e

    :cond_14
    const/4 v1, 0x1

    :cond_15
    const/4 v2, 0x0

    :goto_e
    if-lez v14, :cond_23

    const-wide/16 v9, 0x0

    cmp-long v3, v17, v9

    if-eqz v3, :cond_23

    sub-int/2addr v13, v1

    if-lt v14, v13, :cond_16

    if-nez v2, :cond_16

    if-le v15, v1, :cond_23

    :cond_16
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_19

    const-wide/16 v2, 0x1

    and-long v2, v17, v2

    const/high16 v5, 0x3f000000    # 0.5f

    const-wide/16 v9, 0x0

    cmp-long v11, v2, v9

    if-eqz v11, :cond_17

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/v;

    iget-boolean v2, v2, Landroid/support/v7/widget/v;->e:Z

    if-nez v2, :cond_18

    sub-float/2addr v1, v5

    goto :goto_f

    :cond_17
    const/4 v13, 0x0

    :cond_18
    :goto_f
    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x1

    shl-int v9, v3, v2

    int-to-long v9, v9

    and-long v9, v17, v9

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-eqz v3, :cond_1a

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/v;

    iget-boolean v2, v2, Landroid/support/v7/widget/v;->e:Z

    if-nez v2, :cond_1a

    sub-float/2addr v1, v5

    goto :goto_10

    :cond_19
    const/4 v13, 0x0

    :cond_1a
    :goto_10
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1b

    mul-int v14, v14, v4

    int-to-float v2, v14

    div-float/2addr v2, v1

    float-to-int v9, v2

    goto :goto_11

    :cond_1b
    const/4 v9, 0x0

    :goto_11
    move/from16 v11, v23

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v8, :cond_22

    const/4 v2, 0x1

    shl-int v3, v2, v1

    int-to-long v2, v3

    and-long v2, v17, v2

    const-wide/16 v14, 0x0

    cmp-long v5, v2, v14

    if-nez v5, :cond_1c

    const/4 v2, 0x1

    const/4 v5, 0x2

    goto :goto_15

    :cond_1c
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/v;

    instance-of v2, v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_1e

    iput v9, v3, Landroid/support/v7/widget/v;->c:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/support/v7/widget/v;->f:Z

    if-nez v1, :cond_1d

    iget-boolean v2, v3, Landroid/support/v7/widget/v;->e:Z

    if-nez v2, :cond_1d

    neg-int v2, v9

    const/4 v5, 0x2

    div-int/2addr v2, v5

    iput v2, v3, Landroid/support/v7/widget/v;->leftMargin:I

    goto :goto_13

    :cond_1d
    const/4 v5, 0x2

    :goto_13
    const/4 v2, 0x1

    goto :goto_14

    :cond_1e
    const/4 v5, 0x2

    iget-boolean v2, v3, Landroid/support/v7/widget/v;->a:Z

    if-eqz v2, :cond_1f

    iput v9, v3, Landroid/support/v7/widget/v;->c:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/support/v7/widget/v;->f:Z

    neg-int v10, v9

    div-int/2addr v10, v5

    iput v10, v3, Landroid/support/v7/widget/v;->rightMargin:I

    :goto_14
    const/4 v11, 0x1

    goto :goto_15

    :cond_1f
    const/4 v2, 0x1

    if-eqz v1, :cond_20

    div-int/lit8 v10, v9, 0x2

    iput v10, v3, Landroid/support/v7/widget/v;->leftMargin:I

    :cond_20
    add-int/lit8 v10, v8, -0x1

    if-eq v1, v10, :cond_21

    div-int/lit8 v10, v9, 0x2

    iput v10, v3, Landroid/support/v7/widget/v;->rightMargin:I

    :cond_21
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_22
    move/from16 v23, v11

    goto :goto_16

    :cond_23
    const/4 v13, 0x0

    :goto_16
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v23, :cond_25

    :goto_17
    if-ge v13, v8, :cond_25

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/v;

    iget-boolean v5, v3, Landroid/support/v7/widget/v;->f:Z

    if-nez v5, :cond_24

    goto :goto_18

    :cond_24
    iget v5, v3, Landroid/support/v7/widget/v;->b:I

    mul-int v5, v5, v4

    iget v3, v3, Landroid/support/v7/widget/v;->c:I

    add-int/2addr v5, v3

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->measure(II)V

    :goto_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    :cond_25
    if-eq v7, v1, :cond_26

    move/from16 v1, v22

    goto :goto_19

    :cond_26
    move/from16 v1, v19

    :goto_19
    move/from16 v2, v24

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/v;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/v;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/v;
    .locals 1

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/support/v7/widget/v;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/v;

    check-cast p1, Landroid/support/v7/widget/v;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/v;-><init>(Landroid/support/v7/widget/v;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/v;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/v;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget p1, v0, Landroid/support/v7/widget/v;->h:I

    if-gtz p1, :cond_1

    const/16 p1, 0x10

    iput p1, v0, Landroid/support/v7/widget/v;->h:I

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->b()Landroid/support/v7/widget/v;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v7/view/menu/ag;Landroid/support/v7/view/menu/q;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->h:Landroid/support/v7/view/menu/ag;

    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/q;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Z

    return v0
.end method

.method protected a(I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v1, Landroid/support/v7/widget/t;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/support/v7/widget/t;

    invoke-interface {v1}, Landroid/support/v7/widget/t;->d()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-lez p1, :cond_2

    instance-of p1, v2, Landroid/support/v7/widget/t;

    if-eqz p1, :cond_2

    check-cast v2, Landroid/support/v7/widget/t;

    invoke-interface {v2}, Landroid/support/v7/widget/t;->c()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public a(Landroid/support/v7/view/menu/t;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/menu/p;->a(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public synthetic b(Landroid/util/AttributeSet;)Landroid/support/v7/widget/cz;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/v;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/cz;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/v;

    move-result-object p1

    return-object p1
.end method

.method protected b()Landroid/support/v7/widget/v;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/v;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/v;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/v;->h:I

    return-object v0
.end method

.method public c()Landroid/support/v7/widget/v;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->b()Landroid/support/v7/widget/v;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/v;->a:Z

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    instance-of p1, p1, Landroid/support/v7/widget/v;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Landroid/support/v7/view/menu/p;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    return-object v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->b()Landroid/support/v7/widget/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/v;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/v;

    move-result-object p1

    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/support/v7/view/menu/p;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/p;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    new-instance v2, Landroid/support/v7/widget/w;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/w;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/q;)V

    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->h:Landroid/support/v7/view/menu/ag;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/support/v7/widget/u;

    invoke-direct {v1}, Landroid/support/v7/widget/u;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/view/menu/ag;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/af;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuView;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    return-object v0
.end method

.method public getOverflowBadgeText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->e:I

    return v0
.end method

.method getSumOfDigitsInBadges()I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/p;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/t;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/t;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/t;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->h()Z

    :cond_0
    return-void
.end method

.method protected synthetic j()Landroid/support/v7/widget/cz;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->b()Landroid/support/v7/widget/v;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/cy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/support/v7/b/l;->View:[I

    sget v2, Landroid/support/v7/b/b;->actionButtonStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Landroid/support/v7/b/l;->View_paddingStart:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->m:I

    sget v0, Landroid/support/v7/b/l;->View_paddingEnd:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->n:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/support/v7/b/l;->View:[I

    sget v2, Landroid/support/v7/b/b;->actionOverflowButtonStyle:I

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Landroid/support/v7/b/l;->View_paddingStart:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->o:I

    sget v0, Landroid/support/v7/b/l;->View_paddingEnd:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->p:I

    sget v0, Landroid/support/v7/b/l;->View_android_minWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->q:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/cy;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->i()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/cy;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v6

    move v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v5, v1, :cond_5

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/v;

    iget-boolean v14, v11, Landroid/support/v7/widget/v;->a:Z

    if-eqz v14, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->a(I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/2addr v8, v3

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/support/v7/widget/v;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/support/v7/widget/v;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/support/v7/widget/v;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/support/v7/widget/v;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->a(I)Z

    move-result v7

    add-int/lit8 v9, v9, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v8, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v2

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v8, 0x1

    sub-int/2addr v9, v3

    if-lez v9, :cond_7

    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_3
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_4
    if-ge v3, v1, :cond_d

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/v;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_9

    iget-boolean v8, v7, Landroid/support/v7/widget/v;->a:Z

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    iget v8, v7, Landroid/support/v7/widget/v;->rightMargin:I

    sub-int/2addr v5, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v6, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v6, v7, Landroid/support/v7/widget/v;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    :goto_6
    if-ge v3, v1, :cond_d

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/v;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_c

    iget-boolean v8, v7, Landroid/support/v7/widget/v;->a:Z

    if-eqz v8, :cond_b

    goto :goto_7

    :cond_b
    iget v8, v7, Landroid/support/v7/widget/v;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v6, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    iget v6, v7, Landroid/support/v7/widget/v;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    if-eq v0, v1, :cond_1

    iput v3, p0, Landroid/support/v7/widget/ActionMenuView;->j:I

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/view/menu/p;

    if-eqz v1, :cond_2

    iget v4, p0, Landroid/support/v7/widget/ActionMenuView;->j:I

    if-eq v0, v4, :cond_2

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->j:I

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/p;->a(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->c(II)V

    goto/16 :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_a

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/v;

    iput v3, v5, Landroid/support/v7/widget/v;->rightMargin:I

    iput v3, v5, Landroid/support/v7/widget/v;->leftMargin:I

    instance-of v6, v4, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/support/v7/widget/ActionMenuView;->m:I

    iget v7, p0, Landroid/support/v7/widget/ActionMenuView;->n:I

    invoke-virtual {v4, v6, v3, v7, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    add-int/lit8 v6, v0, -0x1

    if-ne v1, v6, :cond_6

    move-object v6, v4

    check-cast v6, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Landroid/support/v7/widget/ActionMenuView;->n:I

    iput v6, v5, Landroid/support/v7/widget/v;->rightMargin:I

    goto :goto_2

    :cond_4
    iget v6, p0, Landroid/support/v7/widget/ActionMenuView;->n:I

    iput v6, v5, Landroid/support/v7/widget/v;->leftMargin:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v6, v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setIsLastItem(Z)V

    iget v7, p0, Landroid/support/v7/widget/ActionMenuView;->q:I

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/ActionMenuItemView;->setMinWidth(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p0, Landroid/support/v7/widget/ActionMenuView;->o:I

    iget v6, p0, Landroid/support/v7/widget/ActionMenuView;->p:I

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_4

    :cond_6
    if-ge v1, v6, :cond_9

    check-cast v4, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setIsLastItem(Z)V

    goto :goto_4

    :cond_7
    iget-boolean v5, v5, Landroid/support/v7/widget/v;->a:Z

    if-eqz v5, :cond_9

    instance-of v5, v4, Landroid/support/v7/widget/o;

    if-eqz v5, :cond_8

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Landroid/support/v7/widget/ActionMenuView;->o:I

    iget v7, p0, Landroid/support/v7/widget/ActionMenuView;->p:I

    invoke-virtual {v5, v6, v3, v7, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_3

    :cond_8
    iget v5, p0, Landroid/support/v7/widget/ActionMenuView;->o:I

    iget v6, p0, Landroid/support/v7/widget/ActionMenuView;->p:I

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_3
    iget v5, p0, Landroid/support/v7/widget/ActionMenuView;->q:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/cy;->onMeasure(II)V

    :goto_5
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->d(Z)V

    :cond_0
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/x;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->b:Landroid/support/v7/widget/x;

    return-void
.end method

.method public setOverflowBadgeText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->r:Ljava/lang/String;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->f:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->e:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->e:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->d:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->d:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method
