.class public Lcom/facebook/crudolib/text/CharArrays;
.super Ljava/lang/Object;
.source "CharArrays.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static indexOf([CIIC)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 11
    aget-char v0, p0, p1

    if-ne v0, p3, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([CII[C)I
    .locals 4

    :goto_0
    if-ge p1, p2, :cond_2

    .line 20
    array-length v0, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-char v2, p3, v1

    .line 21
    aget-char v3, p0, p1

    if-ne v3, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static invalidInt([CII)Ljava/lang/NumberFormatException;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid int: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static invalidLong([CII)Ljava/lang/NumberFormatException;
    .locals 3

    .line 150
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid long: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseInt([CIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    sub-int v0, p2, p1

    if-ltz p1, :cond_3

    .line 47
    array-length v1, p0

    if-gt p2, v1, :cond_3

    if-eqz v0, :cond_3

    .line 50
    aget-char v1, p0, p1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 v2, p1, 0x1

    if-eq v2, p2, :cond_1

    move p1, v2

    goto :goto_1

    .line 52
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/facebook/crudolib/text/CharArrays;->invalidInt([CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    .line 55
    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3, v1}, Lcom/facebook/crudolib/text/CharArrays;->parseInt([CIIIZ)I

    move-result p0

    return p0

    .line 48
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/facebook/crudolib/text/CharArrays;->invalidInt([CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method private static parseInt([CIIIZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 65
    div-int/2addr v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge p1, p2, :cond_3

    add-int/lit8 v2, p1, 0x1

    .line 68
    aget-char p1, p0, p1

    invoke-static {p1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    if-gt v0, v1, :cond_1

    mul-int v3, v1, p3

    sub-int p1, v3, p1

    if-gt p1, v1, :cond_0

    move v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v2

    .line 77
    invoke-static {p0, v2, p2}, Lcom/facebook/crudolib/text/CharArrays;->invalidInt([CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    :cond_1
    sub-int/2addr p2, v2

    .line 73
    invoke-static {p0, v2, p2}, Lcom/facebook/crudolib/text/CharArrays;->invalidInt([CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    :cond_2
    sub-int/2addr p2, v2

    .line 70
    invoke-static {p0, v2, p2}, Lcom/facebook/crudolib/text/CharArrays;->invalidInt([CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    :cond_3
    if-nez p4, :cond_5

    neg-int v1, v1

    if-ltz v1, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr p2, p1

    .line 84
    invoke-static {p0, p1, p2}, Lcom/facebook/crudolib/text/CharArrays;->invalidInt([CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_1
    return v1
.end method

.method public static parseLong([CIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p3, v0, :cond_4

    const/16 v0, 0x24

    if-gt p3, v0, :cond_4

    sub-int v0, p2, p1

    if-ltz p1, :cond_3

    .line 107
    array-length v1, p0

    if-gt p2, v1, :cond_3

    if-eqz v0, :cond_3

    .line 110
    aget-char v1, p0, p1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 v2, p1, 0x1

    if-eq v2, p2, :cond_1

    move p1, v2

    goto :goto_1

    .line 112
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/facebook/crudolib/text/CharArrays;->invalidLong([CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    .line 115
    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3, v1}, Lcom/facebook/crudolib/text/CharArrays;->parseLong([CIIIZ)J

    move-result-wide p0

    return-wide p0

    .line 108
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/facebook/crudolib/text/CharArrays;->invalidInt([CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    .line 103
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid radix: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseLong([CIIIZ)J
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    int-to-long v3, v2

    const-wide/high16 v5, -0x8000000000000000L

    .line 124
    div-long/2addr v5, v3

    move/from16 v9, p1

    const-wide/16 v10, 0x0

    :goto_0
    if-ge v9, v1, :cond_3

    add-int/lit8 v12, v9, 0x1

    .line 127
    aget-char v9, v0, v9

    invoke-static {v9, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    const/4 v13, -0x1

    if-eq v9, v13, :cond_2

    cmp-long v13, v5, v10

    if-gtz v13, :cond_1

    mul-long v13, v10, v3

    int-to-long v7, v9

    sub-long v7, v13, v7

    cmp-long v9, v7, v10

    if-gtz v9, :cond_0

    move-wide v10, v7

    move v9, v12

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v12

    .line 136
    invoke-static {p0, v12, v1}, Lcom/facebook/crudolib/text/CharArrays;->invalidLong([CII)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_1
    sub-int/2addr v1, v12

    .line 132
    invoke-static {p0, v12, v1}, Lcom/facebook/crudolib/text/CharArrays;->invalidLong([CII)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_2
    sub-int/2addr v1, v12

    .line 129
    invoke-static {p0, v12, v1}, Lcom/facebook/crudolib/text/CharArrays;->invalidLong([CII)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_3
    if-nez p4, :cond_5

    neg-long v10, v10

    const-wide/16 v2, 0x0

    cmp-long v4, v10, v2

    if-ltz v4, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr v1, v9

    .line 143
    invoke-static {p0, v9, v1}, Lcom/facebook/crudolib/text/CharArrays;->invalidLong([CII)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_1
    return-wide v10
.end method
