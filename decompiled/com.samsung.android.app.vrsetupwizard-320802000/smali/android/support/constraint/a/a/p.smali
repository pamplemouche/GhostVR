.class public Landroid/support/constraint/a/a/p;
.super Ljava/lang/Object;


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/a/a/p;->a:[Z

    return-void
.end method

.method static a(ILandroid/support/constraint/a/a/i;)V
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->g()V

    iget-object v1, v0, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v3

    iget-object v4, v0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v4

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v9, v0, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v9, v9, v7

    sget-object v10, Landroid/support/constraint/a/a/k;->c:Landroid/support/constraint/a/a/k;

    if-ne v9, v10, :cond_1

    invoke-static {v0, v7}, Landroid/support/constraint/a/a/p;->a(Landroid/support/constraint/a/a/i;I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget v10, v1, Landroid/support/constraint/a/a/r;->g:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_11

    iget v10, v3, Landroid/support/constraint/a/a/r;->g:I

    if-eq v10, v12, :cond_11

    iget-object v10, v0, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v10, v10, v7

    sget-object v7, Landroid/support/constraint/a/a/k;->a:Landroid/support/constraint/a/a/k;

    if-eq v10, v7, :cond_8

    if-eqz v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->k()I

    move-result v7

    if-ne v7, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v9, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->o()I

    move-result v7

    invoke-virtual {v1, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v3, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    iget-object v9, v0, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v9, :cond_3

    iget-object v9, v0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v9, :cond_3

    if-eqz v6, :cond_a

    goto/16 :goto_3

    :cond_3
    iget-object v9, v0, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v9, :cond_4

    iget-object v9, v0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v9, :cond_4

    if-eqz v6, :cond_a

    goto :goto_3

    :cond_4
    iget-object v9, v0, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v9, :cond_5

    iget-object v9, v0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v9, :cond_5

    if-eqz v6, :cond_e

    goto/16 :goto_4

    :cond_5
    iget-object v9, v0, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v9, :cond_11

    iget-object v9, v0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v9, :cond_11

    if-eqz v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/support/constraint/a/a/s;->a(Landroid/support/constraint/a/a/t;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/constraint/a/a/s;->a(Landroid/support/constraint/a/a/t;)V

    :cond_6
    iget v9, v0, Landroid/support/constraint/a/a/i;->F:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_7

    invoke-virtual {v1, v11}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v3, v11}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v1, v3, v13}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    invoke-virtual {v3, v1, v13}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v1, v15}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v3, v15}, Landroid/support/constraint/a/a/r;->b(I)V

    neg-int v9, v7

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    int-to-float v9, v7

    invoke-virtual {v3, v1, v9}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    invoke-virtual {v0, v7}, Landroid/support/constraint/a/a/i;->h(I)V

    goto/16 :goto_5

    :cond_8
    :goto_2
    iget-object v7, v0, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v7, :cond_b

    iget-object v7, v0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v7, :cond_b

    invoke-virtual {v1, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v3, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    if-eqz v6, :cond_9

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    goto/16 :goto_5

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->o()I

    move-result v7

    :cond_a
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;I)V

    goto/16 :goto_5

    :cond_b
    iget-object v7, v0, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v7, :cond_c

    iget-object v7, v0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v7, :cond_c

    invoke-virtual {v1, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v3, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_c
    iget-object v7, v0, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v7, :cond_f

    iget-object v7, v0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v7, :cond_f

    invoke-virtual {v1, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v3, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->o()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;I)V

    if-eqz v6, :cond_d

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    goto :goto_5

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->o()I

    move-result v7

    :cond_e
    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;I)V

    goto :goto_5

    :cond_f
    iget-object v7, v0, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v7, :cond_11

    iget-object v7, v0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v7, :cond_11

    invoke-virtual {v1, v15}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v3, v15}, Landroid/support/constraint/a/a/r;->b(I)V

    if-eqz v6, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/constraint/a/a/s;->a(Landroid/support/constraint/a/a/t;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/a/a/s;->a(Landroid/support/constraint/a/a/t;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    goto :goto_5

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->o()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->o()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    :cond_11
    :goto_5
    iget-object v1, v0, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v1, v1, v8

    sget-object v3, Landroid/support/constraint/a/a/k;->c:Landroid/support/constraint/a/a/k;

    if-ne v1, v3, :cond_12

    invoke-static {v0, v8}, Landroid/support/constraint/a/a/p;->a(Landroid/support/constraint/a/a/i;I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_6

    :cond_12
    const/4 v1, 0x0

    :goto_6
    iget v3, v2, Landroid/support/constraint/a/a/r;->g:I

    if-eq v3, v12, :cond_23

    iget v3, v4, Landroid/support/constraint/a/a/r;->g:I

    if-eq v3, v12, :cond_23

    iget-object v3, v0, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v3, v3, v8

    sget-object v7, Landroid/support/constraint/a/a/k;->a:Landroid/support/constraint/a/a/k;

    if-eq v3, v7, :cond_1b

    if-eqz v1, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->k()I

    move-result v3

    if-ne v3, v5, :cond_13

    goto/16 :goto_8

    :cond_13
    if-eqz v1, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->q()I

    move-result v1

    invoke-virtual {v2, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v4, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    iget-object v3, v0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v3, :cond_15

    iget-object v3, v0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v3, :cond_15

    if-eqz v6, :cond_14

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->i()Landroid/support/constraint/a/a/s;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    goto/16 :goto_e

    :cond_14
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;I)V

    goto/16 :goto_e

    :cond_15
    iget-object v3, v0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v3, :cond_16

    iget-object v3, v0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v3, :cond_16

    if-eqz v6, :cond_14

    goto :goto_7

    :cond_16
    iget-object v3, v0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v3, :cond_18

    iget-object v3, v0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v3, :cond_18

    if-eqz v6, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->i()Landroid/support/constraint/a/a/s;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    goto/16 :goto_e

    :cond_17
    neg-int v0, v1

    invoke-virtual {v2, v4, v0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;I)V

    goto/16 :goto_e

    :cond_18
    iget-object v3, v0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v3, :cond_23

    iget-object v3, v0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v3, :cond_23

    if-eqz v6, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->i()Landroid/support/constraint/a/a/s;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/constraint/a/a/s;->a(Landroid/support/constraint/a/a/t;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/constraint/a/a/s;->a(Landroid/support/constraint/a/a/t;)V

    :cond_19
    iget v3, v0, Landroid/support/constraint/a/a/i;->F:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_1a

    invoke-virtual {v2, v11}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v4, v11}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v2, v4, v13}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    invoke-virtual {v4, v2, v13}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    goto/16 :goto_e

    :cond_1a
    invoke-virtual {v2, v15}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v4, v15}, Landroid/support/constraint/a/a/r;->b(I)V

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    int-to-float v3, v1

    invoke-virtual {v4, v2, v3}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/i;->i(I)V

    iget v1, v0, Landroid/support/constraint/a/a/i;->L:I

    if-lez v1, :cond_23

    goto :goto_b

    :cond_1b
    :goto_8
    iget-object v1, v0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v1, :cond_1d

    iget-object v1, v0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v1, :cond_1d

    invoke-virtual {v2, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v4, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    if-eqz v6, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->i()Landroid/support/constraint/a/a/s;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    goto :goto_9

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->q()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;I)V

    :goto_9
    iget-object v1, v0, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v1, :cond_23

    iget-object v1, v0, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    iget-object v1, v0, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/a/a/i;->L:I

    neg-int v0, v0

    invoke-virtual {v2, v8, v1, v0}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    goto/16 :goto_e

    :cond_1d
    iget-object v1, v0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v1, :cond_1f

    invoke-virtual {v2, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v4, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    if-eqz v6, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->i()Landroid/support/constraint/a/a/s;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    goto :goto_a

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->q()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;I)V

    :goto_a
    iget v1, v0, Landroid/support/constraint/a/a/i;->L:I

    if-lez v1, :cond_23

    :goto_b
    iget-object v1, v0, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/a/a/i;->L:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    goto/16 :goto_e

    :cond_1f
    iget-object v1, v0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v1, :cond_21

    iget-object v1, v0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v1, :cond_21

    invoke-virtual {v2, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v4, v8}, Landroid/support/constraint/a/a/r;->b(I)V

    if-eqz v6, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->i()Landroid/support/constraint/a/a/s;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    goto :goto_c

    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->q()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;I)V

    :goto_c
    iget v1, v0, Landroid/support/constraint/a/a/i;->L:I

    if-lez v1, :cond_23

    goto :goto_b

    :cond_21
    iget-object v1, v0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v1, :cond_23

    iget-object v1, v0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v1, :cond_23

    invoke-virtual {v2, v15}, Landroid/support/constraint/a/a/r;->b(I)V

    invoke-virtual {v4, v15}, Landroid/support/constraint/a/a/r;->b(I)V

    if-eqz v6, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->i()Landroid/support/constraint/a/a/s;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->i()Landroid/support/constraint/a/a/s;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->i()Landroid/support/constraint/a/a/s;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/s;->a(Landroid/support/constraint/a/a/t;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->h()Landroid/support/constraint/a/a/s;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/constraint/a/a/s;->a(Landroid/support/constraint/a/a/t;)V

    goto :goto_d

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->q()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/a/i;->q()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/a/a/r;->b(Landroid/support/constraint/a/a/r;F)V

    :goto_d
    iget v1, v0, Landroid/support/constraint/a/a/i;->L:I

    if-lez v1, :cond_23

    goto :goto_b

    :cond_23
    :goto_e
    return-void
.end method

.method static a(Landroid/support/constraint/a/a/l;Landroid/support/constraint/a/e;Landroid/support/constraint/a/a/i;)V
    .locals 5

    iget-object v0, p0, Landroid/support/constraint/a/a/l;->B:[Landroid/support/constraint/a/a/k;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/a/a/k;->b:Landroid/support/constraint/a/a/k;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/a/a/k;->d:Landroid/support/constraint/a/a/k;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget v0, v0, Landroid/support/constraint/a/a/d;->d:I

    invoke-virtual {p0}, Landroid/support/constraint/a/a/l;->o()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget v2, v2, Landroid/support/constraint/a/a/d;->d:I

    sub-int/2addr v1, v2

    iget-object v2, p2, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v4, p2, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    iget-object v2, p2, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v4, p2, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    iget-object v2, p2, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/k;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/k;I)V

    iput v3, p2, Landroid/support/constraint/a/a/i;->a:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/i;->c(II)V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/l;->B:[Landroid/support/constraint/a/a/k;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/a/a/k;->b:Landroid/support/constraint/a/a/k;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/a/a/k;->d:Landroid/support/constraint/a/a/k;

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget v0, v0, Landroid/support/constraint/a/a/d;->d:I

    invoke-virtual {p0}, Landroid/support/constraint/a/a/l;->q()I

    move-result p0

    iget-object v1, p2, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget v1, v1, Landroid/support/constraint/a/a/d;->d:I

    sub-int/2addr p0, v1

    iget-object v1, p2, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v2, p2, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    iget-object v1, p2, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v2, p2, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    iget-object v1, p2, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/k;I)V

    iget-object v1, p2, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    invoke-virtual {p1, v1, p0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/k;I)V

    iget v1, p2, Landroid/support/constraint/a/a/i;->L:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/a/a/i;->k()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p2, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/d;

    iget-object v2, p2, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    iget-object v1, p2, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/k;

    iget v2, p2, Landroid/support/constraint/a/a/i;->L:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/k;I)V

    :cond_2
    iput v3, p2, Landroid/support/constraint/a/a/i;->b:I

    invoke-virtual {p2, v0, p0}, Landroid/support/constraint/a/a/i;->d(II)V

    :cond_3
    return-void
