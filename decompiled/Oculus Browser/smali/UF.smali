.class public final LUF;
.super LhF;
.source "PG"

# interfaces
.implements LXF;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final z:LUF;


# instance fields
.field public x:[I

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LUF;

    invoke-direct {v0}, LUF;-><init>()V

    sput-object v0, LUF;->z:LUF;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, LhF;->w:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1
    invoke-direct {p0}, LhF;-><init>()V

    .line 2
    iput-object v0, p0, LUF;->x:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LUF;->y:I

    return-void
.end method

.method public constructor <init>([II)V
    .locals 0

    .line 4
    invoke-direct {p0}, LhF;-><init>()V

    .line 5
    iput-object p1, p0, LUF;->x:[I

    .line 6
    iput p2, p0, LUF;->y:I

    return-void
.end method


# virtual methods
.method public a(I)LXF;
    .locals 2

    .line 2
    iget v0, p0, LUF;->y:I

    if-lt p1, v0, :cond_0

    .line 3
    new-instance v0, LUF;

    iget-object v1, p0, LUF;->x:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, LUF;->y:I

    invoke-direct {v0, p1, v1}, LUF;-><init>([II)V

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
    invoke-virtual {p0, p1}, LUF;->a(I)LXF;

    move-result-object p1

    return-object p1
.end method

.method public final a(II)V
    .locals 4

    .line 5
    invoke-virtual {p0}, LhF;->a()V

    if-ltz p1, :cond_1

    .line 6
    iget v0, p0, LUF;->y:I

    if-gt p1, v0, :cond_1

    .line 7
    iget-object v1, p0, LUF;->x:[I

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
    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v1, p0, LUF;->x:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, LUF;->y:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput-object v0, p0, LUF;->x:[I

    .line 14
    :goto_0
    iget-object v0, p0, LUF;->x:[I

    aput p2, v0, p1

    .line 15
    iget p1, p0, LUF;->y:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LUF;->y:I

    .line 16
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 17
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, LUF;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, LUF;->a(II)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, LhF;->a()V

    if-eqz p1, :cond_4

    .line 2
    instance-of v0, p1, LUF;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, LhF;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    check-cast p1, LUF;

    .line 5
    iget v0, p1, LUF;->y:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 6
    iget v3, p0, LUF;->y:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 7
    iget-object v0, p0, LUF;->x:[I

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 8
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, LUF;->x:[I

    .line 9
    :cond_2
    iget-object v0, p1, LUF;->x:[I

    iget-object v2, p0, LUF;->x:[I

    iget v4, p0, LUF;->y:I

    iget p1, p1, LUF;->y:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput v3, p0, LUF;->y:I

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
    iget v0, p0, LUF;->y:I

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, LUF;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LUF;->b(I)V

    .line 2
    iget-object v0, p0, LUF;->x:[I

    aget p1, v0, p1

    return p1
.end method

.method public final d(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, LUF;->y:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LUF;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, LhF;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, LUF;

    .line 4
    iget v1, p0, LUF;->y:I

    iget v2, p1, LUF;->y:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    iget-object p1, p1, LUF;->x:[I

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, p0, LUF;->y:I

    if-ge v1, v2, :cond_4

    .line 7
    iget-object v2, p0, LUF;->x:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LUF;->b(I)V

    .line 2
    iget-object v0, p0, LUF;->x:[I

    aget p1, v0, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, LUF;->y:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, LUF;->x:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    .line 7
    invoke-virtual {p0}, LhF;->a()V

    .line 8
    invoke-virtual {p0, p1}, LUF;->b(I)V

    .line 9
    iget-object v0, p0, LUF;->x:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 10
    iget v3, p0, LUF;->y:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, LUF;->y:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LUF;->y:I

    .line 12
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, LhF;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, LUF;->y:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, LUF;->x:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, p0, LUF;->x:[I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, LUF;->y:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, LUF;->y:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, LUF;->y:I

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
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3
    invoke-virtual {p0}, LhF;->a()V

    .line 4
    invoke-virtual {p0, p1}, LUF;->b(I)V

    .line 5
    iget-object v0, p0, LUF;->x:[I

    aget v1, v0, p1

    .line 6
    aput p2, v0, p1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, LUF;->y:I

    return v0
.end method
