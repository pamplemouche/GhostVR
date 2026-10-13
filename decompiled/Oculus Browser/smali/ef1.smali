.class public Lef1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lgf1;


# instance fields
.field public final A:Landroid/view/View;

.field public final B:Landroid/widget/PopupWindow;

.field public final C:Lhf1;

.field public final D:Ljava/lang/Runnable;

.field public final E:Landroid/widget/PopupWindow$OnDismissListener;

.field public F:Z

.field public G:LWT;

.field public H:Ldf1;

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public final w:Landroid/graphics/Rect;

.field public final x:Landroid/graphics/Rect;

.field public final y:Landroid/content/Context;

.field public final z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lhf1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lef1;->w:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lef1;->x:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Lbf1;

    invoke-direct {v0, p0}, Lbf1;-><init>(Lef1;)V

    iput-object v0, p0, Lef1;->D:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcf1;

    invoke-direct {v0, p0}, Lcf1;-><init>(Lef1;)V

    iput-object v0, p0, Lef1;->E:Landroid/widget/PopupWindow$OnDismissListener;

    .line 6
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lef1;->G:LWT;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lef1;->O:I

    .line 8
    iput v0, p0, Lef1;->P:I

    .line 9
    iput-object p1, p0, Lef1;->y:Landroid/content/Context;

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lef1;->A:Landroid/view/View;

    .line 11
    invoke-static {}, Lnf1;->a()Lnf1;

    move-result-object p1

    iget-object p2, p0, Lef1;->y:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p1, p0, Lef1;->B:Landroid/widget/PopupWindow;

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lef1;->z:Landroid/os/Handler;

    .line 15
    iput-object p5, p0, Lef1;->C:Lhf1;

    .line 16
    iget-object p1, p0, Lef1;->B:Landroid/widget/PopupWindow;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 17
    iget-object p1, p0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 18
    iget-object p1, p0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object p1, p0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 20
    iget-object p1, p0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 21
    iget-object p1, p0, Lef1;->B:Landroid/widget/PopupWindow;

    iget-object p2, p0, Lef1;->E:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 22
    throw p1
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lef1;->e()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lef1;->C:Lhf1;

    invoke-virtual {v0, p0}, Lhf1;->a(Lgf1;)V

    .line 3
    invoke-virtual {p0}, Lef1;->e()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lef1;->B:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lef1;->A:Landroid/view/View;

    const v2, 0x800033

    iget v3, p0, Lef1;->I:I

    iget v4, p0, Lef1;->J:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final e()V
    .locals 23

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lef1;->R:Z

    .line 2
    iget-boolean v2, v1, Lef1;->S:Z

    .line 3
    iget-object v3, v1, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lef1;->V:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-object v6, v1, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, v1, Lef1;->w:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v6, v1, Lef1;->w:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    .line 6
    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v6

    .line 7
    iget v6, v1, Lef1;->N:I

    iget-object v9, v1, Lef1;->A:Landroid/view/View;

    .line 8
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, v1, Lef1;->M:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    if-eqz v6, :cond_1

    if-ge v6, v9, :cond_1

    goto :goto_1

    :cond_1
    move v6, v9

    :goto_1
    if-le v6, v7, :cond_2

    sub-int/2addr v6, v7

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 9
    :goto_2
    iget-object v9, v1, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    const/high16 v10, -0x80000000

    .line 10
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 11
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v9, v6, v12}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 13
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 14
    iget-object v14, v1, Lef1;->A:Landroid/view/View;

    iget-object v15, v1, Lef1;->x:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-array v14, v11, [I

    .line 15
    iget-object v15, v1, Lef1;->A:Landroid/view/View;

    invoke-virtual {v15, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    iget-object v15, v1, Lef1;->x:Landroid/graphics/Rect;

    aget v10, v14, v5

    neg-int v10, v10

    aget v14, v14, v4

    neg-int v14, v14

    invoke-virtual {v15, v10, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 17
    iget-object v10, v1, Lef1;->C:Lhf1;

    .line 18
    iget-object v10, v10, Lhf1;->w:Landroid/graphics/Rect;

    .line 19
    iget-boolean v14, v1, Lef1;->T:Z

    if-eqz v14, :cond_3

    iget v14, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    iget v14, v10, Landroid/graphics/Rect;->top:I

    :goto_3
    iget-object v15, v1, Lef1;->x:Landroid/graphics/Rect;

    iget v11, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v11

    sub-int/2addr v14, v8

    iget v11, v1, Lef1;->M:I

    sub-int/2addr v14, v11

    .line 20
    iget v11, v15, Landroid/graphics/Rect;->bottom:I

    .line 21
    iget-boolean v15, v1, Lef1;->T:Z

    if-eqz v15, :cond_4

    iget v15, v10, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_4
    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    :goto_4
    sub-int/2addr v11, v15

    sub-int/2addr v11, v8

    iget v15, v1, Lef1;->M:I

    sub-int/2addr v11, v15

    if-gt v12, v11, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    if-gt v12, v14, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    if-eqz v15, :cond_7

    if-ge v11, v14, :cond_8

    :cond_7
    if-nez v12, :cond_9

    :cond_8
    const/4 v5, 0x1

    .line 22
    :cond_9
    iput-boolean v5, v1, Lef1;->R:Z

    if-eqz v3, :cond_b

    if-eq v0, v5, :cond_b

    if-eqz v0, :cond_a

    if-eqz v15, :cond_a

    .line 23
    iput-boolean v4, v1, Lef1;->R:Z

    :cond_a
    if-nez v0, :cond_b

    if-eqz v12, :cond_b

    const/4 v5, 0x0

    .line 24
    iput-boolean v5, v1, Lef1;->R:Z

    .line 25
    :cond_b
    iget v5, v1, Lef1;->O:I

    if-ne v5, v4, :cond_c

    if-eqz v15, :cond_c

    .line 26
    iput-boolean v4, v1, Lef1;->R:Z

    .line 27
    :cond_c
    iget v5, v1, Lef1;->O:I

    const/4 v15, 0x2

    if-ne v5, v15, :cond_d

    if-eqz v12, :cond_d

    const/4 v5, 0x0

    .line 28
    iput-boolean v5, v1, Lef1;->R:Z

    .line 29
    :cond_d
    iget v5, v1, Lef1;->P:I

    if-nez v5, :cond_13

    .line 30
    iget-object v5, v1, Lef1;->x:Landroid/graphics/Rect;

    iget-boolean v12, v1, Lef1;->U:Z

    if-eqz v12, :cond_e

    .line 31
    iget v12, v10, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_e
    iget v12, v10, Landroid/graphics/Rect;->left:I

    :goto_7
    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v5

    .line 32
    iget-object v5, v1, Lef1;->x:Landroid/graphics/Rect;

    iget-boolean v15, v1, Lef1;->U:Z

    .line 33
    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v15, :cond_f

    iget v15, v10, Landroid/graphics/Rect;->left:I

    goto :goto_8

    :cond_f
    iget v15, v10, Landroid/graphics/Rect;->right:I

    :goto_8
    sub-int/2addr v5, v15

    add-int/2addr v13, v8

    .line 34
    iget v15, v1, Lef1;->M:I

    add-int/2addr v13, v15

    if-lt v12, v5, :cond_10

    const/4 v15, 0x1

    goto :goto_9

    :cond_10
    const/4 v15, 0x0

    :goto_9
    if-eqz v3, :cond_12

    if-eq v15, v2, :cond_12

    if-eqz v2, :cond_11

    if-gt v13, v12, :cond_11

    const/4 v15, 0x1

    :cond_11
    if-nez v2, :cond_12

    if-gt v13, v5, :cond_12

    const/4 v15, 0x0

    :cond_12
    iput-boolean v15, v1, Lef1;->S:Z

    .line 35
    :cond_13
    iget-boolean v2, v1, Lef1;->R:Z

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    move v11, v14

    :goto_a
    const/high16 v2, -0x80000000

    .line 36
    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 37
    invoke-virtual {v9, v6, v2}, Landroid/view/View;->measure(II)V

    .line 38
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v7

    iput v2, v1, Lef1;->K:I

    .line 39
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v8

    iput v2, v1, Lef1;->L:I

    .line 40
    iget-object v2, v1, Lef1;->x:Landroid/graphics/Rect;

    iget v3, v1, Lef1;->K:I

    iget v5, v1, Lef1;->M:I

    iget-boolean v6, v1, Lef1;->U:Z

    iget v7, v1, Lef1;->P:I

    iget-boolean v8, v1, Lef1;->S:Z

    if-ne v7, v4, :cond_15

    .line 41
    iget v6, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v3

    const/4 v8, 0x2

    div-int/2addr v7, v8

    add-int/2addr v7, v6

    add-int/2addr v7, v5

    goto :goto_c

    :cond_15
    if-eqz v8, :cond_17

    if-eqz v6, :cond_16

    .line 42
    iget v6, v10, Landroid/graphics/Rect;->right:I

    goto :goto_b

    :cond_16
    iget v6, v10, Landroid/graphics/Rect;->left:I

    :goto_b
    sub-int v7, v6, v3

    goto :goto_c

    :cond_17
    if-eqz v6, :cond_18

    .line 43
    iget v7, v10, Landroid/graphics/Rect;->left:I

    goto :goto_c

    :cond_18
    iget v7, v10, Landroid/graphics/Rect;->right:I

    .line 44
    :goto_c
    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    if-le v5, v2, :cond_19

    move v3, v2

    goto :goto_d

    :cond_19
    move v3, v5

    :goto_d
    if-le v5, v2, :cond_1a

    move v2, v5

    :cond_1a
    if-ge v7, v3, :cond_1b

    move v2, v3

    goto :goto_e

    :cond_1b
    if-le v7, v2, :cond_1c

    goto :goto_e

    :cond_1c
    move v2, v7

    .line 45
    :goto_e
    iput v2, v1, Lef1;->I:I

    .line 46
    iget v2, v1, Lef1;->L:I

    iget-boolean v3, v1, Lef1;->T:Z

    iget-boolean v5, v1, Lef1;->R:Z

    if-eqz v5, :cond_1e

    if-eqz v3, :cond_1d

    .line 47
    iget v2, v10, Landroid/graphics/Rect;->top:I

    goto :goto_10

    :cond_1d
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    :cond_1e
    if-eqz v3, :cond_1f

    .line 48
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_f

    :cond_1f
    iget v3, v10, Landroid/graphics/Rect;->top:I

    :goto_f
    sub-int/2addr v3, v2

    move v2, v3

    .line 49
    :goto_10
    iput v2, v1, Lef1;->J:I

    .line 50
    iget-object v3, v1, Lef1;->H:Ldf1;

    if-eqz v3, :cond_20

    .line 51
    iget-boolean v5, v1, Lef1;->R:Z

    iget v6, v1, Lef1;->I:I

    iget v7, v1, Lef1;->K:I

    iget v8, v1, Lef1;->L:I

    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v2

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    invoke-interface/range {v16 .. v22}, Ldf1;->a(ZIIIILandroid/graphics/Rect;)V

    .line 52
    :cond_20
    iget-object v2, v1, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-boolean v2, v1, Lef1;->R:Z

    if-eq v2, v0, :cond_21

    .line 53
    :try_start_0
    iput-boolean v4, v1, Lef1;->Q:Z

    .line 54
    iget-object v0, v1, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget-object v0, v1, Lef1;->B:Landroid/widget/PopupWindow;

    iget-object v2, v1, Lef1;->A:Landroid/view/View;

    const v3, 0x800033

    iget v4, v1, Lef1;->I:I

    iget v5, v1, Lef1;->J:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v2, 0x0

    .line 56
    iput-boolean v2, v1, Lef1;->Q:Z

    goto :goto_11

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lef1;->Q:Z

    throw v0

    .line 57
    :cond_21
    :goto_11
    iget-object v0, v1, Lef1;->B:Landroid/widget/PopupWindow;

    iget v2, v1, Lef1;->I:I

    iget v3, v1, Lef1;->J:I

    iget v4, v1, Lef1;->K:I

    iget v5, v1, Lef1;->L:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    iget-boolean p2, p0, Lef1;->F:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return p1
.end method