.end method

.method private static a(Landroid/support/constraint/a/a/i;I)Z
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/a/a/k;->c:Landroid/support/constraint/a/a/k;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/i;->F:F

    const/4 v1, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    aget-object p0, p0, v3

    sget-object p1, Landroid/support/constraint/a/a/k;->c:Landroid/support/constraint/a/a/k;

    if-ne p0, p1, :cond_2

    :cond_2
    return v2

    :cond_3
    if-nez p1, :cond_6

    iget p1, p0, Landroid/support/constraint/a/a/i;->e:I

    if-eqz p1, :cond_4

    return v2

    :cond_4
    iget p1, p0, Landroid/support/constraint/a/a/i;->h:I

    if-nez p1, :cond_5

    iget p0, p0, Landroid/support/constraint/a/a/i;->i:I

    if-eqz p0, :cond_8

    :cond_5
    return v2

    :cond_6
    iget p1, p0, Landroid/support/constraint/a/a/i;->f:I

    if-eqz p1, :cond_7

    return v2

    :cond_7
    iget p1, p0, Landroid/support/constraint/a/a/i;->k:I

    if-nez p1, :cond_9

    iget p0, p0, Landroid/support/constraint/a/a/i;->l:I

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    return v3

    :cond_9
    :goto_1
    return v2
