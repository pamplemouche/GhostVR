.class public final LFH;
.super LTG;
.source "PG"


# instance fields
.field public c:[LZH;

.field public d:LjI;

.field public e:[LfI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    .line 2
    invoke-static {}, LZH;->c()[LZH;

    move-result-object v0

    iput-object v0, p0, LFH;->c:[LZH;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LFH;->d:LjI;

    .line 4
    invoke-static {}, LfI;->c()[LfI;

    move-result-object v1

    iput-object v1, p0, LFH;->e:[LfI;

    .line 5
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 12
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 13
    iget-object v1, p0, LFH;->c:[LZH;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, LFH;->c:[LZH;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 15
    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 16
    invoke-static {v4, v3}, LSG;->b(ILZG;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 17
    :cond_2
    iget-object v1, p0, LFH;->d:LjI;

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    .line 18
    invoke-static {v3, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_3
    iget-object v1, p0, LFH;->e:[LfI;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 20
    :goto_1
    iget-object v1, p0, LFH;->e:[LfI;

    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 21
    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    const/4 v3, 0x3

    .line 22
    invoke-static {v3, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 5

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 24
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 25
    :cond_1
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 26
    iget-object v1, p0, LFH;->e:[LfI;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 27
    new-array v3, v0, [LfI;

    if-eqz v1, :cond_3

    .line 28
    iget-object v4, p0, LFH;->e:[LfI;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 29
    new-instance v2, LfI;

    invoke-direct {v2}, LfI;-><init>()V

    aput-object v2, v3, v1

    .line 30
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 31
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 32
    :cond_4
    new-instance v0, LfI;

    invoke-direct {v0}, LfI;-><init>()V

    aput-object v0, v3, v1

    .line 33
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 34
    iput-object v3, p0, LFH;->e:[LfI;

    goto :goto_0

    .line 35
    :cond_5
    iget-object v0, p0, LFH;->d:LjI;

    if-nez v0, :cond_6

    .line 36
    new-instance v0, LjI;

    invoke-direct {v0}, LjI;-><init>()V

    iput-object v0, p0, LFH;->d:LjI;

    .line 37
    :cond_6
    iget-object v0, p0, LFH;->d:LjI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 38
    :cond_7
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 39
    iget-object v1, p0, LFH;->c:[LZH;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 40
    new-array v3, v0, [LZH;

    if-eqz v1, :cond_9

    .line 41
    iget-object v4, p0, LFH;->c:[LZH;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_a

    .line 42
    new-instance v2, LZH;

    invoke-direct {v2}, LZH;-><init>()V

    aput-object v2, v3, v1

    .line 43
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 44
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 45
    :cond_a
    new-instance v0, LZH;

    invoke-direct {v0}, LZH;-><init>()V

    aput-object v0, v3, v1

    .line 46
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 47
    iput-object v3, p0, LFH;->c:[LZH;

    goto/16 :goto_0

    :cond_b
    :goto_5
    return-object p0
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LFH;->c:[LZH;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, LFH;->c:[LZH;

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
    iget-object v0, p0, LFH;->d:LjI;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p1, v2, v0}, LSG;->a(ILZG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LFH;->e:[LfI;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 8
    :goto_1
    iget-object v0, p0, LFH;->e:[LfI;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 9
    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 10
    invoke-virtual {p1, v2, v0}, LSG;->a(ILZG;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_4
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
