.class public final Lcom/facebook/common/collectlite/ManagedLongArray;
.super Ljava/lang/Object;
.source "ManagedLongArray.java"


# static fields
.field private static final INNER_ARRAY_GROWTH_FACTOR:D = 1.8


# instance fields
.field mArray:[J

.field mLength:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mArray:[J

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    return-void
.end method

.method public static createWithInitialCapacity(I)Lcom/facebook/common/collectlite/ManagedLongArray;
    .locals 1

    .line 19
    new-instance v0, Lcom/facebook/common/collectlite/ManagedLongArray;

    invoke-direct {v0, p0}, Lcom/facebook/common/collectlite/ManagedLongArray;-><init>(I)V

    return-object v0
.end method

.method private growArrayIfNeeded()V
    .locals 6

    .line 74
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    iget-object v1, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mArray:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-double v2, v0

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 76
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 77
    new-array v0, v0, [J

    .line 78
    iget-object v1, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mArray:[J

    iget v2, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mArray:[J

    :cond_0
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/facebook/common/collectlite/ManagedLongArray;->growArrayIfNeeded()V

    .line 29
    iget-object v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mArray:[J

    iget v1, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    return-void
.end method

.method public get(I)J
    .locals 3

    if-ltz p1, :cond_0

    .line 33
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    if-ge p1, v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mArray:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds. Collection length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArrayCopy()[J
    .locals 4

    .line 62
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    new-array v1, v0, [J

    .line 63
    iget-object v2, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mArray:[J

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public indexOf(J)I
    .locals 4

    const/4 v0, 0x0

    .line 49
    :goto_0
    iget v1, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    if-ge v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mArray:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 45
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mLength:I

    return v0
.end method

.method public swapElements(II)V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/facebook/common/collectlite/ManagedLongArray;->mArray:[J

    aget-wide v1, v0, p1

    .line 69
    aget-wide v3, v0, p2

    aput-wide v3, v0, p1

    .line 70
    aput-wide v1, v0, p2

    return-void
.end method
