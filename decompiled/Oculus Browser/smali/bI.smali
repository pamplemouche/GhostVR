.class public final LbI;
.super LTG;
.source "PG"


# instance fields
.field public c:Ljava/lang/Integer;

.field public d:[LdI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LbI;->c:Ljava/lang/Integer;

    .line 3
    invoke-static {}, LdI;->c()[LdI;

    move-result-object v1

    iput-object v1, p0, LbI;->d:[LdI;

    .line 4
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 8
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 9
    iget-object v1, p0, LbI;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 11
    :cond_0
    iget-object v1, p0, LbI;->d:[LdI;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, LbI;->d:[LdI;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 13
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 14
    invoke-static {v3, v2}, LSG;->b(ILZG;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 5

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 16
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 17
    :cond_1
    invoke-static {p1, v1}, LcH;->a(LQG;I)I

    move-result v0

    .line 18
    iget-object v1, p0, LbI;->d:[LdI;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 19
    new-array v3, v0, [LdI;

    if-eqz v1, :cond_3

    .line 20
    iget-object v4, p0, LbI;->d:[LdI;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 21
    new-instance v2, LdI;

    invoke-direct {v2}, LdI;-><init>()V

    aput-object v2, v3, v1

    .line 22
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, LQG;->a(LZG;)V

    .line 23
    invoke-virtual {p1}, LQG;->h()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_4
    new-instance v0, LdI;

    invoke-direct {v0}, LdI;-><init>()V

    aput-object v0, v3, v1

    .line 25
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    .line 26
    iput-object v3, p0, LbI;->d:[LdI;

    goto :goto_0

    .line 27
    :cond_5
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LbI;->c:Ljava/lang/Integer;

    goto :goto_0

    :cond_6
    :goto_3
    return-object p0
.end method

.method public a(LSG;)V
    .locals 3

    .line 1
    iget-object v0, p0, LbI;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 3
    :cond_0
    iget-object v0, p0, LbI;->d:[LdI;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, LbI;->d:[LdI;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 5
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p1, v2, v1}, LSG;->a(ILZG;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
