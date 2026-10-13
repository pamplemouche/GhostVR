.class public Lcom/facebook/crudolib/text/CharArrayBuffers;
.super Ljava/lang/Object;
.source "CharArrayBuffers.java"


# static fields
.field static final MINIMUM_CAPACITY_ON_GROWTH:I = 0x10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Landroid/database/CharArrayBuffer;C)V
    .locals 3

    .line 120
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/crudolib/text/CharArrayBuffers;->ensureCapacity(Landroid/database/CharArrayBuffer;I)V

    .line 121
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget v1, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    aput-char p1, v0, v1

    return-void
.end method

.method public static append(Landroid/database/CharArrayBuffer;[CII)V
    .locals 2

    .line 125
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    add-int/2addr v0, p3

    invoke-static {p0, v0}, Lcom/facebook/crudolib/text/CharArrayBuffers;->ensureCapacity(Landroid/database/CharArrayBuffer;I)V

    .line 126
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget v1, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget p1, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return-void
.end method

.method public static contains(Landroid/database/CharArrayBuffer;Ljava/lang/String;)Z
    .locals 5

    .line 55
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p0, p1, v3, v4}, Lcom/facebook/crudolib/text/CharArrayBuffers;->equalsN(Landroid/database/CharArrayBuffer;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static convertToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget p0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copy(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)V
    .locals 4

    .line 104
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {p1, v0}, Lcom/facebook/crudolib/text/CharArrayBuffers;->ensureCapacity(Landroid/database/CharArrayBuffer;I)V

    .line 105
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget v2, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget p0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    iput p0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return-void
.end method

.method public static copy([CILandroid/database/CharArrayBuffer;I)V
    .locals 2

    .line 114
    invoke-static {p2, p3}, Lcom/facebook/crudolib/text/CharArrayBuffers;->ensureCapacity(Landroid/database/CharArrayBuffer;I)V

    .line 115
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iput p3, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return-void
.end method

.method private static currentCapacity(Landroid/database/CharArrayBuffer;)I
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/database/CharArrayBuffer;->data:[C

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static endsWith(Landroid/database/CharArrayBuffer;Ljava/lang/String;)Z
    .locals 2

    .line 33
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/crudolib/text/CharArrayBuffers;->equalsN(Landroid/database/CharArrayBuffer;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static ensureCapacity(Landroid/database/CharArrayBuffer;I)V
    .locals 3

    .line 131
    invoke-static {p0}, Lcom/facebook/crudolib/text/CharArrayBuffers;->currentCapacity(Landroid/database/CharArrayBuffer;)I

    move-result v0

    if-ge v0, p1, :cond_1

    const/16 v1, 0x10

    .line 133
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-array p1, v0, [C

    .line 138
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget v1, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iput-object p1, p0, Landroid/database/CharArrayBuffer;->data:[C

    :cond_1
    return-void
.end method

.method public static equals(Landroid/database/CharArrayBuffer;Ljava/lang/String;)Z
    .locals 3

    .line 46
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 49
    :cond_0
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {p0, p1, v2, v0}, Lcom/facebook/crudolib/text/CharArrayBuffers;->equalsN(Landroid/database/CharArrayBuffer;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static equalsIgnoreCase(Landroid/database/CharArrayBuffer;Ljava/lang/String;)Z
    .locals 3

    .line 79
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 82
    :cond_0
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {p0, p1, v2, v0}, Lcom/facebook/crudolib/text/CharArrayBuffers;->equalsNIgnoreCase(Landroid/database/CharArrayBuffer;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static equalsN(Landroid/database/CharArrayBuffer;Ljava/lang/String;II)Z
    .locals 4

    .line 69
    iget-object p0, p0, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 71
    aget-char v2, p0, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static equalsNIgnoreCase(Landroid/database/CharArrayBuffer;Ljava/lang/String;II)Z
    .locals 4

    .line 90
    iget-object p0, p0, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 92
    aget-char v2, p0, v1

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 94
    invoke-static {v2}, Lcom/facebook/crudolib/text/CasingUtil;->foldCase(C)C

    move-result v2

    invoke-static {v3}, Lcom/facebook/crudolib/text/CasingUtil;->foldCase(C)C

    move-result v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static startsWith(Landroid/database/CharArrayBuffer;Ljava/lang/String;)Z
    .locals 3

    .line 23
    iget v0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v2, v0}, Lcom/facebook/crudolib/text/CharArrayBuffers;->equalsN(Landroid/database/CharArrayBuffer;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method
