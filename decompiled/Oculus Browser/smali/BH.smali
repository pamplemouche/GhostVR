.class public final LBH;
.super LTG;
.source "PG"


# instance fields
.field public c:[LZH;

.field public d:[LZH;

.field public e:[LYH;

.field public f:[LiI;

.field public g:LWH;

.field public h:LUH;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    .line 2
    invoke-static {}, LZH;->c()[LZH;

    move-result-object v0

    iput-object v0, p0, LBH;->c:[LZH;

    .line 3
    invoke-static {}, LZH;->c()[LZH;

    move-result-object v0

    iput-object v0, p0, LBH;->d:[LZH;

    .line 4
    invoke-static {}, LYH;->c()[LYH;

    move-result-object v0

    iput-object v0, p0, LBH;->e:[LYH;

    .line 5
    invoke-static {}, LiI;->c()[LiI;

    move-result-object v0

    iput-object v0, p0, LBH;->f:[LiI;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LBH;->g:LWH;

    .line 7
    iput-object v0, p0, LBH;->h:LUH;

    .line 8
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 22
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 23
    iget-object v1, p0, LBH;->c:[LZH;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v3, p0, LBH;->c:[LZH;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 25
    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 26
    invoke-static {v4, v3}, LSG;->b(ILZG;)I

    move-result v3

    add-int/2addr v3, v1

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 27
    :cond_2
    iget-object v1, p0, LBH;->d:[LZH;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    const/4 v0, 0x0

    .line 28
    :goto_1
    iget-object v3, p0, LBH;->d:[LZH;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 29
    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    .line 30
    invoke-static {v4, v3}, LSG;->b(ILZG;)I

    move-result v3

    add-int/2addr v3, v1

    move v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 31
    :cond_5
    iget-object v1, p0, LBH;->e:[LYH;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v0

    const/4 v0, 0x0

    .line 32
    :goto_2
    iget-object v3, p0, LBH;->e:[LYH;

    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 33
    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    const/4 v4, 0x3

    .line 34
    invoke-static {v4, v3}, LSG;->b(ILZG;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v1

    .line 35
    :cond_8
    iget-object v1, p0, LBH;->f:[LiI;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-lez v1, :cond_a

    .line 36
    :goto_3
    iget-object v1, p0, LBH;->f:[LiI;

    array-length v3, v1

    if-ge v2, v3, :cond_a

    .line 37
    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    const/4 v3, 0x4

    .line 38
    invoke-static {v3, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 39
    :cond_a
    iget-object v1, p0, LBH;->g:LWH;

    if-eqz v1, :cond_b

    const/4 v2, 0x5

    .line 40
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_b
    iget-object v1, p0, LBH;->h:LUH;

    if-eqz v1, :cond_c

    const/4 v2, 0x6

    .line 42
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 5

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_15

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    const/16 v1, 0x12

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 44
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 45
    :cond_1
    iget-object v0, p0, LBH;->h:LUH;

    if-nez v0, :cond_2

    .line 46
    new-instance v0, LUH;

    invoke-direct {v0}, LUH;-><init>()V

    iput-object v0, p0, LBH;->h:LUH;

    .line 47
    :cond_2
    iget-object v0, p0, LBH;->h:LUH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, LBH;->g:LWH;

    if-nez v0, :cond_4

    .line 49
    new-instance v0, LWH;

    invoke-direct {v0}, LWH;-><init>()V

    iput-object v0, p0, LBH;->g:LWH;

    .line 50
    :cond_4
    iget-object v0, p0, LBH;->g:LWH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 51
    :cond_5
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 52
    iget-object v1, p0, LBH;->f:[LiI;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 53
    new-array v3, v0, [LiI;

    if-eqz v1, :cond_7

    .line 54
    iget-object v4, p0, LBH;->f:[LiI;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    .line 55
    new-instance v2, LiI;

    invoke-direct {v2}, LiI;-><init>()V

    aput-object v2, v3, v1

    .line 56
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 57
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 58
    :cond_8
    new-instance v0, LiI;

    invoke-direct {v0}, LiI;-><init>()V

    aput-object v0, v3, v1

    .line 59
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 60
    iput-object v3, p0, LBH;->f:[LiI;

    goto/16 :goto_0

    .line 61
    :cond_9
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 62
    iget-object v1, p0, LBH;->e:[LYH;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 63
    new-array v3, v0, [LYH;

    if-eqz v1, :cond_b

    .line 64
    iget-object v4, p0, LBH;->e:[LYH;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_c

    .line 65
    new-instance v2, LYH;

    invoke-direct {v2}, LYH;-><init>()V

    aput-object v2, v3, v1

    .line 66
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 67
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 68
    :cond_c
    new-instance v0, LYH;

    invoke-direct {v0}, LYH;-><init>()V

    aput-object v0, v3, v1

    .line 69
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 70
    iput-object v3, p0, LBH;->e:[LYH;

    goto/16 :goto_0

    .line 71
    :cond_d
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 72
    iget-object v1, p0, LBH;->d:[LZH;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 73
    new-array v3, v0, [LZH;

    if-eqz v1, :cond_f

    .line 74
    iget-object v4, p0, LBH;->d:[LZH;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_10

    .line 75
    new-instance v2, LZH;

    invoke-direct {v2}, LZH;-><init>()V

    aput-object v2, v3, v1

    .line 76
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 77
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 78
    :cond_10
    new-instance v0, LZH;

    invoke-direct {v0}, LZH;-><init>()V

    aput-object v0, v3, v1

    .line 79
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 80
    iput-object v3, p0, LBH;->d:[LZH;

    goto/16 :goto_0

    .line 81
    :cond_11
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 82
    iget-object v1, p0, LBH;->c:[LZH;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_7

    :cond_12
    array-length v1, v1

    :goto_7
    add-int/2addr v0, v1

    .line 83
    new-array v3, v0, [LZH;

    if-eqz v1, :cond_13

    .line 84
    iget-object v4, p0, LBH;->c:[LZH;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_14

    .line 85
    new-instance v2, LZH;

    invoke-direct {v2}, LZH;-><init>()V

    aput-object v2, v3, v1

    .line 86
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 87
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 88
    :cond_14
    new-instance v0, LZH;

    invoke-direct {v0}, LZH;-><init>()V

    aput-object v0, v3, v1

    .line 89
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 90
    iput-object v3, p0, LBH;->c:[LZH;

    goto/16 :goto_0

    :cond_15
    :goto_9
    return-object p0
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LBH;->c:[LZH;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, LBH;->c:[LZH;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p1, v3, v2}, LSG;->a(ILZG;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, LBH;->d:[LZH;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v2, p0, LBH;->d:[LZH;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 7
    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 8
    invoke-virtual {p1, v3, v2}, LSG;->a(ILZG;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, LBH;->e:[LYH;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 10
    :goto_2
    iget-object v2, p0, LBH;->e:[LYH;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 11
    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    .line 12
    invoke-virtual {p1, v3, v2}, LSG;->a(ILZG;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13
    :cond_5
    iget-object v0, p0, LBH;->f:[LiI;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    .line 14
    :goto_3
    iget-object v0, p0, LBH;->f:[LiI;

    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 15
    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    .line 16
    invoke-virtual {p1, v2, v0}, LSG;->a(ILZG;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 17
    :cond_7
    iget-object v0, p0, LBH;->g:LWH;

    if-eqz v0, :cond_8

    const/4 v1, 0x5

    .line 18
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 19
    :cond_8
    iget-object v0, p0, LBH;->h:LUH;

    if-eqz v0, :cond_9

    const/4 v1, 0x6

    .line 20
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 21
    :cond_9
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
