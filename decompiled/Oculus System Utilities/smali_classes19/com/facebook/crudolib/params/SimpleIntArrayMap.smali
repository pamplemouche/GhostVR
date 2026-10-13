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
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 24
    .local p0, "this":Lcom/facebook/crudolib/params/SimpleIntArrayMap;, "Lcom/facebook/crudolib/params/SimpleIntArrayMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-gtz p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive capacity not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    .line 29
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    .line 31
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 7
    .param p1, "requiredCapacity"    # I

    .prologue
    .local p0, "this":Lcom/facebook/crudolib/params/SimpleIntArrayMap;, "Lcom/facebook/crudolib/params/SimpleIntArrayMap<TK;>;"
    const/4 v6, 0x0

    .line 77
    iget-object v4, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    array-length v0, v4

    .line 78
    .local v0, "currentCapacity":I
    if-lt v0, p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    move v1, v0

    .line 82
    .local v1, "newCapacity":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 83
    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 85
    :cond_1
    new-array v2, v1, [Ljava/lang/Object;

    .line 86
    .local v2, "newKeys":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    iget v5, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object v2, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    .line 88
    new-array v3, v1, [I

    .line 89
    .local v3, "newValues":[I
    iget-object v4, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    iget v5, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object v3, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/facebook/crudolib/params/SimpleIntArrayMap;, "Lcom/facebook/crudolib/params/SimpleIntArrayMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 51
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    aget p2, v1, v0

    .line 54
    .end local p2    # "defaultValue":I
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

    .prologue
    .line 68
    .local p0, "this":Lcom/facebook/crudolib/params/SimpleIntArrayMap;, "Lcom/facebook/crudolib/params/SimpleIntArrayMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 68
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/facebook/crudolib/params/SimpleIntArrayMap;, "Lcom/facebook/crudolib/params/SimpleIntArrayMap<TK;>;"
    iget-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/facebook/crudolib/params/SimpleIntArrayMap;, "Lcom/facebook/crudolib/params/SimpleIntArrayMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 39
    .local v0, "existingIndex":I
    if-ltz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    aput p2, v1, v0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    iget v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->ensureCapacity(I)V

    .line 43
    iget-object v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mKeys:[Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    aput-object p1, v1, v2

    .line 44
    iget-object v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    iget v2, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    aput p2, v1, v2

    .line 45
    iget v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/facebook/crudolib/params/SimpleIntArrayMap;, "Lcom/facebook/crudolib/params/SimpleIntArrayMap<TK;>;"
    iget v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mSize:I

    return v0
.end method

.method public valueAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/facebook/crudolib/params/SimpleIntArrayMap;, "Lcom/facebook/crudolib/params/SimpleIntArrayMap<TK;>;"
    iget-object v0, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    aget v0, v0, p1

    return v0
.end method
