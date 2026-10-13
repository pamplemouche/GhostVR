.class public final LQG;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, LQG;->g:I

    const/16 v0, 0x40

    .line 3
    iput v0, p0, LQG;->i:I

    .line 4
    iput-object p1, p0, LQG;->a:[B

    .line 5
    iput p2, p0, LQG;->b:I

    add-int/2addr p3, p2

    .line 6
    iput p3, p0, LQG;->c:I

    .line 7
    iput p2, p0, LQG;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 15
    iget v0, p0, LQG;->e:I

    iget v1, p0, LQG;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget v0, p0, LQG;->f:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, LYG;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, LYG;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1
.end method

.method public a(LZG;)V
    .locals 3

    .line 4
    invoke-virtual {p0}, LQG;->f()I

    move-result v0

    .line 5
    iget v1, p0, LQG;->h:I

    iget v2, p0, LQG;->i:I

    if-ge v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, LQG;->b(I)I

    move-result v0

    .line 7
    iget v1, p0, LQG;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LQG;->h:I

    .line 8
    invoke-virtual {p1, p0}, LZG;->a(LQG;)LZG;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, LQG;->a(I)V

    .line 10
    iget p1, p0, LQG;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LQG;->h:I

    .line 11
    iput v0, p0, LQG;->g:I

    .line 12
    invoke-virtual {p0}, LQG;->i()V

    return-void

    .line 13
    :cond_0
    new-instance p1, LYG;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, v0}, LYG;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public b(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 2
    iget v0, p0, LQG;->e:I

    add-int/2addr p1, v0

    .line 3
    iget v0, p0, LQG;->g:I

    if-gt p1, v0, :cond_0

    .line 4
    iput p1, p0, LQG;->g:I

    .line 5
    invoke-virtual {p0}, LQG;->i()V

    return v0

    .line 6
    :cond_0
    invoke-static {}, LYG;->b()LYG;

    move-result-object p1

    throw p1

    .line 7
    :cond_1
    invoke-static {}, LYG;->a()LYG;

    move-result-object p1

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LQG;->f()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(I)V
    .locals 3

    .line 9
    iget v0, p0, LQG;->e:I

    iget v1, p0, LQG;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 10
    iput v1, p0, LQG;->e:I

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad position "

    invoke-static {v1, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, LQG;->e:I

    iget v2, p0, LQG;->b:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, LQG;->f()I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LcH;->b:[B

    return-object v0

    .line 3
    :cond_0
    iget v1, p0, LQG;->c:I

    iget v2, p0, LQG;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 4
    new-array v1, v0, [B

    .line 5
    iget-object v3, p0, LQG;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v2, p0, LQG;->e:I

    add-int/2addr v2, v0

    iput v2, p0, LQG;->e:I

    return-object v1

    .line 7
    :cond_1
    invoke-static {}, LYG;->b()LYG;

    move-result-object v0

    throw v0

    .line 8
    :cond_2
    invoke-static {}, LYG;->a()LYG;

    move-result-object v0

    throw v0
.end method

.method public d()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 1
    invoke-virtual {p0}, LQG;->e()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, LYG;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, LYG;-><init>(Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public d(I)Z
    .locals 4

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 4
    invoke-virtual {p0}, LQG;->e()B

    .line 5
    invoke-virtual {p0}, LQG;->e()B

    .line 6
    invoke-virtual {p0}, LQG;->e()B

    .line 7
    invoke-virtual {p0}, LQG;->e()B

    return v1

    .line 8
    :cond_0
    new-instance p1, LYG;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, LYG;-><init>(Ljava/lang/String;)V

    .line 9
    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 10
    :cond_2
    invoke-virtual {p0}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, v0}, LQG;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    .line 12
    invoke-virtual {p0, p1}, LQG;->a(I)V

    return v1

    .line 13
    :cond_4
    invoke-virtual {p0}, LQG;->f()I

    move-result p1

    invoke-virtual {p0, p1}, LQG;->e(I)V

    return v1

    .line 14
    :cond_5
    invoke-virtual {p0}, LQG;->e()B

    .line 15
    invoke-virtual {p0}, LQG;->e()B

    .line 16
    invoke-virtual {p0}, LQG;->e()B

    .line 17
    invoke-virtual {p0}, LQG;->e()B

    .line 18
    invoke-virtual {p0}, LQG;->e()B

    .line 19
    invoke-virtual {p0}, LQG;->e()B

    .line 20
    invoke-virtual {p0}, LQG;->e()B

    .line 21
    invoke-virtual {p0}, LQG;->e()B

    return v1

    .line 22
    :cond_6
    invoke-virtual {p0}, LQG;->f()I

    return v1
.end method

.method public e()B
    .locals 3

    .line 1
    iget v0, p0, LQG;->e:I

    iget v1, p0, LQG;->c:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LQG;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LQG;->e:I

    aget-byte v0, v1, v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, LYG;->b()LYG;

    move-result-object v0

    throw v0
.end method

.method public e(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 4
    iget v0, p0, LQG;->e:I

    add-int v1, v0, p1

    iget v2, p0, LQG;->g:I

    if-gt v1, v2, :cond_1

    .line 5
    iget v1, p0, LQG;->c:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    add-int/2addr v0, p1

    .line 6
    iput v0, p0, LQG;->e:I

    return-void

    .line 7
    :cond_0
    invoke-static {}, LYG;->b()LYG;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    .line 8
    invoke-virtual {p0, v2}, LQG;->e(I)V

    .line 9
    invoke-static {}, LYG;->b()LYG;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    invoke-static {}, LYG;->a()LYG;

    move-result-object p1

    throw p1
.end method

.method public f()I
    .locals 3

    .line 1
    invoke-virtual {p0}, LQG;->e()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 2
    invoke-virtual {p0}, LQG;->e()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, LQG;->e()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, LQG;->e()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, LQG;->e()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 6
    invoke-virtual {p0}, LQG;->e()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_5
    new-instance v0, LYG;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, LYG;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, LQG;->f()I

    move-result v0

    if-ltz v0, :cond_1

    .line 2
    iget v1, p0, LQG;->c:I

    iget v2, p0, LQG;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, LQG;->a:[B

    iget v3, p0, LQG;->e:I

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 4
    iget v2, p0, LQG;->e:I

    add-int/2addr v2, v0

    iput v2, p0, LQG;->e:I

    return-object v1

    .line 5
    :cond_0
    invoke-static {}, LYG;->b()LYG;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    invoke-static {}, LYG;->a()LYG;

    move-result-object v0

    throw v0
.end method

.method public h()I
    .locals 3

    .line 1
    iget v0, p0, LQG;->e:I

    iget v1, p0, LQG;->c:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput v2, p0, LQG;->f:I

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, LQG;->f()I

    move-result v0

    iput v0, p0, LQG;->f:I

    if-eqz v0, :cond_2

    return v0

    .line 4
    :cond_2
    new-instance v0, LYG;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, LYG;-><init>(Ljava/lang/String;)V

    .line 5
    throw v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget v0, p0, LQG;->c:I

    iget v1, p0, LQG;->d:I

    add-int/2addr v0, v1

    iput v0, p0, LQG;->c:I

    .line 2
    iget v1, p0, LQG;->g:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 3
    iput v1, p0, LQG;->d:I

    sub-int/2addr v0, v1

    .line 4
    iput v0, p0, LQG;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LQG;->d:I

    :goto_0
    return-void
.end method
