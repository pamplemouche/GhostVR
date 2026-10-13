.class public final Lcom/facebook/common/collectlite/ManagedIntArray;
.super Ljava/lang/Object;
.source "ManagedIntArray.java"


# static fields
.field private static final INNER_ARRAY_GROWTH_FACTOR:D = 1.8


# instance fields
.field mArray:[I

.field mLength:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    return-void
.end method

.method public static createWithInitialCapacity(I)Lcom/facebook/common/collectlite/ManagedIntArray;
    .locals 1

    .line 17
    new-instance v0, Lcom/facebook/common/collectlite/ManagedIntArray;

    invoke-direct {v0, p0}, Lcom/facebook/common/collectlite/ManagedIntArray;-><init>(I)V

    return-object v0
.end method

.method private growArrayIfNeeded()V
    .locals 6

    .line 85
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    iget-object v1, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-double v2, v0

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 87
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 88
    new-array v0, v0, [I

    .line 89
    iget-object v1, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    iget v2, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    .line 26
    invoke-direct {p0}, Lcom/facebook/common/collectlite/ManagedIntArray;->growArrayIfNeeded()V

    .line 27
    iget-object v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    iget v1, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    return-void
.end method

.method public get(I)I
    .locals 3

    if-ltz p1, :cond_0

    .line 31
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    if-ge p1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    aget p1, v0, p1

    return p1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds. Collection length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArrayCopy()[I
    .locals 4

    .line 60
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    new-array v1, v0, [I

    .line 61
    iget-object v2, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget v1, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

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

    .line 43
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

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

    .line 39
    iget v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    return v0
.end method

.method public swapElements(II)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    aget v1, v0, p1

    .line 67
    aget v2, v0, p2

    aput v2, v0, p1

    .line 68
    aput v1, v0, p2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/common/collectlite/ManagedIntArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/ManagedIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, ","

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/ManagedIntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
