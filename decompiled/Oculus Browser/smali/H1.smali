.class public LH1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public w:LE1;

.field public x:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(LE1;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LH1;->w:LE1;

    .line 3
    iput-object p2, p0, LH1;->x:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v1, v0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object v1, LI1;->c:Ljava/util/ArrayList;

    iget-object v2, v0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, LI1;->a()LJ6;

    move-result-object v1

    .line 5
    iget-object v3, v0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v5, v0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v3}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 10
    :goto_1
    iget-object v6, v0, LH1;->w:LE1;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v3, v0, LH1;->w:LE1;

    new-instance v6, LG1;

    invoke-direct {v6, v0, v1}, LG1;-><init>(LH1;LJ6;)V

    invoke-virtual {v3, v6}, LE1;->a(LD1;)LE1;

    .line 12
    iget-object v1, v0, LH1;->w:LE1;

    iget-object v3, v0, LH1;->x:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, LE1;->a(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LE1;

    .line 14
    iget-object v5, v0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, LE1;->e(Landroid/view/View;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v1, v0, LH1;->w:LE1;

    iget-object v8, v0, LH1;->x:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1b

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, LE1;->P:Ljava/util/ArrayList;

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, LE1;->Q:Ljava/util/ArrayList;

    .line 18
    iget-object v3, v1, LE1;->L:LP1;

    iget-object v5, v1, LE1;->M:LP1;

    .line 19
    new-instance v7, LJ6;

    iget-object v9, v3, LP1;->a:LJ6;

    invoke-direct {v7, v9}, LJ6;-><init>(Ld7;)V

    .line 20
    new-instance v9, LJ6;

    iget-object v10, v5, LP1;->a:LJ6;

    invoke-direct {v9, v10}, LJ6;-><init>(Ld7;)V

    const/4 v10, 0x0

    .line 21
    :goto_3
    iget-object v11, v1, LE1;->O:[I

    array-length v12, v11

    if-ge v10, v12, :cond_10

    .line 22
    aget v11, v11, v10

    if-eq v11, v2, :cond_d

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    const/4 v12, 0x3

    if-eq v11, v12, :cond_9

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    move-object/from16 v17, v5

    goto :goto_6

    .line 23
    :cond_5
    iget-object v11, v3, LP1;->c:LQ6;

    iget-object v12, v5, LP1;->c:LQ6;

    .line 24
    invoke-virtual {v11}, LQ6;->c()I

    move-result v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_4

    .line 25
    invoke-virtual {v11, v14}, LQ6;->a(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_7

    .line 26
    invoke-virtual {v1, v15}, LE1;->b(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 27
    iget-boolean v6, v11, LQ6;->w:Z

    if-eqz v6, :cond_6

    .line 28
    invoke-virtual {v11}, LQ6;->b()V

    .line 29
    :cond_6
    iget-object v6, v11, LQ6;->x:[J

    move-object/from16 v17, v5

    aget-wide v4, v6, v14

    .line 30
    invoke-virtual {v12, v4, v5}, LQ6;->a(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_8

    .line 31
    invoke-virtual {v1, v4}, LE1;->b(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 32
    invoke-virtual {v7, v15}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO1;

    .line 33
    invoke-virtual {v9, v4}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LO1;

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    .line 34
    iget-object v2, v1, LE1;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v2, v1, LE1;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v7, v15}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v9, v4}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    move-object/from16 v17, v5

    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v17

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :goto_6
    move-object/from16 v4, v17

    goto/16 :goto_a

    :cond_9
    move-object/from16 v17, v5

    .line 38
    iget-object v2, v3, LP1;->b:Landroid/util/SparseArray;

    move-object/from16 v4, v17

    iget-object v5, v4, LP1;->b:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v6, :cond_f

    .line 40
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_a

    .line 41
    invoke-virtual {v1, v12}, LE1;->b(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 42
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_a

    .line 43
    invoke-virtual {v1, v13}, LE1;->b(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 44
    invoke-virtual {v7, v12}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LO1;

    .line 45
    invoke-virtual {v9, v13}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LO1;

    if-eqz v14, :cond_a

    if-eqz v15, :cond_a

    .line 46
    iget-object v0, v1, LE1;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, v1, LE1;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v7, v12}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v9, v13}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    :cond_b
    move-object v4, v5

    .line 50
    iget-object v0, v3, LP1;->d:LJ6;

    iget-object v2, v4, LP1;->d:LJ6;

    .line 51
    iget v5, v0, Ld7;->y:I

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_f

    .line 52
    invoke-virtual {v0, v6}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_c

    .line 53
    invoke-virtual {v1, v11}, LE1;->b(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 54
    invoke-virtual {v0, v6}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v12}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_c

    .line 55
    invoke-virtual {v1, v12}, LE1;->b(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 56
    invoke-virtual {v7, v11}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LO1;

    .line 57
    invoke-virtual {v9, v12}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LO1;

    if-eqz v13, :cond_c

    if-eqz v14, :cond_c

    .line 58
    iget-object v15, v1, LE1;->P:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v13, v1, LE1;->Q:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v7, v11}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v9, v12}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    move-object v4, v5

    .line 62
    iget v0, v7, Ld7;->y:I

    :cond_e
    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    .line 63
    invoke-virtual {v7, v0}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_e

    .line 64
    invoke-virtual {v1, v2}, LE1;->b(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 65
    invoke-virtual {v9, v2}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO1;

    if-eqz v2, :cond_e

    .line 66
    iget-object v5, v2, LO1;->b:Landroid/view/View;

    if-eqz v5, :cond_e

    invoke-virtual {v1, v5}, LE1;->b(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 67
    invoke-virtual {v7, v0}, Ld7;->d(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO1;

    .line 68
    iget-object v6, v1, LE1;->P:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v5, v1, LE1;->Q:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    :goto_a
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v5, v4

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    .line 70
    :goto_b
    iget v2, v7, Ld7;->y:I

    if-ge v0, v2, :cond_12

    .line 71
    invoke-virtual {v7, v0}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO1;

    .line 72
    iget-object v3, v2, LO1;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, LE1;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 73
    iget-object v3, v1, LE1;->P:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, v1, LE1;->Q:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    .line 75
    :goto_c
    iget v2, v9, Ld7;->y:I

    if-ge v0, v2, :cond_14

    .line 76
    invoke-virtual {v9, v0}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO1;

    .line 77
    iget-object v3, v2, LO1;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, LE1;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 78
    iget-object v3, v1, LE1;->Q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, v1, LE1;->P:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 80
    :cond_14
    invoke-static {}, LE1;->e()LJ6;

    move-result-object v0

    .line 81
    iget v2, v0, Ld7;->y:I

    .line 82
    invoke-static {v8}, LY1;->c(Landroid/view/View;)Li2;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_d
    if-ltz v2, :cond_1a

    .line 83
    invoke-virtual {v0, v2}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_19

    .line 84
    invoke-virtual {v0, v4}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LB1;

    if-eqz v5, :cond_19

    .line 85
    iget-object v6, v5, LB1;->a:Landroid/view/View;

    if-eqz v6, :cond_19

    iget-object v6, v5, LB1;->d:Li2;

    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 87
    iget-object v6, v5, LB1;->c:LO1;

    .line 88
    iget-object v7, v5, LB1;->a:Landroid/view/View;

    const/4 v9, 0x1

    .line 89
    invoke-virtual {v1, v7, v9}, LE1;->c(Landroid/view/View;Z)LO1;

    move-result-object v10

    .line 90
    invoke-virtual {v1, v7, v9}, LE1;->b(Landroid/view/View;Z)LO1;

    move-result-object v7

    if-nez v10, :cond_15

    if-eqz v7, :cond_16

    .line 91
    :cond_15
    iget-object v5, v5, LB1;->e:LE1;

    .line 92
    invoke-virtual {v5, v6, v7}, LE1;->a(LO1;LO1;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_19

    .line 93
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_f

    .line 94
    :cond_17
    invoke-virtual {v0, v4}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 95
    :cond_18
    :goto_f
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_19
    :goto_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 96
    :cond_1a
    iget-object v9, v1, LE1;->L:LP1;

    iget-object v10, v1, LE1;->M:LP1;

    iget-object v11, v1, LE1;->P:Ljava/util/ArrayList;

    iget-object v12, v1, LE1;->Q:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, LE1;->a(Landroid/view/ViewGroup;LP1;LP1;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 97
    invoke-virtual {v1}, LE1;->c()V

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    .line 98
    throw v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object p1, p0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object p1, LI1;->c:Ljava/util/ArrayList;

    iget-object v0, p0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, LI1;->a()LJ6;

    move-result-object p1

    iget-object v0, p0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1;

    .line 7
    iget-object v1, p0, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, LE1;->e(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, LH1;->w:LE1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LE1;->a(Z)V

    return-void
.end method
