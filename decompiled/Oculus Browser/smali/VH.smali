.class public final LVH;
.super LTG;
.source "PG"


# instance fields
.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    .line 2
    sget-object v0, LcH;->a:[I

    iput-object v0, p0, LVH;->c:[I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 5
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 6
    iget-object v1, p0, LVH;->c:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, LVH;->c:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 8
    aget v3, v3, v1

    if-ltz v3, :cond_0

    .line 9
    invoke-static {v3}, LSG;->c(I)I

    move-result v3

    goto :goto_1

    :cond_0
    const/16 v3, 0xa

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 10
    array-length v1, v3

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 10

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_b

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    .line 12
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 13
    :cond_1
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 14
    invoke-virtual {p1, v0}, LQG;->b(I)I

    move-result v0

    .line 15
    invoke-virtual {p1}, LQG;->a()I

    move-result v4

    const/4 v5, 0x0

    .line 16
    :goto_1
    iget v6, p1, LQG;->g:I

    const v7, 0x7fffffff

    const/4 v8, -0x1

    if-ne v6, v7, :cond_2

    const/4 v6, -0x1

    goto :goto_2

    .line 17
    :cond_2
    iget v9, p1, LQG;->e:I

    sub-int/2addr v6, v9

    :goto_2
    if-lez v6, :cond_4

    .line 18
    invoke-virtual {p1}, LQG;->f()I

    move-result v6

    if-eq v6, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_a

    .line 19
    invoke-virtual {p1, v4}, LQG;->c(I)V

    .line 20
    iget-object v4, p0, LVH;->c:[I

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    array-length v4, v4

    :goto_3
    add-int/2addr v5, v4

    .line 21
    new-array v5, v5, [I

    if-eqz v4, :cond_6

    .line 22
    iget-object v6, p0, LVH;->c:[I

    invoke-static {v6, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    :cond_6
    :goto_4
    iget v3, p1, LQG;->g:I

    if-ne v3, v7, :cond_7

    const/4 v3, -0x1

    goto :goto_5

    .line 24
    :cond_7
    iget v6, p1, LQG;->e:I

    sub-int/2addr v3, v6

    :goto_5
    if-lez v3, :cond_9

    .line 25
    invoke-virtual {p1}, LQG;->a()I

    move-result v3

    .line 26
    invoke-virtual {p1}, LQG;->f()I

    move-result v6

    if-eq v6, v2, :cond_8

    .line 27
    invoke-virtual {p1, v3}, LQG;->c(I)V

    .line 28
    invoke-virtual {p0, p1, v1}, LTG;->a(LQG;I)Z

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v4, 0x1

    .line 29
    aput v6, v5, v4

    move v4, v3

    goto :goto_4

    .line 30
    :cond_9
    iput-object v5, p0, LVH;->c:[I

    .line 31
    :cond_a
    iput v0, p1, LQG;->g:I

    .line 32
    invoke-virtual {p1}, LQG;->i()V

    goto :goto_0

    .line 33
    :cond_b
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v1

    .line 34
    new-array v4, v1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v5, v1, :cond_e

    if-eqz v5, :cond_c

    .line 35
    invoke-virtual {p1}, LQG;->h()I

    .line 36
    :cond_c
    invoke-virtual {p1}, LQG;->a()I

    move-result v7

    .line 37
    invoke-virtual {p1}, LQG;->f()I

    move-result v8

    if-eq v8, v2, :cond_d

    .line 38
    invoke-virtual {p1, v7}, LQG;->c(I)V

    .line 39
    invoke-virtual {p0, p1, v0}, LTG;->a(LQG;I)Z

    goto :goto_7

    :cond_d
    add-int/lit8 v7, v6, 0x1

    .line 40
    aput v8, v4, v6

    move v6, v7

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    if-eqz v6, :cond_0

    .line 41
    iget-object v0, p0, LVH;->c:[I

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    array-length v0, v0

    :goto_8
    if-nez v0, :cond_10

    if-ne v6, v1, :cond_10

    .line 42
    iput-object v4, p0, LVH;->c:[I

    goto/16 :goto_0

    :cond_10
    add-int v1, v0, v6

    .line 43
    new-array v1, v1, [I

    if-eqz v0, :cond_11

    .line 44
    iget-object v2, p0, LVH;->c:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    :cond_11
    invoke-static {v4, v3, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v1, p0, LVH;->c:[I

    goto/16 :goto_0

    :cond_12
    :goto_9
    return-object p0
.end method

.method public a(LSG;)V
    .locals 3

    .line 1
    iget-object v0, p0, LVH;->c:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LVH;->c:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    aget v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, LSG;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
