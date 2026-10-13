.class Lcom/facebook/crudolib/params/SimpleIntArrayMap;
.super Ljava/lang/Object;
.source "SimpleIntArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mKeys:[Ljava/lang/Object;

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 28
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    .line 29
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-positive capacity not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureCapacity(I)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    array-length v0, v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 85
    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object p1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    .line 88
    new-array p1, v0, [I

    .line 89
    iget-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    iget v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object p1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 52
    iget-object p2, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    aget p1, p2, p1

    return p1

    :cond_0
    return p2
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    :goto_0
    iget v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 40
    iget-object p1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    aput p2, p1, v0

    goto :goto_0

    .line 42
    :cond_0
    iget v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->ensureCapacity(I)V

    .line 43
    iget-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    aput-object p1, v0, v1

    .line 44
    iget-object p1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 45
    iput v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    return v0
.end method

.method public valueAt(I)I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    aget p1, v0, p1

    return p1
.end method
