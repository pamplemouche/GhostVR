.class Landroid/support/v7/widget/ed;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v1, v1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_0

    goto/16 :goto_17

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/ej;

    if-nez v1, :cond_1

    const-string v1, "SeslRecyclerView"

    const-string v2, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;J)J

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v2

    iget-object v4, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;J)J

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v1

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    goto/16 :goto_17

    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v1

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    goto/16 :goto_17

    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/fc;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/fc;

    move-result-object v1

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/widget/fc;->a(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Z)Z

    :cond_5
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    invoke-virtual {v3}, Landroid/support/v7/widget/et;->f()Z

    move-result v3

    iget-object v4, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    invoke-virtual {v4}, Landroid/support/v7/widget/et;->e()Z

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    invoke-virtual {v5}, Landroid/support/v7/widget/et;->t()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v2, :cond_6

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    :goto_0
    iget-object v7, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/ej;

    invoke-virtual {v8}, Landroid/support/v7/widget/ej;->a()I

    move-result v8

    if-ge v7, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_c

    if-lez v1, :cond_c

    iget-object v7, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v4, :cond_9

    if-eqz v5, :cond_8

    iget-object v7, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_a

    goto :goto_2

    :cond_8
    iget-object v7, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_b

    iget-object v7, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_a

    goto :goto_2

    :cond_9
    iget-object v7, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_b

    iget-object v7, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_a

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v7, 0x1

    :cond_c
    :goto_3
    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)I

    move-result v8

    if-lez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_12

    if-lez v1, :cond_12

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    invoke-virtual {v1, v8, v9}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v4, :cond_f

    if-eqz v5, :cond_e

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-gt v1, v8, :cond_10

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v1, v8, :cond_11

    goto :goto_5

    :cond_e
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v1, v8, :cond_11

    goto :goto_5

    :cond_f
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->T:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->S:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v1, v8, :cond_11

    :cond_10
    :goto_5
    const/4 v8, 0x1

    goto :goto_6

    :cond_11
    const/4 v8, 0x0

    :cond_12
    :goto_6
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/support/v7/widget/RecyclerView;)F

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v2, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v1, v9}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    const-wide/16 v13, 0x2

    const-wide/16 v15, 0x4

    cmp-long v1, v11, v13

    if-lez v1, :cond_13

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long v1, v11, v15

    if-gez v1, :cond_13

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fb999999999999aL    # 0.1

    :goto_7
    mul-double v11, v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v1, v9}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)I

    goto :goto_8

    :cond_13
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    const-wide/16 v13, 0x5

    cmp-long v1, v11, v15

    if-ltz v1, :cond_14

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long v1, v11, v13

    if-gez v1, :cond_14

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fc999999999999aL    # 0.2

    goto :goto_7

    :cond_14
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long v1, v11, v13

    if-ltz v1, :cond_15

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fd3333333333333L    # 0.3

    goto :goto_7

    :cond_15
    :goto_8
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    const/4 v9, 0x2

    if-ne v1, v9, :cond_19

    if-eqz v4, :cond_16

    if-eqz v5, :cond_16

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_16
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    :goto_9
    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_17

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_18

    :cond_17
    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->r(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    if-eq v11, v12, :cond_1d

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v11

    if-ne v11, v2, :cond_1d

    :cond_18
    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->t(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    :goto_a
    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Z)Z

    goto :goto_c

    :cond_19
    if-eqz v4, :cond_1a

    if-eqz v5, :cond_1a

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1a
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    :goto_b
    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1b

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->v(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1c

    :cond_1b
    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->r(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    if-eq v11, v12, :cond_1d

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v11

    if-ne v11, v2, :cond_1d

    :cond_1c
    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->v(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->x(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    goto :goto_a

    :cond_1d
    :goto_c
    iget-object v11, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1e

    goto/16 :goto_17

    :cond_1e
    if-gez v1, :cond_1f

    if-nez v8, :cond_20

    :cond_1f
    if-lez v1, :cond_2a

    if-eqz v7, :cond_2a

    :cond_20
    iget-object v7, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_21

    const/4 v9, 0x1

    :cond_21
    invoke-virtual {v7, v9, v2}, Landroid/support/v7/widget/RecyclerView;->j(II)Z

    iget-object v10, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_23

    if-eqz v5, :cond_22

    neg-int v7, v1

    move v11, v7

    goto :goto_d

    :cond_22
    move v11, v1

    goto :goto_d

    :cond_23
    const/4 v11, 0x0

    :goto_d
    if-eqz v3, :cond_24

    move v12, v1

    goto :goto_e

    :cond_24
    const/4 v12, 0x0

    :goto_e
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Landroid/support/v7/widget/RecyclerView;->a(II[I[II)Z

    move-result v7

    if-nez v7, :cond_28

    iget-object v7, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_26

    if-eqz v5, :cond_25

    neg-int v4, v1

    goto :goto_f

    :cond_25
    move v4, v1

    goto :goto_f

    :cond_26
    const/4 v4, 0x0

    :goto_f
    if-eqz v3, :cond_27

    goto :goto_10

    :cond_27
    const/4 v1, 0x0

    :goto_10
    const/4 v3, 0x0

    invoke-virtual {v7, v4, v1, v3}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->y(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->z(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->A(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    invoke-static {v1, v2, v3, v6}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;IIZ)V

    goto :goto_11

    :cond_28
    iget-object v2, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_29
    :goto_11
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->C(Landroid/support/v7/widget/RecyclerView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->B(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_17

    :cond_2a
    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_2c

    if-ne v1, v2, :cond_2b

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->D(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_12

    :cond_2b
    const/4 v1, 0x0

    goto :goto_13

    :cond_2c
    :goto_12
    const/4 v1, 0x1

    :goto_13
    if-eqz v1, :cond_32

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->E(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_32

    if-eqz v4, :cond_2d

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->g()V

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->h()V

    goto :goto_14

    :cond_2d
    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->i()V

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->j()V

    :goto_14
    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    const v5, 0x3ecccccd    # 0.4f

    if-ne v3, v9, :cond_2f

    if-eqz v4, :cond_2e

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->F(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    invoke-virtual {v3, v5, v10, v6}, Landroid/support/v4/widget/aw;->a(FFI)V

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->G(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/aw;->isFinished()Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->G(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    goto :goto_15

    :cond_2e
    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->H(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    invoke-virtual {v3, v5, v10, v6}, Landroid/support/v4/widget/aw;->a(FFI)V

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->I(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/aw;->isFinished()Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->I(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    :goto_15
    invoke-virtual {v3}, Landroid/support/v4/widget/aw;->onRelease()V

    goto :goto_16

    :cond_2f
    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    if-ne v3, v2, :cond_31

    if-eqz v4, :cond_30

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->G(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    invoke-virtual {v3, v5, v10, v6}, Landroid/support/v4/widget/aw;->a(FFI)V

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->F(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/aw;->isFinished()Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->F(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    goto :goto_15

    :cond_30
    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->I(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    invoke-virtual {v3, v5, v10, v6}, Landroid/support/v4/widget/aw;->a(FFI)V

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->H(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/aw;->isFinished()Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->H(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/aw;

    move-result-object v3

    goto :goto_15

    :cond_31
    :goto_16
    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Z)Z

    :cond_32
    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->J(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    if-ne v3, v2, :cond_33

    iget-object v3, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_33
    if-nez v1, :cond_34

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->E(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, v0, Landroid/support/v7/widget/ed;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Z)Z

    :cond_34
    :goto_17
    return-void
.end method
