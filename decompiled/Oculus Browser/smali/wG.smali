.class public final LwG;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final f:LwG;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LwG;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, LwG;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, LwG;->f:LwG;

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LwG;->d:I

    .line 3
    iput p1, p0, LwG;->a:I

    .line 4
    iput-object p2, p0, LwG;->b:[I

    .line 5
    iput-object p3, p0, LwG;->c:[Ljava/lang/Object;

    .line 6
    iput-boolean p4, p0, LwG;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    .line 29
    iget v0, p0, LwG;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    :goto_0
    iget v2, p0, LwG;->a:I

    if-ge v0, v2, :cond_6

    .line 31
    iget-object v2, p0, LwG;->b:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 32
    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, LxF;->f(II)I

    move-result v2

    goto :goto_1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, LdG;->a()LdG;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 34
    :cond_2
    invoke-static {v3}, LxF;->f(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, LwG;

    .line 35
    invoke-virtual {v3}, LwG;->a()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_2

    .line 36
    :cond_3
    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, LrF;

    invoke-static {v3, v2}, LxF;->b(ILrF;)I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    goto :goto_2

    .line 37
    :cond_4
    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 38
    invoke-static {v3}, LxF;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    goto :goto_2

    .line 39
    :cond_5
    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 40
    invoke-static {v3}, LxF;->f(I)I

    move-result v2

    invoke-static {v4, v5}, LxF;->c(J)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_6
    iput v1, p0, LwG;->d:I

    return v1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    .line 42
    iget v0, p0, LwG;->a:I

    iget-object v1, p0, LwG;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    .line 43
    :goto_0
    iget v1, p0, LwG;->a:I

    add-int/2addr v1, v0

    .line 44
    iget-object v0, p0, LwG;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, LwG;->b:[I

    .line 45
    iget-object v0, p0, LwG;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LwG;->c:[Ljava/lang/Object;

    .line 46
    :cond_1
    iget-object v0, p0, LwG;->b:[I

    iget v1, p0, LwG;->a:I

    aput p1, v0, v1

    .line 47
    iget-object p1, p0, LwG;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 48
    iput v1, p0, LwG;->a:I

    return-void
.end method

.method public a(LxF;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    :goto_0
    iget v2, p0, LwG;->a:I

    if-ge v1, v2, :cond_5

    .line 18
    iget-object v2, p0, LwG;->b:[I

    aget v2, v2, v1

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    .line 19
    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v3, v2}, LxF;->a(II)V

    goto :goto_1

    .line 20
    :cond_0
    invoke-static {}, LdG;->a()LdG;

    move-result-object p1

    throw p1

    .line 21
    :cond_1
    invoke-virtual {p1, v3, v4}, LxF;->c(II)V

    .line 22
    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, LwG;

    invoke-virtual {v2, p1}, LwG;->a(LxF;)V

    const/4 v2, 0x4

    .line 23
    invoke-virtual {p1, v3, v2}, LxF;->c(II)V

    goto :goto_1

    .line 24
    :cond_2
    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, LrF;

    invoke-virtual {p1, v3, v2}, LxF;->a(ILrF;)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, LxF;->a(IJ)V

    goto :goto_1

    .line 26
    :cond_4
    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, p1

    check-cast v2, LvF;

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v0

    .line 27
    invoke-virtual {v2, v3}, LvF;->c(I)V

    .line 28
    invoke-virtual {v2, v4, v5}, LvF;->b(J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(ILtF;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, LwG;->e:Z

    if-eqz v0, :cond_8

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, LtF;->i()I

    move-result p2

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LwG;->a(ILjava/lang/Object;)V

    return v2

    .line 4
    :cond_0
    invoke-static {}, LdG;->a()LdG;

    move-result-object p1

    throw p1

    :cond_1
    return v3

    .line 5
    :cond_2
    new-instance v1, LwG;

    const/16 v6, 0x8

    new-array v7, v6, [I

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    invoke-direct {v1, v3, v7, v6, v2}, LwG;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 7
    :cond_3
    invoke-virtual {p2}, LtF;->p()I

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v1, v3, p2}, LwG;->a(ILtF;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    shl-int/2addr v0, v5

    or-int/2addr v0, v4

    .line 9
    invoke-virtual {p2, v0}, LtF;->a(I)V

    .line 10
    invoke-virtual {p0, p1, v1}, LwG;->a(ILjava/lang/Object;)V

    return v2

    .line 11
    :cond_5
    invoke-virtual {p2}, LtF;->c()LrF;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LwG;->a(ILjava/lang/Object;)V

    return v2

    .line 12
    :cond_6
    invoke-virtual {p2}, LtF;->j()J

    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LwG;->a(ILjava/lang/Object;)V

    return v2

    .line 14
    :cond_7
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LwG;->a(ILjava/lang/Object;)V

    return v2

    .line 16
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, LwG;

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, LwG;

    .line 3
    iget v2, p0, LwG;->a:I

    iget v3, p1, LwG;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, LwG;->b:[I

    iget-object v3, p1, LwG;->b:[I

    .line 4
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, LwG;->c:[Ljava/lang/Object;

    iget-object p1, p1, LwG;->c:[Ljava/lang/Object;

    .line 5
    invoke-static {v2, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, LwG;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, LwG;->b:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, LwG;->c:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
