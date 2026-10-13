.class public abstract LTG;
.super LZG;
.source "PG"


# instance fields
.field public b:LVG;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LZG;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 1
    iget-object v0, p0, LTG;->b:LVG;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, LTG;->b:LVG;

    invoke-virtual {v2}, LVG;->b()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, LTG;->b:LVG;

    .line 4
    iget-boolean v3, v2, LVG;->w:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, LVG;->a()V

    .line 6
    :cond_0
    iget-object v2, v2, LVG;->y:[LWG;

    aget-object v2, v2, v1

    .line 7
    invoke-virtual {v2}, LWG;->a()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public a(LSG;)V
    .locals 3

    .line 8
    iget-object v0, p0, LTG;->b:LVG;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, LTG;->b:LVG;

    invoke-virtual {v1}, LVG;->b()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, LTG;->b:LVG;

    .line 11
    iget-boolean v2, v1, LVG;->w:Z

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v1}, LVG;->a()V

    .line 13
    :cond_1
    iget-object v1, v1, LVG;->y:[LWG;

    aget-object v1, v1, v0

    .line 14
    invoke-virtual {v1, p1}, LWG;->a(LSG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(LQG;I)Z
    .locals 9

    .line 15
    invoke-virtual {p1}, LQG;->a()I

    move-result v0

    .line 16
    invoke-virtual {p1, p2}, LQG;->d(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    .line 17
    invoke-virtual {p1}, LQG;->a()I

    move-result v3

    sub-int/2addr v3, v0

    if-nez v3, :cond_1

    .line 18
    sget-object p1, LcH;->b:[B

    goto :goto_0

    .line 19
    :cond_1
    new-array v4, v3, [B

    .line 20
    iget v5, p1, LQG;->b:I

    add-int/2addr v5, v0

    .line 21
    iget-object p1, p1, LQG;->a:[B

    invoke-static {p1, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    .line 22
    :goto_0
    new-instance v0, LbH;

    invoke-direct {v0, p2, p1}, LbH;-><init>(I[B)V

    .line 23
    iget-object p1, p0, LTG;->b:LVG;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 24
    new-instance p1, LVG;

    const/16 v3, 0xa

    .line 25
    invoke-direct {p1, v3}, LVG;-><init>(I)V

    .line 26
    iput-object p1, p0, LTG;->b:LVG;

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p1, v1}, LVG;->a(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 28
    iget-object p1, p1, LVG;->y:[LWG;

    aget-object v4, p1, v3

    sget-object v5, LVG;->A:LWG;

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 29
    :cond_3
    aget-object p2, p1, v3

    :cond_4
    :goto_1
    const/4 p1, 0x1

    if-nez p2, :cond_a

    .line 30
    new-instance p2, LWG;

    invoke-direct {p2}, LWG;-><init>()V

    .line 31
    iget-object v3, p0, LTG;->b:LVG;

    .line 32
    invoke-virtual {v3, v1}, LVG;->a(I)I

    move-result v4

    if-ltz v4, :cond_5

    .line 33
    iget-object v1, v3, LVG;->y:[LWG;

    aput-object p2, v1, v4

    goto :goto_2

    :cond_5
    not-int v4, v4

    .line 34
    iget v5, v3, LVG;->z:I

    if-ge v4, v5, :cond_6

    iget-object v5, v3, LVG;->y:[LWG;

    aget-object v6, v5, v4

    sget-object v7, LVG;->A:LWG;

    if-ne v6, v7, :cond_6

    .line 35
    iget-object v2, v3, LVG;->x:[I

    aput v1, v2, v4

    .line 36
    aput-object p2, v5, v4

    goto :goto_2

    .line 37
    :cond_6
    iget-boolean v5, v3, LVG;->w:Z

    if-eqz v5, :cond_7

    iget v5, v3, LVG;->z:I

    iget-object v6, v3, LVG;->x:[I

    array-length v6, v6

    if-lt v5, v6, :cond_7

    .line 38
    invoke-virtual {v3}, LVG;->a()V

    .line 39
    invoke-virtual {v3, v1}, LVG;->a(I)I

    move-result v4

    not-int v4, v4

    .line 40
    :cond_7
    iget v5, v3, LVG;->z:I

    iget-object v6, v3, LVG;->x:[I

    array-length v6, v6

    if-lt v5, v6, :cond_8

    add-int/2addr v5, p1

    .line 41
    invoke-virtual {v3, v5}, LVG;->b(I)I

    move-result v5

    .line 42
    new-array v6, v5, [I

    .line 43
    new-array v5, v5, [LWG;

    .line 44
    iget-object v7, v3, LVG;->x:[I

    array-length v8, v7

    invoke-static {v7, v2, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v7, v3, LVG;->y:[LWG;

    array-length v8, v7

    invoke-static {v7, v2, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v6, v3, LVG;->x:[I

    .line 47
    iput-object v5, v3, LVG;->y:[LWG;

    .line 48
    :cond_8
    iget v2, v3, LVG;->z:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_9

    .line 49
    iget-object v5, v3, LVG;->x:[I

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v2, v3, LVG;->y:[LWG;

    iget v5, v3, LVG;->z:I

    sub-int/2addr v5, v4

    invoke-static {v2, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    :cond_9
    iget-object v2, v3, LVG;->x:[I

    aput v1, v2, v4

    .line 52
    iget-object v1, v3, LVG;->y:[LWG;

    aput-object p2, v1, v4

    .line 53
    iget v1, v3, LVG;->z:I

    add-int/2addr v1, p1

    iput v1, v3, LVG;->z:I

    .line 54
    :cond_a
    :goto_2
    iget-object p2, p2, LWG;->y:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public clone()LTG;
    .locals 1

    .line 1
    invoke-super {p0}, LZG;->clone()LZG;

    move-result-object v0

    check-cast v0, LTG;

    .line 2
    invoke-static {p0, v0}, LXG;->a(LTG;LTG;)V

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-super {p0}, LZG;->clone()LZG;

    move-result-object v0

    check-cast v0, LTG;

    .line 4
    invoke-static {p0, v0}, LXG;->a(LTG;LTG;)V

    return-object v0
.end method
