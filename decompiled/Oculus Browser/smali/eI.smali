.class public final LeI;
.super LTG;
.source "PG"


# instance fields
.field public c:[LfI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    .line 2
    invoke-static {}, LfI;->c()[LfI;

    move-result-object v0

    iput-object v0, p0, LeI;->c:[LfI;

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
    .locals 4

    .line 6
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 7
    iget-object v1, p0, LeI;->c:[LfI;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, LeI;->c:[LfI;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 9
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 10
    invoke-static {v3, v2}, LSG;->b(ILZG;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 5

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 12
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 13
    :cond_1
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 14
    iget-object v1, p0, LeI;->c:[LfI;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 15
    new-array v3, v0, [LfI;

    if-eqz v1, :cond_3

    .line 16
    iget-object v4, p0, LeI;->c:[LfI;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 17
    new-instance v2, LfI;

    invoke-direct {v2}, LfI;-><init>()V

    aput-object v2, v3, v1

    .line 18
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 19
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_4
    new-instance v0, LfI;

    invoke-direct {v0}, LfI;-><init>()V

    aput-object v0, v3, v1

    .line 21
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 22
    iput-object v3, p0, LeI;->c:[LfI;

    goto :goto_0

    :cond_5
    :goto_3
    return-object p0
.end method

.method public a(LSG;)V
    .locals 3

    .line 1
    iget-object v0, p0, LeI;->c:[LfI;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LeI;->c:[LfI;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v1}, LSG;->a(ILZG;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