.end method

.method static a(Landroid/support/constraint/a/a/l;Landroid/support/constraint/a/e;IILandroid/support/constraint/a/a/c;)Z
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iget-object v2, v1, Landroid/support/constraint/a/a/c;->a:Landroid/support/constraint/a/a/i;

    iget-object v3, v1, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/i;

    iget-object v4, v1, Landroid/support/constraint/a/a/c;->b:Landroid/support/constraint/a/a/i;

    iget-object v5, v1, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/i;

    iget-object v6, v1, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/i;

    iget v7, v1, Landroid/support/constraint/a/a/c;->k:F

    iget-object v8, v1, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/i;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/i;

    move-object/from16 v8, p0

    iget-object v1, v8, Landroid/support/constraint/a/a/l;->B:[Landroid/support/constraint/a/a/k;

    aget-object v1, v1, p2

    sget-object v8, Landroid/support/constraint/a/a/k;->b:Landroid/support/constraint/a/a/k;

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-nez p2, :cond_3

    iget v10, v6, Landroid/support/constraint/a/a/i;->T:I

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iget v11, v6, Landroid/support/constraint/a/a/i;->T:I

    if-ne v11, v9, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    iget v6, v6, Landroid/support/constraint/a/a/i;->T:I

    if-ne v6, v1, :cond_2

    :goto_2
    const/4 v1, 0x1

    goto :goto_5

    :cond_2
    const/4 v1, 0x0

    goto :goto_5

    :cond_3
    iget v10, v6, Landroid/support/constraint/a/a/i;->U:I

    if-nez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    iget v11, v6, Landroid/support/constraint/a/a/i;->U:I

    if-ne v11, v9, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    iget v6, v6, Landroid/support/constraint/a/a/i;->U:I

    if-ne v6, v1, :cond_2

    goto :goto_2

    :goto_5
    move-object v13, v2

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_6
    if-nez v12, :cond_12

    invoke-virtual {v13}, Landroid/support/constraint/a/a/i;->k()I

    move-result v9

    const/16 v8, 0x8

    if-eq v9, v8, :cond_8

    add-int/lit8 v14, v14, 0x1

    if-nez p2, :cond_6

    invoke-virtual {v13}, Landroid/support/constraint/a/a/i;->o()I

    move-result v9

    goto :goto_7

    :cond_6
    invoke-virtual {v13}, Landroid/support/constraint/a/a/i;->q()I

    move-result v9

    :goto_7
    int-to-float v9, v9

    add-float/2addr v15, v9

    if-eq v13, v4, :cond_7

    iget-object v9, v13, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/a/a/d;->e()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v15, v9

    :cond_7
    iget-object v9, v13, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/a/a/d;->e()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    iget-object v9, v13, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    add-int/lit8 v17, p3, 0x1

    aget-object v9, v9, v17

    invoke-virtual {v9}, Landroid/support/constraint/a/a/d;->e()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    :cond_8
    iget-object v9, v13, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v9, v9, p3

    invoke-virtual {v13}, Landroid/support/constraint/a/a/i;->k()I

    move-result v9

    if-eq v9, v8, :cond_e

    iget-object v8, v13, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v8, v8, p2

    sget-object v9, Landroid/support/constraint/a/a/k;->c:Landroid/support/constraint/a/a/k;

    if-ne v8, v9, :cond_e

    add-int/lit8 v6, v6, 0x1

    if-nez p2, :cond_b

    iget v8, v13, Landroid/support/constraint/a/a/i;->e:I

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    return v8

    :cond_9
    const/4 v8, 0x0

    iget v9, v13, Landroid/support/constraint/a/a/i;->h:I

    if-nez v9, :cond_a

    iget v9, v13, Landroid/support/constraint/a/a/i;->i:I

    if-eqz v9, :cond_e

    :cond_a
    return v8

    :cond_b
    const/4 v8, 0x0

    iget v9, v13, Landroid/support/constraint/a/a/i;->f:I

    if-eqz v9, :cond_c

    return v8

    :cond_c
    iget v9, v13, Landroid/support/constraint/a/a/i;->k:I

    if-nez v9, :cond_d

    iget v9, v13, Landroid/support/constraint/a/a/i;->l:I

    if-eqz v9, :cond_e

    :cond_d
    return v8

    :cond_e
    iget-object v8, v13, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    add-int/lit8 v9, p3, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v8, :cond_10

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/i;

    iget-object v9, v8, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v9, v9, p3

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v9, :cond_10

    iget-object v9, v8, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v9, v9, p3

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/i;

    if-eq v9, v13, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v17, v8

    goto :goto_9

    :cond_10
    :goto_8
    const/16 v17, 0x0

    :goto_9
    if-eqz v17, :cond_11

    move-object/from16 v13, v17

    goto :goto_a

    :cond_11
    const/4 v12, 0x1

    :goto_a
    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_12
    iget-object v8, v2, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v8

    iget-object v3, v3, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    add-int/lit8 v9, p3, 0x1

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v3

    iget-object v12, v8, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    if-eqz v12, :cond_36

    iget-object v12, v3, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    if-nez v12, :cond_13

    goto/16 :goto_1b

    :cond_13
    iget-object v12, v8, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v12, v12, Landroid/support/constraint/a/a/r;->i:I

    move-object/from16 v17, v2

    const/4 v2, 0x1

    if-eq v12, v2, :cond_14

    iget-object v12, v3, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v12, v12, Landroid/support/constraint/a/a/r;->i:I

    if-eq v12, v2, :cond_14

    const/4 v2, 0x0

    return v2

    :cond_14
    const/4 v2, 0x0

    if-lez v6, :cond_15

    if-eq v6, v14, :cond_15

    return v2

    :cond_15
    if-nez v1, :cond_17

    if-nez v10, :cond_17

    if-eqz v11, :cond_16

    goto :goto_b

    :cond_16
    const/4 v2, 0x0

    goto :goto_d

    :cond_17
    :goto_b
    if-eqz v4, :cond_18

    iget-object v2, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->e()I

    move-result v2

    int-to-float v2, v2

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    :goto_c
    if-eqz v5, :cond_19

    iget-object v12, v5, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v12, v12, v9

    invoke-virtual {v12}, Landroid/support/constraint/a/a/d;->e()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v2, v12

    :cond_19
    :goto_d
    iget-object v12, v8, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v12, v12, Landroid/support/constraint/a/a/r;->f:F

    iget-object v3, v3, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v3, v3, Landroid/support/constraint/a/a/r;->f:F

    cmpg-float v18, v12, v3

    if-gez v18, :cond_1a

    sub-float/2addr v3, v12

    goto :goto_e

    :cond_1a
    sub-float v3, v12, v3

    :goto_e
    sub-float/2addr v3, v15

    const-wide/16 v18, 0x1

    if-lez v6, :cond_23

    if-ne v6, v14, :cond_23

    invoke-virtual {v13}, Landroid/support/constraint/a/a/i;->j()Landroid/support/constraint/a/a/i;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v13}, Landroid/support/constraint/a/a/i;->j()Landroid/support/constraint/a/a/i;

    move-result-object v1

    iget-object v1, v1, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v1, v1, p2

    sget-object v11, Landroid/support/constraint/a/a/k;->b:Landroid/support/constraint/a/a/k;

    if-ne v1, v11, :cond_1b

    const/4 v1, 0x0

    return v1

    :cond_1b
    add-float/2addr v3, v15

    sub-float v3, v3, v16

    if-eqz v10, :cond_1c

    sub-float v16, v16, v2

    sub-float v3, v3, v16

    :cond_1c
    if-eqz v10, :cond_1d

    iget-object v1, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->e()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v12, v1

    iget-object v1, v4, Landroid/support/constraint/a/a/i;->Z:[Landroid/support/constraint/a/a/i;

    aget-object v1, v1, p2

    if-eqz v1, :cond_1d

    iget-object v1, v1, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->e()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v12, v1

    :cond_1d
    :goto_f
    if-eqz v4, :cond_22

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    if-eqz v1, :cond_1e

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    iget-wide v10, v1, Landroid/support/constraint/a/g;->B:J

    sub-long v10, v10, v18

    iput-wide v10, v1, Landroid/support/constraint/a/g;->B:J

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    iget-wide v10, v1, Landroid/support/constraint/a/g;->s:J

    add-long v10, v10, v18

    iput-wide v10, v1, Landroid/support/constraint/a/g;->s:J

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    iget-wide v10, v1, Landroid/support/constraint/a/g;->y:J

    add-long v10, v10, v18

    iput-wide v10, v1, Landroid/support/constraint/a/g;->y:J

    :cond_1e
    iget-object v1, v4, Landroid/support/constraint/a/a/i;->Z:[Landroid/support/constraint/a/a/i;

    aget-object v1, v1, p2

    if-nez v1, :cond_20

    if-ne v4, v5, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v10, 0x0

    goto :goto_11

    :cond_20
    :goto_10
    int-to-float v2, v6

    div-float v2, v3, v2

    const/4 v10, 0x0

    cmpl-float v11, v7, v10

    if-lez v11, :cond_21

    iget-object v2, v4, Landroid/support/constraint/a/a/i;->X:[F

    aget v2, v2, p2

    mul-float v2, v2, v3

    div-float/2addr v2, v7

    :cond_21
    iget-object v11, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroid/support/constraint/a/a/d;->e()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v12, v11

    iget-object v11, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v11

    iget-object v13, v8, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    invoke-virtual {v11, v13, v12}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;F)V

    iget-object v11, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v11

    iget-object v13, v8, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    add-float/2addr v12, v2

    invoke-virtual {v11, v13, v12}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;F)V

    iget-object v2, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/e;)V

    iget-object v2, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/e;)V

    iget-object v2, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->e()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v12, v2

    :goto_11
    move-object v4, v1

    goto :goto_f

    :cond_22
    const/4 v1, 0x1

    return v1

    :cond_23
    cmpg-float v6, v3, v15

    if-gez v6, :cond_24

    const/4 v6, 0x0

    return v6

    :cond_24
    if-eqz v1, :cond_29

    sub-float/2addr v3, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/constraint/a/a/i;->y()F

    move-result v1

    mul-float v3, v3, v1

    add-float/2addr v12, v3

    :goto_12
    if-eqz v4, :cond_2a

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    if-eqz v1, :cond_25

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    iget-wide v2, v1, Landroid/support/constraint/a/g;->B:J

    sub-long v2, v2, v18

    iput-wide v2, v1, Landroid/support/constraint/a/g;->B:J

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    iget-wide v2, v1, Landroid/support/constraint/a/g;->s:J

    add-long v2, v2, v18

    iput-wide v2, v1, Landroid/support/constraint/a/g;->s:J

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    iget-wide v2, v1, Landroid/support/constraint/a/g;->y:J

    add-long v2, v2, v18

    iput-wide v2, v1, Landroid/support/constraint/a/g;->y:J

    :cond_25
    iget-object v1, v4, Landroid/support/constraint/a/a/i;->Z:[Landroid/support/constraint/a/a/i;

    aget-object v1, v1, p2

    if-nez v1, :cond_26

    if-ne v4, v5, :cond_28

    :cond_26
    if-nez p2, :cond_27

    invoke-virtual {v4}, Landroid/support/constraint/a/a/i;->o()I

    move-result v2

    goto :goto_13

    :cond_27
    invoke-virtual {v4}, Landroid/support/constraint/a/a/i;->q()I

    move-result v2

    :goto_13
    int-to-float v2, v2

    iget-object v3, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v12, v3

    iget-object v3, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v3

    iget-object v6, v8, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    invoke-virtual {v3, v6, v12}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;F)V

    iget-object v3, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v3

    iget-object v6, v8, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    add-float/2addr v12, v2

    invoke-virtual {v3, v6, v12}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;F)V

    iget-object v2, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/e;)V

    iget-object v2, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/e;)V

    iget-object v2, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->e()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v12, v2

    :cond_28
    move-object v4, v1

    goto :goto_12

    :cond_29
    if-nez v10, :cond_2b

    if-eqz v11, :cond_2a

    goto :goto_14

    :cond_2a
    const/4 v0, 0x1

    goto/16 :goto_1a

    :cond_2b
    :goto_14
    if-eqz v10, :cond_2c

    :goto_15
    sub-float/2addr v3, v2

    goto :goto_16

    :cond_2c
    if-eqz v11, :cond_2d

    goto :goto_15

    :cond_2d
    :goto_16
    add-int/lit8 v1, v14, 0x1

    int-to-float v1, v1

    div-float v1, v3, v1

    if-eqz v11, :cond_2f

    const/4 v2, 0x1

    if-le v14, v2, :cond_2e

    add-int/lit8 v1, v14, -0x1

    int-to-float v1, v1

    goto :goto_17

    :cond_2e
    const/high16 v1, 0x40000000    # 2.0f

    :goto_17
    div-float v1, v3, v1

    :cond_2f
    add-float v2, v12, v1

    if-eqz v11, :cond_30

    const/4 v3, 0x1

    if-le v14, v3, :cond_30

    iget-object v2, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->e()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v12

    :cond_30
    if-eqz v10, :cond_31

    if-eqz v4, :cond_31

    iget-object v3, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :cond_31
    :goto_18
    if-eqz v4, :cond_2a

    sget-object v3, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    if-eqz v3, :cond_32

    sget-object v3, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    iget-wide v6, v3, Landroid/support/constraint/a/g;->B:J

    sub-long v6, v6, v18

    iput-wide v6, v3, Landroid/support/constraint/a/g;->B:J

    sget-object v3, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    iget-wide v6, v3, Landroid/support/constraint/a/g;->s:J

    add-long v6, v6, v18

    iput-wide v6, v3, Landroid/support/constraint/a/g;->s:J

    sget-object v3, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/g;

    iget-wide v6, v3, Landroid/support/constraint/a/g;->y:J

    add-long v6, v6, v18

    iput-wide v6, v3, Landroid/support/constraint/a/g;->y:J

    :cond_32
    iget-object v3, v4, Landroid/support/constraint/a/a/i;->Z:[Landroid/support/constraint/a/a/i;

    aget-object v3, v3, p2

    if-nez v3, :cond_33

    if-ne v4, v5, :cond_35

    :cond_33
    if-nez p2, :cond_34

    invoke-virtual {v4}, Landroid/support/constraint/a/a/i;->o()I

    move-result v6

    goto :goto_19

    :cond_34
    invoke-virtual {v4}, Landroid/support/constraint/a/a/i;->q()I

    move-result v6

    :goto_19
    int-to-float v6, v6

    iget-object v7, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v7

    iget-object v10, v8, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    invoke-virtual {v7, v10, v2}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;F)V

    iget-object v7, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v7

    iget-object v10, v8, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    add-float v11, v2, v6

    invoke-virtual {v7, v10, v11}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;F)V

    iget-object v7, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/e;)V

    iget-object v4, v4, Landroid/support/constraint/a/a/i;->z:[Landroid/support/constraint/a/a/d;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/e;)V

    add-float/2addr v6, v1

    add-float/2addr v2, v6

    :cond_35
    move-object v4, v3

    goto :goto_18

    :goto_1a
    return v0

    :cond_36
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method
