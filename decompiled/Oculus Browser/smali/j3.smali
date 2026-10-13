.class public abstract Lj3;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[I

.field public static final b:Ls3;

.field public static final c:Ls3;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lj3;->a:[I

    .line 2
    new-instance v0, Lo3;

    invoke-direct {v0}, Lo3;-><init>()V

    sput-object v0, Lj3;->b:Ls3;

    :try_start_0
    const-string v0, "t1"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sput-object v0, Lj3;->c:Ls3;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method public static a(Ls3;LJ6;Ljava/lang/Object;Li3;)LJ6;
    .locals 3

    .line 168
    iget-object v0, p3, Li3;->a:Lz2;

    .line 169
    iget-object v1, v0, Lz2;->e0:Landroid/view/View;

    .line 170
    invoke-virtual {p1}, Ld7;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_5

    if-nez v1, :cond_0

    goto :goto_2

    .line 171
    :cond_0
    new-instance p2, LJ6;

    invoke-direct {p2}, LJ6;-><init>()V

    .line 172
    invoke-virtual {p0, p2, v1}, Ls3;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 173
    iget-object p0, p3, Li3;->c:Lq2;

    .line 174
    iget-boolean p3, p3, Li3;->b:Z

    if-eqz p3, :cond_1

    .line 175
    iget-object p3, v0, Lz2;->i0:Lw2;

    .line 176
    iget-object p0, p0, Lq2;->r:Ljava/util/ArrayList;

    goto :goto_0

    .line 177
    :cond_1
    iget-object p3, v0, Lz2;->i0:Lw2;

    .line 178
    iget-object p0, p0, Lq2;->s:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 179
    invoke-static {p2, p0}, LX6;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 180
    invoke-virtual {p1}, LJ6;->values()Ljava/util/Collection;

    move-result-object p0

    .line 181
    invoke-static {p2, p0}, LX6;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 182
    :cond_2
    iget p0, p1, Ld7;->y:I

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_4

    .line 183
    invoke-virtual {p1, p0}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 184
    invoke-virtual {p2, p3}, Ld7;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 185
    invoke-virtual {p1, p0}, Ld7;->d(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object p2

    .line 186
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ld7;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(LJ6;Li3;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    .line 187
    iget-object p1, p1, Li3;->c:Lq2;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 188
    iget-object p2, p1, Lq2;->r:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 190
    iget-object p1, p1, Lq2;->r:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lq2;->s:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 193
    :goto_0
    invoke-virtual {p0, p1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ls3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lz2;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    if-eqz p5, :cond_1

    .line 254
    iget-object p4, p4, Lz2;->i0:Lw2;

    if-eqz p4, :cond_3

    iget-object p4, p4, Lw2;->m:Ljava/lang/Boolean;

    if-nez p4, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 256
    :cond_1
    iget-object p4, p4, Lz2;->i0:Lw2;

    if-eqz p4, :cond_3

    iget-object p4, p4, Lw2;->n:Ljava/lang/Boolean;

    if-nez p4, :cond_2

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 258
    invoke-virtual {p0, p2, p1, p3}, Ls3;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 259
    :cond_4
    invoke-virtual {p0, p2, p1, p3}, Ls3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a(Ls3;Lz2;Lz2;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_3

    .line 248
    iget-object p1, p2, Lz2;->i0:Lw2;

    if-nez p1, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p1, Lw2;->l:Ljava/lang/Object;

    sget-object p3, Lz2;->t0:Ljava/lang/Object;

    if-ne p1, p3, :cond_2

    .line 250
    invoke-virtual {p2}, Lz2;->w()Ljava/lang/Object;

    move-result-object p1

    :cond_2
    move-object v0, p1

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p1}, Lz2;->w()Ljava/lang/Object;

    move-result-object v0

    .line 252
    :goto_0
    invoke-virtual {p0, v0}, Ls3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 253
    invoke-virtual {p0, p1}, Ls3;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static a(Ls3;Lz2;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_2

    .line 244
    iget-object p2, p1, Lz2;->i0:Lw2;

    if-nez p2, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p2, Lw2;->j:Ljava/lang/Object;

    sget-object p2, Lz2;->t0:Ljava/lang/Object;

    if-ne v0, p2, :cond_3

    invoke-virtual {p1}, Lz2;->r()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p1}, Lz2;->q()Ljava/lang/Object;

    move-result-object v0

    .line 247
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Ls3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ls3;Ljava/lang/Object;Lz2;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    if-eqz p1, :cond_2

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object p2, p2, Lz2;->e0:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 204
    invoke-virtual {p0, v0, p2}, Ls3;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 205
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 206
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 207
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0, p1, v0}, Ls3;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static a(Lz2;Lz2;)Ls3;
    .locals 4

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    .line 139
    invoke-virtual {p0}, Lz2;->r()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    iget-object v2, p0, Lz2;->i0:Lw2;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v2, v2, Lw2;->h:Ljava/lang/Object;

    sget-object v3, Lz2;->t0:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lz2;->q()Ljava/lang/Object;

    move-result-object v2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    iget-object v2, p0, Lz2;->i0:Lw2;

    if-nez v2, :cond_4

    move-object p0, v1

    goto :goto_1

    .line 145
    :cond_4
    iget-object v2, v2, Lw2;->l:Ljava/lang/Object;

    sget-object v3, Lz2;->t0:Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    .line 146
    invoke-virtual {p0}, Lz2;->w()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_5
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_6

    .line 147
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p1, :cond_b

    .line 148
    invoke-virtual {p1}, Lz2;->q()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 149
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_7
    iget-object p0, p1, Lz2;->i0:Lw2;

    if-nez p0, :cond_8

    move-object p0, v1

    goto :goto_2

    .line 151
    :cond_8
    iget-object p0, p0, Lw2;->j:Ljava/lang/Object;

    sget-object v2, Lz2;->t0:Ljava/lang/Object;

    if-ne p0, v2, :cond_9

    invoke-virtual {p1}, Lz2;->r()Ljava/lang/Object;

    move-result-object p0

    :cond_9
    :goto_2
    if-eqz p0, :cond_a

    .line 152
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_a
    invoke-virtual {p1}, Lz2;->w()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 154
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v1

    .line 156
    :cond_c
    sget-object p0, Lj3;->b:Ls3;

    if-eqz p0, :cond_d

    invoke-static {p0, v0}, Lj3;->a(Ls3;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 157
    sget-object p0, Lj3;->b:Ls3;

    return-object p0

    .line 158
    :cond_d
    sget-object p0, Lj3;->c:Ls3;

    if-eqz p0, :cond_e

    invoke-static {p0, v0}, Lj3;->a(Ls3;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 159
    sget-object p0, Lj3;->c:Ls3;

    return-object p0

    .line 160
    :cond_e
    sget-object p0, Lj3;->b:Ls3;

    if-nez p0, :cond_f

    sget-object p0, Lj3;->c:Ls3;

    if-nez p0, :cond_f

    return-object v1

    .line 161
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(LY2;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 1
    iget v5, v0, LY2;->G:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v7, p3

    :goto_0
    const/4 v8, 0x0

    if-ge v7, v3, :cond_4

    .line 3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq2;

    .line 4
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5
    iget-object v8, v9, Lq2;->a:LY2;

    iget-object v8, v8, LY2;->I:LE2;

    invoke-virtual {v8}, LE2;->a()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    iget-object v8, v9, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_1
    if-ltz v8, :cond_3

    .line 7
    iget-object v10, v9, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp2;

    .line 8
    invoke-static {v9, v10, v5, v6, v4}, Lj3;->a(Lq2;Lp2;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v10, v9, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_3

    .line 10
    iget-object v12, v9, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lp2;

    .line 11
    invoke-static {v9, v12, v5, v8, v4}, Lj3;->a(Lq2;Lp2;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_2e

    .line 13
    new-instance v7, Landroid/view/View;

    iget-object v9, v0, LY2;->H:LG2;

    .line 14
    iget-object v9, v9, LG2;->b:Landroid/content/Context;

    .line 15
    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_2e

    .line 17
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 18
    new-instance v13, LJ6;

    invoke-direct {v13}, LJ6;-><init>()V

    add-int/lit8 v10, v3, -0x1

    move/from16 v12, p3

    :goto_5
    if-lt v10, v12, :cond_9

    .line 19
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lq2;

    .line 20
    invoke-virtual {v11, v9}, Lq2;->b(I)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_9

    .line 21
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 22
    iget-object v6, v11, Lq2;->r:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 23
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v16, :cond_6

    .line 24
    iget-object v8, v11, Lq2;->r:Ljava/util/ArrayList;

    .line 25
    iget-object v11, v11, Lq2;->s:Ljava/util/ArrayList;

    goto :goto_6

    .line 26
    :cond_6
    iget-object v8, v11, Lq2;->r:Ljava/util/ArrayList;

    .line 27
    iget-object v11, v11, Lq2;->s:Ljava/util/ArrayList;

    move-object/from16 v38, v11

    move-object v11, v8

    move-object/from16 v8, v38

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v6, :cond_8

    .line 28
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    .line 30
    invoke-virtual {v13, v3}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 31
    invoke-virtual {v13, v2, v6}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 32
    :cond_7
    invoke-virtual {v13, v2, v3}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v6, v17

    goto :goto_7

    :cond_8
    :goto_9
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_5

    .line 33
    :cond_9
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3;

    if-eqz v4, :cond_1f

    .line 34
    iget-object v3, v0, LY2;->I:LE2;

    invoke-virtual {v3}, LE2;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 35
    iget-object v3, v0, LY2;->I:LE2;

    invoke-virtual {v3, v9}, LE2;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_b

    :goto_b
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    goto/16 :goto_16

    .line 36
    :cond_b
    iget-object v6, v1, Li3;->a:Lz2;

    .line 37
    iget-object v8, v1, Li3;->d:Lz2;

    .line 38
    invoke-static {v8, v6}, Lj3;->a(Lz2;Lz2;)Ls3;

    move-result-object v9

    if-nez v9, :cond_c

    goto :goto_b

    .line 39
    :cond_c
    iget-boolean v10, v1, Li3;->b:Z

    .line 40
    iget-boolean v11, v1, Li3;->e:Z

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v5

    .line 43
    invoke-static {v9, v6, v10}, Lj3;->a(Ls3;Lz2;Z)Ljava/lang/Object;

    move-result-object v5

    .line 44
    invoke-static {v9, v8, v11}, Lj3;->b(Ls3;Lz2;Z)Ljava/lang/Object;

    move-result-object v11

    .line 45
    iget-object v12, v1, Li3;->a:Lz2;

    move/from16 v32, v14

    .line 46
    iget-object v14, v1, Li3;->d:Lz2;

    move/from16 v33, v15

    if-eqz v12, :cond_d

    .line 47
    iget-object v15, v12, Lz2;->e0:Landroid/view/View;

    const/4 v0, 0x0

    .line 48
    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    if-eqz v12, :cond_16

    if-nez v14, :cond_e

    goto/16 :goto_f

    .line 49
    :cond_e
    iget-boolean v0, v1, Li3;->b:Z

    .line 50
    invoke-virtual {v13}, Ld7;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_f

    move/from16 v34, v10

    const/4 v15, 0x0

    goto :goto_c

    .line 51
    :cond_f
    invoke-static {v9, v12, v14, v0}, Lj3;->a(Ls3;Lz2;Lz2;Z)Ljava/lang/Object;

    move-result-object v15

    move/from16 v34, v10

    .line 52
    :goto_c
    invoke-static {v9, v13, v15, v1}, Lj3;->b(Ls3;LJ6;Ljava/lang/Object;Li3;)LJ6;

    move-result-object v10

    move-object/from16 v35, v6

    .line 53
    invoke-static {v9, v13, v15, v1}, Lj3;->a(Ls3;LJ6;Ljava/lang/Object;Li3;)LJ6;

    move-result-object v6

    .line 54
    invoke-virtual {v13}, Ld7;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_12

    if-eqz v10, :cond_10

    .line 55
    invoke-virtual {v10}, Ld7;->clear()V

    :cond_10
    if-eqz v6, :cond_11

    .line 56
    invoke-virtual {v6}, Ld7;->clear()V

    :cond_11
    const/4 v15, 0x0

    goto :goto_d

    :cond_12
    move-object/from16 v16, v15

    .line 57
    invoke-virtual {v13}, LJ6;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 58
    invoke-static {v4, v10, v15}, Lj3;->a(Ljava/util/ArrayList;LJ6;Ljava/util/Collection;)V

    .line 59
    invoke-virtual {v13}, LJ6;->values()Ljava/util/Collection;

    move-result-object v15

    .line 60
    invoke-static {v2, v6, v15}, Lj3;->a(Ljava/util/ArrayList;LJ6;Ljava/util/Collection;)V

    move-object/from16 v15, v16

    :goto_d
    if-nez v5, :cond_13

    if-nez v11, :cond_13

    if-nez v15, :cond_13

    move-object/from16 v37, v2

    goto :goto_10

    :cond_13
    move-object/from16 v36, v13

    const/4 v13, 0x1

    .line 61
    invoke-static {v12, v14, v0, v10, v13}, Lj3;->a(Lz2;Lz2;ZLJ6;Z)V

    if-eqz v15, :cond_15

    .line 62
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v9, v15, v7, v4}, Ls3;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 64
    iget-boolean v13, v1, Li3;->e:Z

    move-object/from16 v37, v2

    .line 65
    iget-object v2, v1, Li3;->f:Lq2;

    move-object/from16 v16, v9

    move-object/from16 v17, v15

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move/from16 v20, v13

    move-object/from16 v21, v2

    .line 66
    invoke-static/range {v16 .. v21}, Lj3;->a(Ls3;Ljava/lang/Object;Ljava/lang/Object;LJ6;ZLq2;)V

    .line 67
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 68
    invoke-static {v6, v1, v5, v0}, Lj3;->a(LJ6;Li3;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 69
    invoke-virtual {v9, v5, v2}, Ls3;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_14
    move-object/from16 v27, v1

    move-object/from16 v29, v2

    goto :goto_e

    :cond_15
    move-object/from16 v37, v2

    const/16 v27, 0x0

    const/16 v29, 0x0

    .line 70
    :goto_e
    new-instance v1, Lg3;

    move-object/from16 v22, v1

    move-object/from16 v23, v12

    move-object/from16 v24, v14

    move/from16 v25, v0

    move-object/from16 v26, v6

    move-object/from16 v28, v9

    invoke-direct/range {v22 .. v29}, Lg3;-><init>(Lz2;Lz2;ZLJ6;Landroid/view/View;Ls3;Landroid/graphics/Rect;)V

    invoke-static {v3, v1}, LL3;->a(Landroid/view/View;Ljava/lang/Runnable;)LL3;

    goto :goto_11

    :cond_16
    :goto_f
    move-object/from16 v37, v2

    move-object/from16 v35, v6

    move/from16 v34, v10

    :goto_10
    move-object/from16 v36, v13

    const/4 v15, 0x0

    :goto_11
    if-nez v5, :cond_17

    if-nez v15, :cond_17

    if-nez v11, :cond_17

    goto/16 :goto_16

    .line 71
    :cond_17
    invoke-static {v9, v11, v8, v4, v7}, Lj3;->a(Ls3;Ljava/lang/Object;Lz2;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    .line 72
    invoke-static {v9, v5, v1, v2, v7}, Lj3;->a(Ls3;Ljava/lang/Object;Lz2;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v10, 0x4

    .line 73
    invoke-static {v6, v10}, Lj3;->a(Ljava/util/ArrayList;I)V

    move-object/from16 v16, v9

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    move-object/from16 v20, v1

    move/from16 v21, v34

    .line 74
    invoke-static/range {v16 .. v21}, Lj3;->a(Ls3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lz2;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    if-eqz v8, :cond_18

    if-eqz v11, :cond_18

    .line 75
    iget-boolean v10, v8, Lz2;->G:Z

    if-eqz v10, :cond_18

    iget-boolean v10, v8, Lz2;->W:Z

    if-eqz v10, :cond_18

    iget-boolean v10, v8, Lz2;->k0:Z

    if-eqz v10, :cond_18

    const/4 v10, 0x1

    .line 76
    invoke-virtual {v8, v10}, Lz2;->d(Z)V

    .line 77
    iget-object v10, v8, Lz2;->e0:Landroid/view/View;

    .line 78
    invoke-virtual {v9, v11, v10, v0}, Ls3;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 79
    iget-object v8, v8, Lz2;->d0:Landroid/view/ViewGroup;

    .line 80
    new-instance v10, Le3;

    invoke-direct {v10, v0}, Le3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v8, v10}, LL3;->a(Landroid/view/View;Ljava/lang/Runnable;)LL3;

    .line 81
    :cond_18
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v10, :cond_19

    .line 83
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 84
    invoke-static {v13}, LA7;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 85
    invoke-virtual {v13, v14}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_19
    move-object/from16 v22, v9

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v28, v15

    move-object/from16 v29, v2

    .line 86
    invoke-virtual/range {v22 .. v29}, Ls3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 87
    invoke-virtual {v9, v3, v1}, Ls3;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v0, :cond_1d

    .line 90
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 91
    invoke-static {v10}, LA7;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    .line 92
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_1a

    move-object/from16 v13, v36

    goto :goto_15

    :cond_1a
    const/4 v14, 0x0

    .line 93
    invoke-virtual {v10, v14}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    move-object/from16 v13, v36

    .line 94
    invoke-virtual {v13, v11}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v0, :cond_1c

    .line 95
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 96
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 97
    invoke-virtual {v10, v11}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_15

    :cond_1b
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x0

    goto :goto_14

    :cond_1c
    :goto_15
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v36, v13

    goto :goto_13

    .line 98
    :cond_1d
    new-instance v5, Lp3;

    move-object/from16 v22, v5

    move-object/from16 v23, v9

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v8

    move-object/from16 v27, v4

    move-object/from16 v28, v1

    invoke-direct/range {v22 .. v28}, Lp3;-><init>(Ls3;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3, v5}, LL3;->a(Landroid/view/View;Ljava/lang/Runnable;)LL3;

    const/4 v0, 0x0

    .line 99
    invoke-static {v6, v0}, Lj3;->a(Ljava/util/ArrayList;I)V

    .line 100
    invoke-virtual {v9, v15, v4, v2}, Ls3;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_17

    :cond_1e
    :goto_16
    const/4 v0, 0x0

    :goto_17
    move/from16 v27, v32

    move/from16 v30, v33

    goto/16 :goto_1f

    :cond_1f
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    const/4 v0, 0x0

    move-object/from16 v2, p0

    .line 101
    iget-object v3, v2, LY2;->I:LE2;

    invoke-virtual {v3}, LE2;->a()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 102
    iget-object v3, v2, LY2;->I:LE2;

    invoke-virtual {v3, v9}, LE2;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_18

    :cond_20
    const/4 v3, 0x0

    :goto_18
    if-nez v3, :cond_21

    goto :goto_17

    .line 103
    :cond_21
    iget-object v4, v1, Li3;->a:Lz2;

    .line 104
    iget-object v5, v1, Li3;->d:Lz2;

    .line 105
    invoke-static {v5, v4}, Lj3;->a(Lz2;Lz2;)Ls3;

    move-result-object v6

    if-nez v6, :cond_22

    goto :goto_17

    .line 106
    :cond_22
    iget-boolean v8, v1, Li3;->b:Z

    .line 107
    iget-boolean v9, v1, Li3;->e:Z

    .line 108
    invoke-static {v6, v4, v8}, Lj3;->a(Ls3;Lz2;Z)Ljava/lang/Object;

    move-result-object v8

    .line 109
    invoke-static {v6, v5, v9}, Lj3;->b(Ls3;Lz2;Z)Ljava/lang/Object;

    move-result-object v12

    .line 110
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v9, v1, Li3;->a:Lz2;

    .line 113
    iget-object v15, v1, Li3;->d:Lz2;

    if-eqz v9, :cond_29

    if-nez v15, :cond_23

    goto/16 :goto_1c

    .line 114
    :cond_23
    iget-boolean v14, v1, Li3;->b:Z

    .line 115
    invoke-virtual {v13}, Ld7;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_24

    const/4 v0, 0x0

    goto :goto_19

    .line 116
    :cond_24
    invoke-static {v6, v9, v15, v14}, Lj3;->a(Ls3;Lz2;Lz2;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    .line 117
    :goto_19
    invoke-static {v6, v13, v0, v1}, Lj3;->b(Ls3;LJ6;Ljava/lang/Object;Li3;)LJ6;

    move-result-object v2

    .line 118
    invoke-virtual {v13}, Ld7;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_25

    const/4 v0, 0x0

    goto :goto_1a

    :cond_25
    move-object/from16 v16, v0

    .line 119
    invoke-virtual {v2}, LJ6;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v16

    :goto_1a
    if-nez v8, :cond_26

    if-nez v12, :cond_26

    if-nez v0, :cond_26

    goto/16 :goto_1c

    :cond_26
    move-object/from16 v22, v4

    const/4 v4, 0x1

    .line 120
    invoke-static {v9, v15, v14, v2, v4}, Lj3;->a(Lz2;Lz2;ZLJ6;Z)V

    if-eqz v0, :cond_27

    .line 121
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 122
    invoke-virtual {v6, v0, v7, v11}, Ls3;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v20, v9

    .line 123
    iget-boolean v9, v1, Li3;->e:Z

    move-object/from16 v21, v10

    .line 124
    iget-object v10, v1, Li3;->f:Lq2;

    move/from16 v23, v14

    move-object v14, v6

    move-object/from16 v24, v15

    move-object v15, v0

    move-object/from16 v16, v12

    move-object/from16 v17, v2

    move/from16 v18, v9

    move-object/from16 v19, v10

    .line 125
    invoke-static/range {v14 .. v19}, Lj3;->a(Ls3;Ljava/lang/Object;Ljava/lang/Object;LJ6;ZLq2;)V

    if-eqz v8, :cond_28

    .line 126
    invoke-virtual {v6, v8, v4}, Ls3;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_1b

    :cond_27
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v14

    move-object/from16 v24, v15

    const/4 v4, 0x0

    .line 127
    :cond_28
    :goto_1b
    new-instance v2, Lh3;

    move-object/from16 v16, v20

    move-object v9, v2

    move-object/from16 v15, v21

    move-object v10, v6

    move-object v14, v11

    move-object v11, v13

    move-object/from16 v25, v5

    move-object v5, v12

    move-object v12, v0

    move-object/from16 v26, v0

    move-object v0, v13

    move-object v13, v1

    move-object/from16 v28, v14

    move/from16 v27, v32

    const/16 v29, 0x0

    move-object v14, v15

    move-object/from16 v32, v15

    move/from16 v30, v33

    move-object v15, v7

    move-object/from16 v17, v24

    move/from16 v18, v23

    move-object/from16 v19, v28

    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-direct/range {v9 .. v21}, Lh3;-><init>(Ls3;LJ6;Ljava/lang/Object;Li3;Ljava/util/ArrayList;Landroid/view/View;Lz2;Lz2;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v3, v2}, LL3;->a(Landroid/view/View;Ljava/lang/Runnable;)LL3;

    move-object/from16 v20, v26

    goto :goto_1d

    :cond_29
    :goto_1c
    move-object/from16 v22, v4

    move-object/from16 v25, v5

    move-object/from16 v28, v11

    move-object v5, v12

    move-object v0, v13

    move/from16 v27, v32

    move/from16 v30, v33

    const/16 v29, 0x0

    move-object/from16 v32, v10

    move-object/from16 v20, v29

    :goto_1d
    if-nez v8, :cond_2a

    if-nez v20, :cond_2a

    if-nez v5, :cond_2a

    goto/16 :goto_1f

    :cond_2a
    move-object/from16 v2, v25

    move-object/from16 v4, v28

    .line 128
    invoke-static {v6, v5, v2, v4, v7}, Lj3;->a(Ls3;Ljava/lang/Object;Lz2;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_1e

    :cond_2b
    move-object/from16 v29, v5

    .line 130
    :cond_2c
    :goto_1e
    invoke-virtual {v6, v8, v7}, Ls3;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 131
    iget-boolean v1, v1, Li3;->b:Z

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v29

    move-object/from16 v17, v20

    move-object/from16 v18, v22

    move/from16 v19, v1

    invoke-static/range {v14 .. v19}, Lj3;->a(Ls3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lz2;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    move-object/from16 v18, v29

    move-object/from16 v19, v2

    move-object/from16 v21, v32

    .line 133
    invoke-virtual/range {v14 .. v21}, Ls3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 134
    new-instance v5, Lf3;

    move-object v9, v5

    move-object v10, v8

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v13, v22

    move-object/from16 v14, v32

    move-object v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v29

    invoke-direct/range {v9 .. v17}, Lf3;-><init>(Ljava/lang/Object;Ls3;Landroid/view/View;Lz2;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v3, v5}, LL3;->a(Landroid/view/View;Ljava/lang/Runnable;)LL3;

    .line 135
    new-instance v2, Lq3;

    move-object/from16 v4, v32

    invoke-direct {v2, v6, v4, v0}, Lq3;-><init>(Ls3;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v2}, LL3;->a(Landroid/view/View;Ljava/lang/Runnable;)LL3;

    .line 136
    invoke-virtual {v6, v3, v1}, Ls3;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 137
    new-instance v1, Lr3;

    invoke-direct {v1, v6, v4, v0}, Lr3;-><init>(Ls3;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v1}, LL3;->a(Landroid/view/View;Ljava/lang/Runnable;)LL3;

    :cond_2d
    :goto_1f
    add-int/lit8 v14, v27, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v15, v30

    move-object/from16 v5, v31

    goto/16 :goto_4

    :cond_2e
    return-void
.end method

.method public static a(Ljava/util/ArrayList;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 210
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 211
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/ArrayList;LJ6;Ljava/util/Collection;)V
    .locals 3

    .line 164
    iget v0, p1, Ld7;->y:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 165
    invoke-virtual {p1, v0}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 166
    invoke-static {v1}, LA7;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lq2;Lp2;Landroid/util/SparseArray;ZZ)V
    .locals 11

    .line 212
    iget-object v6, p1, Lp2;->b:Lz2;

    if-nez v6, :cond_0

    return-void

    .line 213
    :cond_0
    iget v7, v6, Lz2;->U:I

    if-nez v7, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 214
    sget-object v0, Lj3;->a:[I

    iget p1, p1, Lp2;->a:I

    aget p1, v0, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Lp2;->a:I

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_7

    const/4 v2, 0x7

    if-eq p1, v2, :cond_a

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_3
    if-eqz p4, :cond_4

    .line 215
    iget-boolean p1, v6, Lz2;->k0:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v6, Lz2;->W:Z

    if-nez p1, :cond_c

    iget-boolean p1, v6, Lz2;->G:Z

    if-eqz p1, :cond_c

    goto :goto_3

    .line 216
    :cond_4
    iget-boolean p1, v6, Lz2;->W:Z

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    .line 217
    iget-boolean p1, v6, Lz2;->k0:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Lz2;->G:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Lz2;->W:Z

    if-eqz p1, :cond_9

    goto :goto_1

    .line 218
    :cond_6
    iget-boolean p1, v6, Lz2;->G:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Lz2;->W:Z

    if-nez p1, :cond_9

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 219
    iget-boolean p1, v6, Lz2;->G:Z

    if-nez p1, :cond_9

    iget-object p1, v6, Lz2;->e0:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget p1, v6, Lz2;->l0:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_9

    goto :goto_1

    .line 221
    :cond_8
    iget-boolean p1, v6, Lz2;->G:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Lz2;->W:Z

    if-nez p1, :cond_9

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    move v9, p1

    const/4 p1, 0x0

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    .line 222
    iget-boolean p1, v6, Lz2;->j0:Z

    goto :goto_4

    .line 223
    :cond_b
    iget-boolean p1, v6, Lz2;->G:Z

    if-nez p1, :cond_c

    iget-boolean p1, v6, Lz2;->W:Z

    if-nez p1, :cond_c

    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    const/4 v2, 0x1

    :goto_5
    move v1, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 224
    :goto_6
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li3;

    if-eqz p1, :cond_e

    if-nez v2, :cond_d

    .line 225
    new-instance p1, Li3;

    invoke-direct {p1}, Li3;-><init>()V

    .line 226
    invoke-virtual {p2, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, p1

    .line 227
    :cond_d
    iput-object v6, v2, Li3;->a:Lz2;

    .line 228
    iput-boolean p3, v2, Li3;->b:Z

    .line 229
    iput-object p0, v2, Li3;->c:Lq2;

    :cond_e
    move-object p1, v2

    const/4 v10, 0x0

    if-nez p4, :cond_10

    if-eqz v1, :cond_10

    if-eqz p1, :cond_f

    .line 230
    iget-object v1, p1, Li3;->d:Lz2;

    if-ne v1, v6, :cond_f

    .line 231
    iput-object v10, p1, Li3;->d:Lz2;

    .line 232
    :cond_f
    iget-object v1, p0, Lq2;->a:LY2;

    .line 233
    iget v2, v6, Lz2;->w:I

    if-ge v2, v0, :cond_10

    iget v2, v1, LY2;->G:I

    if-lt v2, v0, :cond_10

    iget-boolean v0, p0, Lq2;->t:Z

    if-nez v0, :cond_10

    .line 234
    invoke-virtual {v1, v6}, LY2;->c(Lz2;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v6

    .line 235
    invoke-virtual/range {v0 .. v5}, LY2;->a(Lz2;IIIZ)V

    :cond_10
    if-eqz v9, :cond_13

    if-eqz p1, :cond_11

    .line 236
    iget-object v0, p1, Li3;->d:Lz2;

    if-nez v0, :cond_13

    :cond_11
    if-nez p1, :cond_12

    .line 237
    new-instance p1, Li3;

    invoke-direct {p1}, Li3;-><init>()V

    .line 238
    invoke-virtual {p2, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    :cond_12
    iput-object v6, p1, Li3;->d:Lz2;

    .line 240
    iput-boolean p3, p1, Li3;->e:Z

    .line 241
    iput-object p0, p1, Li3;->f:Lq2;

    :cond_13
    if-nez p4, :cond_14

    if-eqz v8, :cond_14

    if-eqz p1, :cond_14

    .line 242
    iget-object p0, p1, Li3;->a:Lz2;

    if-ne p0, v6, :cond_14

    .line 243
    iput-object v10, p1, Li3;->a:Lz2;

    :cond_14
    return-void
.end method

.method public static a(Ls3;Ljava/lang/Object;Ljava/lang/Object;LJ6;ZLq2;)V
    .locals 1

    .line 194
    iget-object v0, p5, Lq2;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 196
    iget-object p4, p5, Lq2;->s:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Lq2;->r:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 199
    :goto_0
    invoke-virtual {p3, p4}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 200
    invoke-virtual {p0, p1, p3}, Ls3;->c(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 201
    invoke-virtual {p0, p2, p3}, Ls3;->c(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static a(Lz2;Lz2;ZLJ6;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 260
    iget-object p0, p1, Lz2;->i0:Lw2;

    goto :goto_0

    .line 261
    :cond_0
    iget-object p0, p0, Lz2;->i0:Lw2;

    :goto_0
    return-void
.end method

.method public static a(Ls3;Ljava/util/List;)Z
    .locals 4

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 163
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ls3;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ls3;LJ6;Ljava/lang/Object;Li3;)LJ6;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ld7;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p3, Li3;->d:Lz2;

    .line 3
    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    .line 4
    iget-object v1, p2, Lz2;->e0:Landroid/view/View;

    .line 5
    invoke-virtual {p0, v0, v1}, Ls3;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 6
    iget-object p0, p3, Li3;->f:Lq2;

    .line 7
    iget-boolean p3, p3, Li3;->e:Z

    if-eqz p3, :cond_1

    .line 8
    iget-object p2, p2, Lz2;->i0:Lw2;

    .line 9
    iget-object p0, p0, Lq2;->s:Ljava/util/ArrayList;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p2, Lz2;->i0:Lw2;

    .line 11
    iget-object p0, p0, Lq2;->r:Ljava/util/ArrayList;

    .line 12
    :goto_0
    invoke-static {v0, p0}, LX6;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {v0}, LJ6;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 14
    invoke-static {p1, p0}, LX6;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    return-object v0

    .line 15
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ld7;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ls3;Lz2;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_2

    .line 16
    iget-object p2, p1, Lz2;->i0:Lw2;

    if-nez p2, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p2, Lw2;->h:Ljava/lang/Object;

    sget-object p2, Lz2;->t0:Ljava/lang/Object;

    if-ne v0, p2, :cond_3

    invoke-virtual {p1}, Lz2;->q()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lz2;->r()Ljava/lang/Object;

    move-result-object v0

    .line 19
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Ls3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
