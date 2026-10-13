.class public Lch;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public A:Z

.field public B:Z

.field public final synthetic C:Landroid/support/v7/widget/RecyclerView;

.field public w:I

.field public x:I

.field public y:Landroid/widget/OverScroller;

.field public z:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->c1:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lch;->z:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lch;->A:Z

    .line 4
    iput-boolean v0, p0, Lch;->B:Z

    .line 5
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->c1:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lch;->y:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lch;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lch;->B:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, LA7;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v1, v0, Lch;->y:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lch;->B:Z

    const/4 v3, 0x1

    .line 5
    iput-boolean v3, v0, Lch;->A:Z

    .line 6
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 7
    iget-object v1, v0, Lch;->y:Landroid/widget/OverScroller;

    .line 8
    iget-object v4, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 9
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 10
    iget-object v4, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->N0:[I

    .line 11
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v11

    .line 12
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v12

    .line 13
    iget v5, v0, Lch;->w:I

    sub-int v13, v11, v5

    .line 14
    iget v5, v0, Lch;->x:I

    sub-int v14, v12, v5

    .line 15
    iput v11, v0, Lch;->w:I

    .line 16
    iput v12, v0, Lch;->x:I

    .line 17
    iget-object v5, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 18
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v5

    move v6, v13

    move v7, v14

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Lr7;->a(II[I[II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 19
    aget v5, v4, v2

    sub-int/2addr v13, v5

    .line 20
    aget v4, v4, v3

    sub-int/2addr v14, v4

    .line 21
    :cond_1
    iget-object v4, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v5, :cond_2

    .line 22
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView;->P0:[I

    invoke-virtual {v4, v13, v14, v5}, Landroid/support/v7/widget/RecyclerView;->a(II[I)V

    .line 23
    iget-object v4, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->P0:[I

    aget v5, v4, v2

    .line 24
    aget v4, v4, v3

    sub-int v6, v13, v5

    sub-int v7, v14, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 25
    :goto_0
    iget-object v8, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 26
    iget-object v8, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    .line 27
    :cond_3
    iget-object v8, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 28
    iget-object v8, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v13, v14}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 29
    :cond_4
    iget-object v15, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v16, v5

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v15 .. v21}, Landroid/support/v7/widget/RecyclerView;->a(IIII[II)Z

    move-result v8

    if-nez v8, :cond_13

    if-nez v6, :cond_5

    if-eqz v7, :cond_13

    .line 30
    :cond_5
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v8

    float-to-int v8, v8

    if-eq v6, v11, :cond_7

    if-gez v6, :cond_6

    neg-int v10, v8

    goto :goto_1

    :cond_6
    if-lez v6, :cond_7

    move v10, v8

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    :goto_1
    if-eq v7, v12, :cond_9

    if-gez v7, :cond_8

    neg-int v8, v8

    goto :goto_2

    :cond_8
    if-lez v7, :cond_9

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    .line 31
    :goto_2
    iget-object v15, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v15

    if-eq v15, v9, :cond_10

    .line 32
    iget-object v9, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    if-eqz v9, :cond_f

    if-gez v10, :cond_a

    .line 33
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 34
    iget-object v15, v9, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    neg-int v2, v10

    invoke-virtual {v15, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_3

    :cond_a
    if-lez v10, :cond_b

    .line 35
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->i()V

    .line 36
    iget-object v2, v9, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v10}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_b
    :goto_3
    if-gez v8, :cond_c

    .line 37
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->j()V

    .line 38
    iget-object v2, v9, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    neg-int v15, v8

    invoke-virtual {v2, v15}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_4

    :cond_c
    if-lez v8, :cond_d

    .line 39
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 40
    iget-object v2, v9, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v8}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_d
    :goto_4
    if-nez v10, :cond_e

    if-eqz v8, :cond_10

    .line 41
    :cond_e
    invoke-static {v9}, LA7;->w(Landroid/view/View;)V

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    .line 42
    throw v1

    :cond_10
    :goto_5
    if-nez v10, :cond_11

    if-eq v6, v11, :cond_11

    .line 43
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    if-nez v8, :cond_12

    if-eq v7, v12, :cond_12

    .line 44
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    if-nez v2, :cond_13

    .line 45
    :cond_12
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_13
    if-nez v5, :cond_14

    if-eqz v4, :cond_15

    .line 46
    :cond_14
    iget-object v2, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v5, v4}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 47
    :cond_15
    iget-object v2, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 48
    iget-object v2, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    :cond_16
    if-eqz v14, :cond_17

    .line 49
    iget-object v2, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v2}, LQg;->b()Z

    move-result v2

    if-eqz v2, :cond_17

    if-ne v4, v14, :cond_17

    const/4 v2, 0x1

    goto :goto_6

    :cond_17
    const/4 v2, 0x0

    :goto_6
    if-eqz v13, :cond_18

    .line 50
    iget-object v4, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v4}, LQg;->a()Z

    move-result v4

    if-eqz v4, :cond_18

    if-ne v5, v13, :cond_18

    const/4 v4, 0x1

    goto :goto_7

    :cond_18
    const/4 v4, 0x0

    :goto_7
    if-nez v13, :cond_19

    if-eqz v14, :cond_1b

    :cond_19
    if-nez v4, :cond_1b

    if-eqz v2, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v2, 0x0

    goto :goto_9

    :cond_1b
    :goto_8
    const/4 v2, 0x1

    .line 51
    :goto_9
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1f

    if-nez v2, :cond_1d

    iget-object v1, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    .line 52
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v3}, Lr7;->a(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_a

    :cond_1c
    const/4 v1, 0x0

    :goto_a
    if-nez v1, :cond_1d

    goto :goto_b

    .line 54
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lch;->a()V

    .line 55
    iget-object v1, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->A0:LCf;

    if-eqz v2, :cond_1e

    .line 56
    invoke-virtual {v2, v1, v13, v14}, LCf;->a(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_1e
    const/4 v2, 0x0

    goto :goto_c

    .line 57
    :cond_1f
    :goto_b
    iget-object v1, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 58
    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->Y0:Z

    if-eqz v1, :cond_21

    .line 59
    iget-object v1, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B0:LAf;

    .line 60
    iget-object v4, v1, LAf;->c:[I

    if-eqz v4, :cond_20

    const/4 v5, -0x1

    .line 61
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 62
    :cond_20
    iput v2, v1, LAf;->d:I

    .line 63
    :cond_21
    iget-object v1, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 64
    :cond_22
    :goto_c
    iput-boolean v2, v0, Lch;->A:Z

    .line 65
    iget-boolean v1, v0, Lch;->B:Z

    if-eqz v1, :cond_23

    .line 66
    invoke-virtual/range {p0 .. p0}, Lch;->a()V

    :cond_23
    return-void
.end method
