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


# virtual methods
.method public get(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 51
    if-ltz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->mValues:[I

    aget p2, v1, v0

    .line 54
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
    const/4 v0, 0x0

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
    :goto_1
    return v0

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
