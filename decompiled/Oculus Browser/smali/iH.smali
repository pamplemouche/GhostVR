.class public final LiH;
.super LTG;
.source "PG"


# instance fields
.field public c:LqI;

.field public d:LCH;

.field public e:LhH;

.field public f:[LAH;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LiH;->c:LqI;

    .line 3
    iput-object v0, p0, LiH;->d:LCH;

    .line 4
    iput-object v0, p0, LiH;->e:LhH;

    .line 5
    invoke-static {}, LAH;->c()[LAH;

    move-result-object v1

    iput-object v1, p0, LiH;->f:[LAH;

    .line 6
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 12
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 13
    iget-object v1, p0, LiH;->c:LqI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 14
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, LiH;->d:LCH;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 16
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_1
    iget-object v1, p0, LiH;->e:LhH;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 18
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_2
    iget-object v1, p0, LiH;->f:[LAH;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, LiH;->f:[LAH;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 21
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 22
    invoke-static {v3, v2}, LSG;->b(ILZG;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
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

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 24
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 25
    :cond_1
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 26
    iget-object v1, p0, LiH;->f:[LAH;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 27
    new-array v3, v0, [LAH;

    if-eqz v1, :cond_3

    .line 28
    iget-object v4, p0, LiH;->f:[LAH;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 29
    new-instance v2, LAH;

    invoke-direct {v2}, LAH;-><init>()V

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
    new-instance v0, LAH;

    invoke-direct {v0}, LAH;-><init>()V

    aput-object v0, v3, v1

    .line 33
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 34
    iput-object v3, p0, LiH;->f:[LAH;

    goto :goto_0

    .line 35
    :cond_5
    iget-object v0, p0, LiH;->e:LhH;

    if-nez v0, :cond_6

    .line 36
    new-instance v0, LhH;

    invoke-direct {v0}, LhH;-><init>()V

    iput-object v0, p0, LiH;->e:LhH;

    .line 37
    :cond_6
    iget-object v0, p0, LiH;->e:LhH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 38
    :cond_7
    iget-object v0, p0, LiH;->d:LCH;

    if-nez v0, :cond_8

    .line 39
    new-instance v0, LCH;

    invoke-direct {v0}, LCH;-><init>()V

    iput-object v0, p0, LiH;->d:LCH;

    .line 40
    :cond_8
    iget-object v0, p0, LiH;->d:LCH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 41
    :cond_9
    iget-object v0, p0, LiH;->c:LqI;

    if-nez v0, :cond_a

    .line 42
    new-instance v0, LqI;

    invoke-direct {v0}, LqI;-><init>()V

    iput-object v0, p0, LiH;->c:LqI;

    .line 43
    :cond_a
    iget-object v0, p0, LiH;->c:LqI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    :cond_b
    :goto_3
    return-object p0
.end method

.method public a(LSG;)V
    .locals 3

    .line 1
    iget-object v0, p0, LiH;->c:LqI;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LiH;->d:LCH;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 5
    :cond_1
    iget-object v0, p0, LiH;->e:LhH;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LiH;->f:[LAH;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, LiH;->f:[LAH;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 9
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p1, v2, v1}, LSG;->a(ILZG;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_4
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
