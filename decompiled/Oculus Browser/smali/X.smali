.class public abstract LX;
.super Ll0;
.source "PG"


# instance fields
.field public k:I

.field public l:I

.field public m:Landroid/animation/ValueAnimator;

.field public n:I

.field public o:Z

.field public p:F

.field public q:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll0;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LX;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ll0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, LX;->n:I

    return-void
.end method

.method public static a(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 7

    .line 53
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 54
    sget-object p1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 55
    invoke-virtual {p0}, Lz0;->a()I

    move-result v0

    .line 56
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 57
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    .line 60
    new-instance v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 61
    iput v3, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->y:I

    .line 62
    invoke-static {v4}, LA7;->j(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->c()I

    move-result p2

    add-int/2addr p2, p1

    if-ne v5, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->A:Z

    int-to-float p1, v5

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->z:F

    move-object p1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 76
    invoke-virtual {p0}, LX;->b()I

    move-result p4

    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    .line 77
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()I

    move-result p1

    neg-int p1, p1

    if-ne p4, p1, :cond_2

    .line 78
    :cond_1
    invoke-static {p3, v0}, LA7;->h(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 10

    .line 94
    invoke-virtual {p0}, LX;->b()I

    move-result v0

    .line 95
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v1, :cond_2

    .line 96
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 97
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 98
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 99
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, LY;

    .line 100
    iget v8, v5, LY;->a:I

    .line 101
    invoke-static {v8, v4}, LX;->a(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 102
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v8

    .line 103
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v5

    :cond_0
    neg-int v5, v0

    if-gt v6, v5, :cond_1

    if-lt v7, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_9

    .line 104
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, LY;

    .line 106
    iget v6, v5, LY;->a:I

    and-int/lit8 v7, v6, 0x11

    const/16 v8, 0x11

    if-ne v7, v8, :cond_9

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    neg-int v7, v7

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    neg-int v8, v8

    .line 109
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_3

    .line 110
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->c()I

    move-result v3

    add-int/2addr v8, v3

    :cond_3
    const/4 v3, 0x2

    .line 111
    invoke-static {v6, v3}, LX;->a(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 112
    invoke-static {v1}, LA7;->j(Landroid/view/View;)I

    move-result v1

    add-int/2addr v8, v1

    goto :goto_2

    :cond_4
    const/4 v9, 0x5

    .line 113
    invoke-static {v6, v9}, LX;->a(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 114
    invoke-static {v1}, LA7;->j(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v8

    if-ge v0, v1, :cond_5

    move v7, v1

    goto :goto_2

    :cond_5
    move v8, v1

    .line 115
    :cond_6
    :goto_2
    invoke-static {v6, v4}, LX;->a(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v1

    .line 117
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v1

    :cond_7
    add-int v1, v8, v7

    .line 118
    div-int/2addr v1, v3

    if-ge v0, v1, :cond_8

    move v7, v8

    .line 119
    :cond_8
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()I

    move-result v0

    neg-int v0, v0

    invoke-static {v7, v0, v2}, LJ4;->a(III)I

    move-result v0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, p1, p2, v0, v1}, LX;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    :cond_9
    return-void
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .locals 3

    .line 79
    invoke-virtual {p0}, LX;->b()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 80
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float v0, v0, v1

    .line 81
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    goto :goto_0

    :cond_0
    int-to-float p4, v0

    .line 82
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    .line 83
    :goto_0
    invoke-virtual {p0}, LX;->b()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 84
    iget-object p1, p0, LX;->m:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    iget-object p1, p0, LX;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2

    .line 86
    :cond_1
    iget-object v1, p0, LX;->m:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 87
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, LX;->m:Landroid/animation/ValueAnimator;

    .line 88
    sget-object v2, LJ;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v1, p0, LX;->m:Landroid/animation/ValueAnimator;

    new-instance v2, LV;

    invoke-direct {v2, p0, p1, p2}, LV;-><init>(LX;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 91
    :goto_1
    iget-object p1, p0, LX;->m:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    iget-object p1, p0, LX;->m:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 93
    iget-object p1, p0, LX;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .locals 7

    .line 121
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 122
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    .line 123
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v0, v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt v0, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_c

    .line 125
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LY;

    .line 126
    iget v0, v0, LY;->a:I

    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 127
    invoke-static {v5}, LA7;->j(Landroid/view/View;)I

    move-result v1

    if-lez p4, :cond_3

    and-int/lit8 p4, v0, 0xc

    if-eqz p4, :cond_3

    neg-int p3, p3

    .line 128
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->c()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_2

    :goto_2
    const/4 p3, 0x1

    goto :goto_3

    :cond_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    and-int/lit8 p4, v0, 0x2

    if-eqz p4, :cond_2

    neg-int p3, p3

    .line 129
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->c()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_2

    goto :goto_2

    .line 130
    :goto_3
    iget-boolean p4, p2, Landroid/support/design/widget/AppBarLayout;->E:Z

    if-eqz p4, :cond_7

    .line 131
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p4, :cond_5

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 133
    instance-of v5, v1, Lq7;

    if-eqz v5, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_7

    .line 134
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-lez p3, :cond_6

    const/4 p3, 0x1

    goto :goto_6

    :cond_6
    const/4 p3, 0x0

    .line 135
    :cond_7
    :goto_6
    invoke-virtual {p2, p3}, Landroid/support/design/widget/AppBarLayout;->a(Z)Z

    move-result p3

    if-nez p5, :cond_b

    if-eqz p3, :cond_c

    .line 136
    iget-object p3, p1, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    .line 137
    iget-object p3, p3, Lo8;->b:Ld7;

    invoke-virtual {p3, p2}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 138
    iget-object p4, p1, Landroid/support/design/widget/CoordinatorLayout;->z:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    if-eqz p3, :cond_8

    .line 139
    iget-object p4, p1, Landroid/support/design/widget/CoordinatorLayout;->z:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_8
    iget-object p1, p1, Landroid/support/design/widget/CoordinatorLayout;->z:Ljava/util/List;

    .line 141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_7
    if-ge p4, p3, :cond_a

    .line 142
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    .line 143
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lg0;

    .line 144
    iget-object p5, p5, Lg0;->a:Ld0;

    .line 145
    instance-of v0, p5, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v0, :cond_9

    .line 146
    check-cast p5, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    .line 147
    iget p1, p5, Lm0;->g:I

    if-eqz p1, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    if-eqz v2, :cond_c

    .line 148
    :cond_b
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    :cond_c
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 45
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 46
    instance-of p1, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    if-eqz p1, :cond_0

    .line 47
    check-cast p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    .line 48
    iget-object p1, p3, Landroid/support/v4/view/AbsSavedState;->w:Landroid/os/Parcelable;

    .line 49
    iget p1, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->y:I

    iput p1, p0, LX;->n:I

    .line 50
    iget p1, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->z:F

    iput p1, p0, LX;->p:F

    .line 51
    iget-boolean p1, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->A:Z

    iput-boolean p1, p0, LX;->o:Z

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 52
    iput p1, p0, LX;->n:I

    :goto_0
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 72
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 73
    iget v0, p0, LX;->l:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p2}, LX;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LX;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 6

    .line 40
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    if-gez p7, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Ll0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 42
    invoke-virtual {p0, p7, p2, p3, p8}, LX;->a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    .line 43
    :cond_0
    iget-boolean p1, p2, Landroid/support/design/widget/AppBarLayout;->E:Z

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/support/design/widget/AppBarLayout;->a(Z)Z

    :cond_2
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 6

    .line 34
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    if-eqz p5, :cond_1

    if-gez p5, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()I

    move-result p4

    neg-int p4, p4

    .line 36
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    add-int/2addr v0, p4

    move v4, p4

    move v5, v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()I

    move-result p4

    neg-int p4, p4

    const/4 v0, 0x0

    move v4, p4

    const/4 v5, 0x0

    :goto_0
    if-eq v4, v5, :cond_1

    const/4 p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    .line 38
    invoke-virtual/range {v0 .. v5}, Ll0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p6, p4

    .line 39
    invoke-virtual {p0, p5, p2, p3, p7}, LX;->a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 7

    .line 6
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 7
    invoke-super {p0, p1, v2, p3}, Lz0;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 8
    iget p2, v2, Landroid/support/design/widget/AppBarLayout;->A:I

    .line 9
    iget p3, p0, LX;->n:I

    const/4 v0, 0x0

    const/4 v6, 0x1

    if-ltz p3, :cond_1

    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p3

    neg-int p3, p3

    .line 12
    iget-boolean v1, p0, LX;->o:Z

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p2

    .line 14
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->c()I

    move-result v1

    add-int/2addr v1, p2

    add-int/2addr v1, p3

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, LX;->p:F

    mul-float p2, p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int v1, p2, p3

    .line 16
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Ll0;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_6

    and-int/lit8 p3, p2, 0x4

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    and-int/lit8 v1, p2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->d()I

    move-result p2

    neg-int p2, p2

    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p0, p1, v2, p2, v3}, LX;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {p0, p1, v2, p2}, Ll0;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_4
    and-int/2addr p2, v6

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    .line 20
    invoke-virtual {p0, p1, v2, v0, v3}, LX;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {p0, p1, v2, v0}, Ll0;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 22
    :cond_6
    :goto_2
    iput v0, v2, Landroid/support/design/widget/AppBarLayout;->A:I

    const/4 p2, -0x1

    .line 23
    iput p2, p0, LX;->n:I

    .line 24
    invoke-virtual {p0}, Lz0;->a()I

    move-result p2

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->d()I

    move-result p3

    neg-int p3, p3

    invoke-static {p2, p3, v0}, LJ4;->a(III)I

    move-result p2

    .line 25
    invoke-virtual {p0, p2}, Lz0;->a(I)Z

    .line 26
    invoke-virtual {p0}, Lz0;->a()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 27
    invoke-virtual/range {v0 .. v5}, LX;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    .line 28
    invoke-virtual {p0}, Lz0;->a()I

    return v6
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 6

    .line 29
    move-object v1, p2

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    .line 30
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lg0;

    .line 31
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p5, -0x2

    const/4 v0, 0x0

    if-ne p2, p5, :cond_0

    .line 32
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move v2, p3

    move v3, p4

    move v5, p6

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 64
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    and-int/lit8 p4, p5, 0x2

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    .line 65
    iget-boolean p4, p2, Landroid/support/design/widget/AppBarLayout;->E:Z

    if-nez p4, :cond_2

    .line 66
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()I

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    :cond_2
    const/4 p5, 0x1

    :cond_3
    if-eqz p5, :cond_4

    .line 68
    iget-object p1, p0, LX;->m:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    .line 69
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, LX;->q:Ljava/lang/ref/WeakReference;

    .line 71
    iput p6, p0, LX;->l:I

    return p5
.end method

.method public a(Landroid/view/View;)Z
    .locals 2

    .line 1
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 2
    iget-object p1, p0, LX;->q:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public b()I
    .locals 2

    .line 34
    invoke-virtual {p0}, Lz0;->a()I

    move-result v0

    iget v1, p0, LX;->k:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7

    .line 1
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 2
    invoke-virtual {p0}, LX;->b()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    if-lt p2, p4, :cond_8

    if-gt p2, p5, :cond_8

    .line 3
    invoke-static {p3, p4, p5}, LJ4;->a(III)I

    move-result v3

    if-eq p2, v3, :cond_9

    .line 4
    iget-boolean p3, v2, Landroid/support/design/widget/AppBarLayout;->z:Z

    if-eqz p3, :cond_4

    .line 5
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 6
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_4

    .line 7
    invoke-virtual {v2, p5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LY;

    .line 9
    iget-object v5, v4, LY;->b:Landroid/view/animation/Interpolator;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt p3, v6, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt p3, v6, :cond_3

    if-eqz v5, :cond_4

    .line 11
    iget p4, v4, LY;->a:I

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, v6

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p5, v4

    add-int/2addr p5, v0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 13
    invoke-static {v1}, LA7;->j(Landroid/view/View;)I

    move-result p4

    sub-int p4, p5, p4

    goto :goto_1

    :cond_0
    move p4, p5

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 14
    :goto_1
    invoke-static {v1}, LA7;->f(Landroid/view/View;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 15
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->c()I

    move-result p5

    sub-int/2addr p4, p5

    :cond_2
    if-lez p4, :cond_4

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p5

    sub-int/2addr p3, p5

    int-to-float p4, p4

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 17
    invoke-interface {v5, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    mul-float p3, p3, p4

    .line 18
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result p4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p5

    add-int/2addr p5, p3

    mul-int p3, p5, p4

    goto :goto_2

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_4
    move p3, v3

    .line 20
    :goto_2
    invoke-virtual {p0, p3}, Lz0;->a(I)Z

    move-result p4

    sub-int p5, p2, v3

    sub-int p3, v3, p3

    .line 21
    iput p3, p0, LX;->k:I

    if-nez p4, :cond_6

    .line 22
    iget-boolean p3, v2, Landroid/support/design/widget/AppBarLayout;->z:Z

    if-eqz p3, :cond_6

    .line 23
    iget-object p3, p1, Landroid/support/design/widget/CoordinatorLayout;->x:Lo8;

    .line 24
    iget-object p3, p3, Lo8;->b:Ld7;

    invoke-virtual {p3, v2}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_6

    .line 25
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_6

    .line 26
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-ge v0, p4, :cond_6

    .line 27
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 28
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg0;

    .line 29
    iget-object v1, v1, Lg0;->a:Ld0;

    if-eqz v1, :cond_5

    .line 30
    invoke-virtual {v1, p1, p4, v2}, Ld0;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {p0}, Lz0;->a()I

    if-ge v3, p2, :cond_7

    const/4 p2, -0x1

    const/4 v4, -0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x1

    const/4 v4, 0x1

    :goto_4
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 32
    invoke-virtual/range {v0 .. v5}, LX;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    goto :goto_5

    .line 33
    :cond_8
    iput v0, p0, LX;->k:I

    :cond_9
    const/4 p5, 0x0

    :goto_5
    return p5
.end method
