.class public Lz00;
.super Landroid/view/View$AccessibilityDelegate;
.source "PG"

# interfaces
.implements Ly00;


# instance fields
.field public final w:LI00;

.field public x:Ljava/lang/Runnable;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(LI00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    iput-object p1, p0, Lz00;->w:LI00;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v5, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iput-boolean v3, v0, Lz00;->y:Z

    .line 3
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v3, v0, Lz00;->y:Z

    .line 5
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 6
    :cond_2
    iput-boolean v4, v0, Lz00;->y:Z

    .line 7
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 8
    iget-object v2, v0, Lz00;->w:LI00;

    invoke-virtual {v2}, LI00;->f()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lz00;->w:LI00;

    iget-boolean v6, v0, Lz00;->z:Z

    .line 9
    invoke-virtual {v2, v1, v4, v6}, LI00;->a(Landroid/view/View;ZZ)Z

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 10
    :goto_1
    iget-object v6, v0, Lz00;->w:LI00;

    .line 11
    iget-object v6, v6, LI00;->x:LG00;

    if-eqz v6, :cond_12

    .line 12
    iget-object v7, v6, LG00;->a:Lv00;

    invoke-virtual {v7}, Lv00;->b()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v6, LG00;->c:Landroid/animation/TimeAnimator;

    invoke-virtual {v7}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_6

    .line 13
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 15
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 16
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 19
    iget-object v14, v6, LG00;->a:Lv00;

    .line 20
    iget-object v14, v14, Lv00;->y:Landroid/widget/ListView;

    .line 21
    iput v7, v6, LG00;->e:F

    .line 22
    iput v8, v6, LG00;->f:F

    .line 23
    invoke-virtual {v6, v1}, LG00;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iput v7, v6, LG00;->i:I

    if-ne v11, v5, :cond_5

    .line 24
    iget-object v1, v6, LG00;->a:Lv00;

    invoke-virtual {v1}, Lv00;->a()V

    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_5
    if-ne v11, v4, :cond_6

    const-string v5, "WrenchMenu.TouchDuration"

    .line 25
    invoke-static {v5, v12, v13}, LfV;->c(Ljava/lang/String;J)V

    .line 26
    :cond_6
    iget-boolean v5, v6, LG00;->h:Z

    iget v7, v6, LG00;->j:I

    int-to-long v3, v7

    cmp-long v7, v12, v3

    if-lez v7, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    or-int/2addr v3, v5

    iput-boolean v3, v6, LG00;->h:Z

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v7, v6, LG00;->k:I

    int-to-float v7, v7

    neg-float v12, v7

    cmpl-float v13, v4, v12

    if-ltz v13, :cond_8

    cmpl-float v12, v5, v12

    if-ltz v12, :cond_8

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v7

    cmpg-float v4, v4, v12

    if-gez v4, :cond_8

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    cmpg-float v1, v5, v1

    if-gez v1, :cond_8

    const/4 v1, 0x1

    const/4 v15, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    const/4 v15, 0x0

    :goto_3
    xor-int/lit8 v4, v15, 0x1

    or-int/2addr v3, v4

    .line 30
    iput-boolean v3, v6, LG00;->h:Z

    if-nez v3, :cond_9

    if-ne v11, v1, :cond_9

    const-string v1, "MobileUsingMenuBySwButtonTap"

    .line 31
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6}, LG00;->a()V

    .line 33
    :cond_9
    iget-object v1, v6, LG00;->c:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_6

    :cond_a
    const/4 v3, 0x2

    const/4 v1, 0x1

    if-eqz v11, :cond_c

    if-eq v11, v1, :cond_b

    if-eq v11, v3, :cond_c

    const/4 v4, 0x2

    goto :goto_4

    :cond_b
    const/4 v4, 0x1

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    .line 34
    :goto_4
    invoke-virtual {v6, v9, v10, v4}, LG00;->a(III)Z

    move-result v4

    if-ne v11, v1, :cond_d

    if-nez v4, :cond_d

    const-string v3, "MobileUsingMenuBySwButtonDragging"

    .line 35
    invoke-static {v3}, LhV;->a(Ljava/lang/String;)V

    .line 36
    iget-object v3, v6, LG00;->a:Lv00;

    invoke-virtual {v3}, Lv00;->a()V

    goto :goto_5

    :cond_d
    if-ne v11, v3, :cond_10

    .line 37
    invoke-virtual {v14}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    if-lez v3, :cond_10

    const/high16 v3, 0x3e800000    # 0.25f

    .line 38
    iget v4, v6, LG00;->g:I

    int-to-float v4, v4

    const v5, 0x3f99999a    # 1.2f

    mul-float v4, v4, v5

    .line 39
    invoke-virtual {v14}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 41
    invoke-virtual {v6, v14}, LG00;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v8, v4

    invoke-virtual {v14}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v8, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v8, v3

    if-gez v5, :cond_e

    div-float/2addr v8, v3

    sub-float/2addr v8, v4

    .line 42
    iget v3, v6, LG00;->b:F

    mul-float v8, v8, v3

    iput v8, v6, LG00;->d:F

    goto :goto_5

    :cond_e
    sub-float v5, v4, v3

    cmpl-float v5, v8, v5

    if-lez v5, :cond_f

    sub-float/2addr v8, v4

    div-float/2addr v8, v3

    add-float/2addr v8, v4

    .line 43
    iget v3, v6, LG00;->b:F

    mul-float v8, v8, v3

    iput v8, v6, LG00;->d:F

    goto :goto_5

    :cond_f
    const/4 v3, 0x0

    .line 44
    iput v3, v6, LG00;->d:F

    :cond_10
    :goto_5
    const/16 v16, 0x1

    goto :goto_7

    :cond_11
    :goto_6
    const/16 v16, 0x0

    :goto_7
    or-int v2, v2, v16

    :cond_12
    return v2
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    .line 1
    iget-object p2, p0, Lz00;->w:LI00;

    invoke-virtual {p2}, LI00;->f()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lz00;->w:LI00;

    invoke-virtual {p2}, LI00;->f()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lz00;->w:LI00;

    iget-boolean v0, p0, Lz00;->z:Z

    .line 3
    invoke-virtual {p2, p1, p3, v0}, LI00;->a(Landroid/view/View;ZZ)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lz00;->w:LI00;

    invoke-virtual {p2}, LI00;->d()V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->playSoundEffect(I)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return p2

    .line 7
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
