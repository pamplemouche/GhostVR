.class public Lcom/facebook/thecount/runtime/Enum;
.super Ljava/lang/Object;
.source "Enum.java"


# direct methods
.method protected static $values(I)[Ljava/lang/Integer;
    .locals 3
    .param p0, "length"    # I

    .prologue
    .line 61
    new-array v1, p0, [Ljava/lang/Integer;

    .line 62
    .local v1, "result":[Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(I)Ljava/lang/Object;
    .locals 1
    .param p0, "this$"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public static compareTo(II)I
    .locals 1
    .param p0, "this$"    # I
    .param p1, "that"    # I

    .prologue
    const/4 v0, -0x1

    .line 40
    if-ne p0, v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43
    :cond_0
    if-le p0, p1, :cond_2

    .line 44
    const/4 v0, 0x1

    .line 48
    :cond_1
    :goto_0
    return v0

    .line 45
    :cond_2
    if-lt p0, p1, :cond_1

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doubleEquals(II)Z
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 69
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(II)Z
    .locals 1
    .param p0, "this$"    # I
    .param p1, "that"    # I

    .prologue
    .line 19
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static finalize(I)V
    .locals 1
    .param p0, "this$"    # I

    .prologue
    .line 55
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method public static hashCode(I)I
    .locals 1
    .param p0, "this$"    # I

    .prologue
    .line 26
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29
    :cond_0
    return p0
.end method

.method public static ordinal(I)I
    .locals 1
    .param p0, "this$"    # I

    .prologue
    .line 10
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13
    :cond_0
    return p0
.end method
