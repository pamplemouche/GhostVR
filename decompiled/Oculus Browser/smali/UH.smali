.class public final LUH;
.super LTG;
.source "PG"


# instance fields
.field public c:LRH;

.field public d:[LaI;

.field public e:[LaI;

.field public f:Ljava/lang/Boolean;

.field public g:LOH;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LUH;->c:LRH;

    .line 3
    invoke-static {}, LaI;->c()[LaI;

    move-result-object v1

    iput-object v1, p0, LUH;->d:[LaI;

    .line 4
    invoke-static {}, LaI;->c()[LaI;

    move-result-object v1

    iput-object v1, p0, LUH;->e:[LaI;

    .line 5
    iput-object v0, p0, LUH;->f:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, LUH;->g:LOH;

    .line 7
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 16
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 17
    iget-object v1, p0, LUH;->c:LRH;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 18
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_0
    iget-object v1, p0, LUH;->d:[LaI;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v3, p0, LUH;->d:[LaI;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 21
    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    .line 22
    invoke-static {v4, v3}, LSG;->b(ILZG;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 23
    :cond_3
    iget-object v1, p0, LUH;->e:[LaI;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 24
    :goto_1
    iget-object v1, p0, LUH;->e:[LaI;

    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 25
    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    const/4 v3, 0x3

    .line 26
    invoke-static {v3, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_5
    iget-object v1, p0, LUH;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const/4 v2, 0x4

    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, LSG;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_6
    iget-object v1, p0, LUH;->g:LOH;

    if-eqz v1, :cond_7

    const/4 v2, 0x5

    .line 30
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 5

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 32
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 33
    :cond_1
    iget-object v0, p0, LUH;->g:LOH;

    if-nez v0, :cond_2

    .line 34
    new-instance v0, LOH;

    invoke-direct {v0}, LOH;-><init>()V

    iput-object v0, p0, LUH;->g:LOH;

    .line 35
    :cond_2
    iget-object v0, p0, LUH;->g:LOH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p1}, LQG;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LUH;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 37
    :cond_4
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 38
    iget-object v1, p0, LUH;->e:[LaI;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 39
    new-array v3, v0, [LaI;

    if-eqz v1, :cond_6

    .line 40
    iget-object v4, p0, LUH;->e:[LaI;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_7

    .line 41
    new-instance v2, LaI;

    invoke-direct {v2}, LaI;-><init>()V

    aput-object v2, v3, v1

    .line 42
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 43
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 44
    :cond_7
    new-instance v0, LaI;

    invoke-direct {v0}, LaI;-><init>()V

    aput-object v0, v3, v1

    .line 45
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 46
    iput-object v3, p0, LUH;->e:[LaI;

    goto :goto_0

    .line 47
    :cond_8
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 48
    iget-object v1, p0, LUH;->d:[LaI;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 49
    new-array v3, v0, [LaI;

    if-eqz v1, :cond_a

    .line 50
    iget-object v4, p0, LUH;->d:[LaI;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_b

    .line 51
    new-instance v2, LaI;

    invoke-direct {v2}, LaI;-><init>()V

    aput-object v2, v3, v1

    .line 52
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 53
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 54
    :cond_b
    new-instance v0, LaI;

    invoke-direct {v0}, LaI;-><init>()V

    aput-object v0, v3, v1

    .line 55
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 56
    iput-object v3, p0, LUH;->d:[LaI;

    goto/16 :goto_0

    .line 57
    :cond_c
    iget-object v0, p0, LUH;->c:LRH;

    if-nez v0, :cond_d

    .line 58
    new-instance v0, LRH;

    invoke-direct {v0}, LRH;-><init>()V

    iput-object v0, p0, LUH;->c:LRH;

    .line 59
    :cond_d
    iget-object v0, p0, LUH;->c:LRH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    :cond_e
    :goto_5
    return-object p0
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LUH;->c:LRH;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LUH;->d:[LaI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, LUH;->d:[LaI;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 5
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 6
    invoke-virtual {p1, v3, v2}, LSG;->a(ILZG;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, LUH;->e:[LaI;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 8
    :goto_1
    iget-object v0, p0, LUH;->e:[LaI;

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
    iget-object v0, p0, LUH;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(IZ)V

    .line 13
    :cond_5
    iget-object v0, p0, LUH;->g:LOH;

    if-eqz v0, :cond_6

    const/4 v1, 0x5

    .line 14
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 15
    :cond_6
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
