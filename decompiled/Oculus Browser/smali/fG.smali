.class public final LfG;
.super LhF;
.source "PG"

# interfaces
.implements LaG;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final z:LfG;


# instance fields
.field public x:[J

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LfG;

    invoke-direct {v0}, LfG;-><init>()V

    sput-object v0, LfG;->z:LfG;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, LhF;->w:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 1
    invoke-direct {p0}, LhF;-><init>()V

    .line 2
    iput-object v0, p0, LfG;->x:[J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LfG;->y:I

    return-void
.end method

.method public constructor <init>([JI)V
    .locals 0

    .line 4
    invoke-direct {p0}, LhF;-><init>()V

    .line 5
    iput-object p1, p0, LfG;->x:[J

    .line 6
    iput p2, p0, LfG;->y:I

    return-void
.end method


# virtual methods
.method public a(I)LaG;
    .locals 2

    .line 2
    iget v0, p0, LfG;->y:I

    if-lt p1, v0, :cond_0

    .line 3
    new-instance v0, LfG;

    iget-object v1, p0, LfG;->x:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, LfG;->y:I

    invoke-direct {v0, p1, v1}, LfG;-><init>([JI)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic a(I)LbG;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LfG;->a(I)LaG;

    move-result-object p1

    return-object p1
.end method

.method public final a(IJ)V
    .locals 4

    .line 5
    invoke-virtual {p0}, LhF;->a()V

    if-ltz p1, :cond_1

    .line 6
    iget v0, p0, LfG;->y:I

    if-gt p1, v0, :cond_1

    .line 7
    iget-object v1, p0, LfG;->x:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 8
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 9
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 10
    new-array v0, v0, [J

    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v1, p0, LfG;->x:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, LfG;->y:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput-object v0, p0, LfG;->x:[J

    .line 14
    :goto_0
    iget-object v0, p0, LfG;->x:[J

    aput-wide p2, v0, p1

    .line 15
    iget p1, p0, LfG;->y:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LfG;->y:I

    .line 16
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 17
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, LfG;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(ILjava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, LfG;->a(IJ)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, LhF;->a()V

    if-eqz p1, :cond_4

    .line 2
    instance-of v0, p1, LfG;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, LhF;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    check-cast p1, LfG;

    .line 5
    iget v0, p1, LfG;->y:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 6
    iget v3, p0, LfG;->y:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 7
    iget-object v0, p0, LfG;->x:[J

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 8
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, LfG;->x:[J

    .line 9
    :cond_2
    iget-object v0, p1, LfG;->x:[J

    iget-object v2, p0, LfG;->x:[J

    iget v4, p0, LfG;->y:I

    iget p1, p1, LfG;->y:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput v3, p0, LfG;->y:I

    .line 11
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 13
    throw p1
.end method

.method public final b(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, LfG;->y:I

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, LfG;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, LfG;->y:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LfG;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, LhF;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, LfG;

    .line 4
    iget v1, p0, LfG;->y:I

    iget v2, p1, LfG;->y:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    iget-object p1, p1, LfG;->x:[J

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, p0, LfG;->y:I

    if-ge v1, v2, :cond_4

    .line 7
    iget-object v2, p0, LfG;->x:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, LfG;->b(I)V

    .line 2
    iget-object v0, p0, LfG;->x:[J

    aget-wide v1, v0, p1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, LfG;->y:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, LfG;->x:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, LcG;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5

    .line 7
    invoke-virtual {p0}, LhF;->a()V

    .line 8
    invoke-virtual {p0, p1}, LfG;->b(I)V

    .line 9
    iget-object v0, p0, LfG;->x:[J

    aget-wide v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 10
    iget v4, p0, LfG;->y:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, LfG;->y:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LfG;->y:I

    .line 12
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, LhF;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, LfG;->y:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, LfG;->x:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, p0, LfG;->x:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, LfG;->y:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, LfG;->y:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, LfG;->y:I

    .line 6
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, LhF;->a()V

    .line 4
    invoke-virtual {p0, p1}, LfG;->b(I)V

    .line 5
    iget-object p2, p0, LfG;->x:[J

    aget-wide v2, p2, p1

    .line 6
    aput-wide v0, p2, p1

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, LfG;->y:I

    return v0
.end method
