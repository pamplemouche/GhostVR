.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "PG"


# instance fields
.field public E:Z

.field public F:I

.field public G:[I

.field public H:[Landroid/view/View;

.field public final I:Landroid/util/SparseIntArray;

.field public final J:Landroid/util/SparseIntArray;

.field public K:LYf;

.field public final L:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 11
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->E:Z

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    .line 13
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 14
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 15
    new-instance p1, LWf;

    invoke-direct {p1}, LWf;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->k(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->E:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 6
    new-instance v0, LWf;

    invoke-direct {v0}, LWf;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 8
    invoke-static {p1, p2, p3, p4}, LQg;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)LPg;

    move-result-object p1

    .line 9
    iget p1, p1, LPg;->b:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->k(I)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LQg;->o:I

    .line 3
    invoke-virtual {p0}, LQg;->k()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, LQg;->j()I

    move-result v1

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, LQg;->p:I

    .line 5
    invoke-virtual {p0}, LQg;->i()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, LQg;->l()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->j(I)V

    return-void
.end method

.method public a(ILXg;Lbh;)I
    .locals 2

    .line 65
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()V

    .line 66
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->z()V

    .line 67
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILXg;Lbh;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public a(LXg;Lbh;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lbh;->a()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lbh;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(LXg;Lbh;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final a(LXg;Lbh;I)I
    .locals 0

    .line 192
    iget-boolean p2, p2, Lbh;->g:Z

    if-nez p2, :cond_0

    .line 193
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    invoke-virtual {p1, p3, p2}, LYf;->b(II)I

    move-result p1

    return p1

    .line 194
    :cond_0
    invoke-virtual {p1, p3}, LXg;->a(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 196
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    iget p3, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    invoke-virtual {p2, p1, p3}, LYf;->b(II)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)LRg;
    .locals 1

    .line 27
    new-instance v0, LXf;

    invoke-direct {v0, p1, p2}, LXf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)LRg;
    .locals 1

    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, LXf;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, LXf;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 30
    :cond_0
    new-instance v0, LXf;

    invoke-direct {v0, p1}, LXf;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(LXg;Lbh;III)Landroid/view/View;
    .locals 7

    .line 69
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v0}, Lug;->f()I

    move-result v0

    .line 71
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v1}, Lug;->b()I

    move-result v1

    if-le p4, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_6

    .line 72
    invoke-virtual {p0, p3}, LQg;->b(I)Landroid/view/View;

    move-result-object v5

    .line 73
    invoke-virtual {p0, v5}, LQg;->i(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p5, :cond_5

    .line 74
    invoke-virtual {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->b(LXg;Lbh;I)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    .line 75
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, LRg;

    invoke-virtual {v6}, LRg;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    .line 76
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v6, v5}, Lug;->d(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 77
    invoke-virtual {v6, v5}, Lug;->a(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p3, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public a(Landroid/view/View;ILXg;Lbh;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 160
    invoke-virtual/range {p0 .. p1}, LQg;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 161
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, LXf;

    .line 162
    iget v6, v5, LXf;->e:I

    .line 163
    iget v5, v5, LXf;->f:I

    add-int/2addr v5, v6

    .line 164
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;ILXg;Lbh;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v4

    :cond_1
    move/from16 v7, p2

    .line 165
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 166
    :goto_0
    iget-boolean v10, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eq v7, v10, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    const/4 v10, -0x1

    if-eqz v7, :cond_4

    .line 167
    invoke-virtual/range {p0 .. p0}, LQg;->d()I

    move-result v7

    sub-int/2addr v7, v9

    const/4 v11, -0x1

    const/4 v12, -0x1

    goto :goto_2

    .line 168
    :cond_4
    invoke-virtual/range {p0 .. p0}, LQg;->d()I

    move-result v7

    move v11, v7

    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 169
    :goto_2
    iget v13, v0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne v13, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 170
    :goto_3
    invoke-virtual {v0, v1, v2, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(LXg;Lbh;I)I

    move-result v14

    move-object v10, v4

    move/from16 v16, v12

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v12, -0x1

    const/4 v15, 0x0

    :goto_4
    if-eq v7, v11, :cond_17

    move/from16 v17, v11

    .line 171
    invoke-virtual {v0, v1, v2, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(LXg;Lbh;I)I

    move-result v11

    .line 172
    invoke-virtual {v0, v7}, LQg;->b(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_e

    .line 173
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_8

    if-eq v11, v14, :cond_8

    if-eqz v4, :cond_7

    goto/16 :goto_e

    :cond_7
    move-object/from16 v18, v3

    move/from16 v19, v9

    move-object/from16 v21, v10

    move/from16 v20, v14

    const/4 v14, 0x1

    goto/16 :goto_c

    .line 174
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, LXf;

    .line 175
    iget v2, v11, LXf;->e:I

    move-object/from16 v18, v3

    .line 176
    iget v3, v11, LXf;->f:I

    add-int/2addr v3, v2

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_9

    if-ne v2, v6, :cond_9

    if-ne v3, v5, :cond_9

    return-object v1

    .line 178
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v4, :cond_b

    .line 179
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_c

    if-nez v10, :cond_c

    :cond_b
    move/from16 v19, v9

    move-object/from16 v21, v10

    :goto_5
    move/from16 v20, v14

    const/4 v9, 0x1

    const/4 v14, 0x1

    goto :goto_b

    .line 180
    :cond_c
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 181
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v10

    sub-int v10, v20, v19

    .line 182
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_f

    if-le v10, v15, :cond_d

    :goto_6
    move/from16 v19, v9

    goto :goto_5

    :cond_d
    if-ne v10, v15, :cond_13

    if-le v2, v9, :cond_e

    const/4 v10, 0x1

    goto :goto_7

    :cond_e
    const/4 v10, 0x0

    :goto_7
    if-ne v13, v10, :cond_13

    goto :goto_6

    :cond_f
    if-nez v4, :cond_13

    move/from16 v19, v9

    .line 183
    iget-object v9, v0, LQg;->e:Lgi;

    move/from16 v20, v14

    const/16 v14, 0x6003

    invoke-virtual {v9, v1, v14}, Lgi;->a(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v0, LQg;->f:Lgi;

    .line 184
    invoke-virtual {v9, v1, v14}, Lgi;->a(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    goto :goto_8

    :cond_10
    const/4 v9, 0x0

    :goto_8
    const/4 v14, 0x1

    xor-int/2addr v9, v14

    if-eqz v9, :cond_14

    if-le v10, v8, :cond_11

    :goto_9
    const/4 v9, 0x1

    goto :goto_b

    :cond_11
    if-ne v10, v8, :cond_14

    if-le v2, v12, :cond_12

    const/4 v9, 0x1

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    if-ne v13, v9, :cond_14

    goto :goto_9

    :cond_13
    move/from16 v19, v9

    move/from16 v20, v14

    const/4 v14, 0x1

    :cond_14
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_16

    .line 185
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 186
    iget v4, v11, LXf;->e:I

    .line 187
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 188
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move v15, v3

    move v9, v4

    move-object/from16 v10, v21

    move-object v4, v1

    goto :goto_d

    .line 189
    :cond_15
    iget v8, v11, LXf;->e:I

    .line 190
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 191
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move-object v10, v1

    move v12, v8

    move/from16 v9, v19

    move v8, v3

    goto :goto_d

    :cond_16
    :goto_c
    move/from16 v9, v19

    move-object/from16 v10, v21

    :goto_d
    add-int v7, v7, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v11, v17

    move-object/from16 v3, v18

    move/from16 v14, v20

    goto/16 :goto_4

    :cond_17
    :goto_e
    move-object/from16 v21, v10

    if-eqz v4, :cond_18

    goto :goto_f

    :cond_18
    move-object/from16 v4, v21

    :goto_f
    return-object v4
.end method

.method public a(LXg;Lbh;Landroid/view/View;LZ7;)V
    .locals 7

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6
    instance-of v1, v0, LXf;

    if-nez v1, :cond_0

    .line 7
    invoke-super {p0, p3, p4}, LQg;->a(Landroid/view/View;LZ7;)V

    return-void

    .line 8
    :cond_0
    check-cast v0, LXf;

    .line 9
    invoke-virtual {v0}, LRg;->a()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;->a(LXg;Lbh;I)I

    move-result p1

    .line 10
    iget p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 11
    iget p2, v0, LXf;->e:I

    .line 12
    iget v2, v0, LXf;->f:I

    const/4 v4, 0x1

    .line 13
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    if-le v0, v1, :cond_1

    if-ne v2, v0, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    move v1, p2

    move v3, p1

    .line 14
    invoke-static/range {v1 .. v6}, LY7;->a(IIIIZZ)LY7;

    move-result-object p1

    invoke-virtual {p4, p1}, LZ7;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    .line 15
    iget v3, v0, LXf;->e:I

    .line 16
    iget v4, v0, LXf;->f:I

    .line 17
    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    if-le p2, v1, :cond_3

    if-ne v4, p2, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    move v1, p1

    .line 18
    invoke-static/range {v1 .. v6}, LY7;->a(IIIIZZ)LY7;

    move-result-object p1

    invoke-virtual {p4, p1}, LZ7;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public a(LXg;Lbh;Lcg;I)V
    .locals 4

    .line 53
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()V

    .line 54
    invoke-virtual {p2}, Lbh;->a()I

    move-result v0

    if-lez v0, :cond_3

    .line 55
    iget-boolean v0, p2, Lbh;->g:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 56
    :goto_0
    iget v1, p3, Lcg;->b:I

    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(LXg;Lbh;I)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    .line 57
    iget p4, p3, Lcg;->b:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    .line 58
    iput p4, p3, Lcg;->b:I

    .line 59
    invoke-virtual {p0, p1, p2, p4}, Landroid/support/v7/widget/GridLayoutManager;->b(LXg;Lbh;I)I

    move-result v1

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p2}, Lbh;->a()I

    move-result p4

    sub-int/2addr p4, v0

    .line 61
    iget v0, p3, Lcg;->b:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 62
    invoke-virtual {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(LXg;Lbh;I)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    .line 63
    :cond_2
    iput v0, p3, Lcg;->b:I

    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->z()V

    return-void
.end method

.method public a(LXg;Lbh;Leg;Ldg;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    .line 85
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v3}, Lug;->e()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 86
    :goto_0
    invoke-virtual/range {p0 .. p0}, LQg;->d()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v6, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    iget v11, v6, Landroid/support/v7/widget/GridLayoutManager;->F:I

    aget v10, v10, v11

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v9, :cond_2

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->A()V

    .line 88
    :cond_2
    iget v11, v2, Leg;->e:I

    if-ne v11, v8, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 89
    :goto_2
    iget v12, v6, Landroid/support/v7/widget/GridLayoutManager;->F:I

    if-nez v11, :cond_4

    .line 90
    iget v12, v2, Leg;->d:I

    invoke-virtual {v6, v0, v1, v12}, Landroid/support/v7/widget/GridLayoutManager;->b(LXg;Lbh;I)I

    move-result v12

    .line 91
    iget v13, v2, Leg;->d:I

    invoke-virtual {v6, v0, v1, v13}, Landroid/support/v7/widget/GridLayoutManager;->c(LXg;Lbh;I)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    move v13, v12

    const/4 v12, 0x0

    .line 92
    :goto_3
    iget v14, v6, Landroid/support/v7/widget/GridLayoutManager;->F:I

    if-ge v12, v14, :cond_8

    invoke-virtual {v2, v1}, Leg;->a(Lbh;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-lez v13, :cond_8

    .line 93
    iget v14, v2, Leg;->d:I

    .line 94
    invoke-virtual {v6, v0, v1, v14}, Landroid/support/v7/widget/GridLayoutManager;->c(LXg;Lbh;I)I

    move-result v15

    .line 95
    iget v4, v6, Landroid/support/v7/widget/GridLayoutManager;->F:I

    if-gt v15, v4, :cond_7

    sub-int/2addr v13, v15

    if-gez v13, :cond_5

    goto :goto_4

    .line 96
    :cond_5
    invoke-virtual {v2, v0}, Leg;->a(LXg;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 97
    :cond_6
    iget-object v14, v6, Landroid/support/v7/widget/GridLayoutManager;->H:[Landroid/view/View;

    aput-object v4, v14, v12

    add-int/lit8 v12, v12, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_3

    .line 98
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/support/v7/widget/GridLayoutManager;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-nez v12, :cond_9

    .line 99
    iput-boolean v8, v7, Ldg;->b:Z

    return-void

    :cond_9
    if-eqz v11, :cond_a

    move v14, v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v13, v12, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    :goto_5
    if-eq v13, v14, :cond_b

    .line 100
    iget-object v4, v6, Landroid/support/v7/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v4, v4, v13

    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, LXf;

    .line 102
    invoke-virtual {v6, v4}, LQg;->i(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v6, v0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(LXg;Lbh;I)I

    move-result v4

    iput v4, v8, LXf;->f:I

    .line 103
    iput v15, v8, LXf;->e:I

    add-int/2addr v15, v4

    add-int v13, v13, v16

    const/4 v8, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v0, v12, :cond_11

    .line 104
    iget-object v8, v6, Landroid/support/v7/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v8, v8, v0

    .line 105
    iget-object v13, v2, Leg;->k:Ljava/util/List;

    if-nez v13, :cond_d

    if-eqz v11, :cond_c

    .line 106
    invoke-virtual {v6, v8}, LQg;->a(Landroid/view/View;)V

    goto :goto_7

    .line 107
    :cond_c
    invoke-virtual {v6, v8, v5, v5}, LQg;->a(Landroid/view/View;IZ)V

    goto :goto_7

    :cond_d
    if-eqz v11, :cond_e

    const/4 v13, -0x1

    const/4 v14, 0x1

    .line 108
    invoke-virtual {v6, v8, v13, v14}, LQg;->a(Landroid/view/View;IZ)V

    goto :goto_7

    :cond_e
    const/4 v14, 0x1

    .line 109
    invoke-virtual {v6, v8, v5, v14}, LQg;->a(Landroid/view/View;IZ)V

    .line 110
    :goto_7
    iget-object v13, v6, Landroid/support/v7/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v13}, LQg;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual {v6, v8, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IZ)V

    .line 112
    iget-object v13, v6, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v13, v8}, Lug;->b(Landroid/view/View;)I

    move-result v13

    if-le v13, v4, :cond_f

    move v4, v13

    .line 113
    :cond_f
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, LXf;

    const/high16 v14, 0x3f800000    # 1.0f

    .line 114
    iget-object v15, v6, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v15, v8}, Lug;->c(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v14

    iget v13, v13, LXf;->f:I

    int-to-float v13, v13

    div-float/2addr v8, v13

    cmpl-float v13, v8, v1

    if-lez v13, :cond_10

    move v1, v8

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    if-eqz v9, :cond_13

    .line 115
    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager;->F:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 116
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/GridLayoutManager;->j(I)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v0, v12, :cond_13

    .line 117
    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v1, v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v8, 0x1

    .line 118
    invoke-virtual {v6, v1, v3, v8}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IZ)V

    .line 119
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v3, v1}, Lug;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, v4, :cond_12

    move v4, v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v12, :cond_16

    .line 120
    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 121
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v3, v1}, Lug;->b(Landroid/view/View;)I

    move-result v3

    if-eq v3, v4, :cond_15

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LXf;

    .line 123
    iget-object v8, v3, LRg;->b:Landroid/graphics/Rect;

    .line 124
    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    .line 125
    iget v10, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v8

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v8

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v8

    .line 126
    iget v8, v3, LXf;->e:I

    iget v11, v3, LXf;->f:I

    invoke-virtual {v6, v8, v11}, Landroid/support/v7/widget/GridLayoutManager;->g(II)I

    move-result v8

    .line 127
    iget v11, v6, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_14

    .line 128
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11, v10, v3, v5}, LQg;->a(IIIIZ)I

    move-result v3

    sub-int v8, v4, v9

    .line 129
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_a

    :cond_14
    const/high16 v11, 0x40000000    # 2.0f

    sub-int v10, v4, v10

    .line 130
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 131
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v8, v11, v9, v3, v5}, LQg;->a(IIIIZ)I

    move-result v8

    move v3, v10

    .line 132
    :goto_a
    invoke-virtual {v6, v1, v3, v8, v13}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_b

    :cond_15
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v13, 0x1

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    const/4 v13, 0x1

    .line 133
    iput v4, v7, Ldg;->a:I

    .line 134
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne v0, v13, :cond_18

    .line 135
    iget v0, v2, Leg;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 136
    iget v0, v2, Leg;->b:I

    sub-int v1, v0, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v18, v1

    move v1, v0

    move/from16 v0, v18

    goto :goto_d

    .line 137
    :cond_17
    iget v0, v2, Leg;->b:I

    add-int v1, v4, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_d

    :cond_18
    const/4 v1, -0x1

    .line 138
    iget v0, v2, Leg;->f:I

    if-ne v0, v1, :cond_19

    .line 139
    iget v0, v2, Leg;->b:I

    sub-int v1, v0, v4

    move v4, v0

    move v0, v1

    goto :goto_c

    .line 140
    :cond_19
    iget v0, v2, Leg;->b:I

    add-int/2addr v4, v0

    :goto_c
    move v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    const/4 v8, 0x0

    :goto_e
    if-ge v8, v12, :cond_1e

    .line 141
    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v9, v3, v8

    .line 142
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, LXf;

    .line 143
    iget v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1b

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 145
    invoke-virtual/range {p0 .. p0}, LQg;->j()I

    move-result v2

    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    iget v4, v6, Landroid/support/v7/widget/GridLayoutManager;->F:I

    iget v5, v10, LXf;->e:I

    sub-int/2addr v4, v5

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 146
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v3, v9}, Lug;->c(Landroid/view/View;)I

    move-result v3

    sub-int v3, v2, v3

    move v13, v0

    move v15, v1

    move v14, v2

    move v11, v3

    goto :goto_10

    .line 147
    :cond_1a
    invoke-virtual/range {p0 .. p0}, LQg;->j()I

    move-result v2

    iget-object v3, v6, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    iget v4, v10, LXf;->e:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 148
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v3, v9}, Lug;->c(Landroid/view/View;)I

    move-result v3

    add-int v4, v3, v2

    goto :goto_f

    .line 149
    :cond_1b
    invoke-virtual/range {p0 .. p0}, LQg;->l()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    iget v3, v10, LXf;->e:I

    aget v1, v1, v3

    add-int/2addr v0, v1

    .line 150
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v1, v9}, Lug;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    :goto_f
    move v13, v0

    move v15, v1

    move v11, v2

    move v14, v4

    :goto_10
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v11

    move v3, v13

    move v4, v14

    move v5, v15

    .line 151
    invoke-virtual/range {v0 .. v5}, LQg;->a(Landroid/view/View;IIII)V

    .line 152
    invoke-virtual {v10}, LRg;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v10}, LRg;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v0, 0x1

    goto :goto_12

    :cond_1d
    :goto_11
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, v7, Ldg;->c:Z

    .line 154
    :goto_12
    iget-boolean v1, v7, Ldg;->d:Z

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v7, Ldg;->d:Z

    add-int/lit8 v8, v8, 0x1

    move v2, v11

    move v0, v13

    move v4, v14

    move v1, v15

    goto/16 :goto_e

    .line 155
    :cond_1e
    iget-object v0, v6, Landroid/support/v7/widget/GridLayoutManager;->H:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    .line 32
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    if-nez v0, :cond_0

    .line 33
    invoke-super {p0, p1, p2, p3}, LQg;->a(Landroid/graphics/Rect;II)V

    .line 34
    :cond_0
    invoke-virtual {p0}, LQg;->j()I

    move-result v0

    invoke-virtual {p0}, LQg;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 35
    invoke-virtual {p0}, LQg;->l()I

    move-result v0

    invoke-virtual {p0}, LQg;->i()I

    move-result v2

    add-int/2addr v2, v0

    .line 36
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    .line 38
    invoke-virtual {p0}, LQg;->g()I

    move-result v0

    invoke-static {p3, p1, v0}, LQg;->a(III)I

    move-result p1

    .line 39
    iget-object p3, p0, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v1

    .line 40
    invoke-virtual {p0}, LQg;->h()I

    move-result v0

    .line 41
    invoke-static {p2, p3, v0}, LQg;->a(III)I

    move-result p2

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    .line 43
    invoke-virtual {p0}, LQg;->h()I

    move-result v0

    invoke-static {p2, p1, v0}, LQg;->a(III)I

    move-result p2

    .line 44
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v2

    .line 45
    invoke-virtual {p0}, LQg;->g()I

    move-result v0

    .line 46
    invoke-static {p3, p1, v0}, LQg;->a(III)I

    move-result p1

    .line 47
    :goto_0
    iget-object p3, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 21
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    .line 22
    iget-object p1, p1, LYf;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 19
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    .line 20
    iget-object p1, p1, LYf;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .line 25
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    .line 26
    iget-object p1, p1, LYf;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 23
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    .line 24
    iget-object p1, p1, LYf;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final a(Landroid/view/View;IIZ)V
    .locals 1

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    if-eqz p4, :cond_0

    .line 157
    invoke-virtual {p0, p1, p2, p3, v0}, LQg;->b(Landroid/view/View;IILRg;)Z

    move-result p4

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, LQg;->a(Landroid/view/View;IILRg;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    .line 159
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public a(Lbh;Leg;LOg;)V
    .locals 6

    .line 78
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .line 79
    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    if-ge v0, v3, :cond_1

    invoke-virtual {p2, p1}, Leg;->a(Lbh;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    .line 80
    iget v3, p2, Leg;->d:I

    .line 81
    iget v4, p2, Leg;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object v5, p3

    check-cast v5, LAf;

    invoke-virtual {v5, v3, v4}, LAf;->a(II)V

    .line 82
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    check-cast v3, LWf;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 83
    iget v3, p2, Leg;->d:I

    iget v4, p2, Leg;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Leg;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 84
    throw p1

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 49
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    .line 51
    invoke-virtual {p0}, LQg;->o()V

    :goto_0
    return-void

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(LRg;)Z
    .locals 0

    .line 31
    instance-of p1, p1, LXf;

    return p1
.end method

.method public b(ILXg;Lbh;)I
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()V

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->z()V

    .line 9
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILXg;Lbh;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public b(LXg;Lbh;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-nez v0, :cond_0

    .line 2
    iget p1, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lbh;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lbh;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(LXg;Lbh;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final b(LXg;Lbh;I)I
    .locals 1

    .line 26
    iget-boolean p2, p2, Lbh;->g:Z

    if-nez p2, :cond_0

    .line 27
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    iget p2, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    invoke-virtual {p1, p3, p2}, LYf;->a(II)I

    move-result p1

    return p1

    .line 28
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 29
    :cond_1
    invoke-virtual {p1, p3}, LXg;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    iget p3, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    invoke-virtual {p2, p1, p3}, LYf;->a(II)I

    move-result p1

    return p1
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    .line 6
    iget-object p1, p1, LYf;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final b(Landroid/view/View;IZ)V
    .locals 8

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LXf;

    .line 12
    iget-object v1, v0, LRg;->b:Landroid/graphics/Rect;

    .line 13
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 14
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    .line 15
    iget v1, v0, LXf;->e:I

    iget v4, v0, LXf;->f:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->g(II)I

    move-result v1

    .line 16
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 17
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, LQg;->a(IIIIZ)I

    move-result p2

    .line 18
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v1}, Lug;->g()I

    move-result v1

    .line 19
    iget v3, p0, LQg;->n:I

    .line 20
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, LQg;->a(IIIIZ)I

    move-result v0

    goto :goto_0

    .line 21
    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, LQg;->a(IIIIZ)I

    move-result p2

    .line 22
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v1}, Lug;->g()I

    move-result v1

    .line 23
    iget v2, p0, LQg;->m:I

    .line 24
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, LQg;->a(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    .line 25
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void
.end method

.method public final c(LXg;Lbh;I)I
    .locals 3

    .line 4
    iget-boolean p2, p2, Lbh;->g:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    check-cast p1, LWf;

    if-eqz p1, :cond_0

    return v1

    .line 6
    :cond_0
    throw v0

    .line 7
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {p2, p3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v2, :cond_2

    return p2

    .line 8
    :cond_2
    invoke-virtual {p1, p3}, LXg;->a(I)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 10
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    check-cast p1, LWf;

    if-eqz p1, :cond_4

    return v1

    .line 11
    :cond_4
    throw v0
.end method

.method public c()LRg;
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LXf;

    invoke-direct {v0, v1, v2}, LXf;-><init>(II)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, LXf;

    invoke-direct {v0, v2, v1}, LXf;-><init>(II)V

    return-object v0
.end method

.method public c(LXg;Lbh;)V
    .locals 6

    .line 12
    iget-boolean v0, p2, Lbh;->g:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    invoke-virtual {p0, v1}, LQg;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LXf;

    .line 15
    invoke-virtual {v2}, LRg;->a()I

    move-result v3

    .line 16
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 17
    iget v5, v2, LXf;->f:I

    .line 18
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 20
    iget v2, v2, LXf;->e:I

    .line 21
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(LXg;Lbh;)V

    .line 23
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 24
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public g(II)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public g(Lbh;)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    const/high16 p1, -0x80000000

    .line 6
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    .line 7
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    invoke-virtual {p1}, Lcg;->b()V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager;->E:Z

    return-void
.end method

.method public final j(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    if-eq v3, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 3
    new-array v0, v0, [I

    :cond_1
    const/4 v3, 0x0

    .line 4
    aput v3, v0, v3

    .line 5
    div-int v4, p1, v1

    .line 6
    rem-int/2addr p1, v1

    const/4 v5, 0x0

    :goto_0
    if-gt v2, v1, :cond_3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    sub-int v6, v1, v3

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    .line 7
    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->G:[I

    return-void
.end method

.method public k(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->E:Z

    if-lt p1, v0, :cond_1

    .line 3
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->K:LYf;

    .line 5
    iget-object p1, p1, LYf;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    invoke-virtual {p0}, LQg;->o()V

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Span count should be at least 1. Provided "

    invoke-static {v1, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->H:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->F:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->H:[Landroid/view/View;

    :cond_1
    return-void
.end method
