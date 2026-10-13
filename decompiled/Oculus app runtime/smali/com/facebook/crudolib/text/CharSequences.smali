.class public Lcom/facebook/crudolib/text/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5

    .line 54
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, p1, v3, v4}, Lcom/facebook/crudolib/text/CharSequences;->equalsN(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 2

    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/crudolib/text/CharSequences;->equalsN(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 36
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/facebook/crudolib/text/CharSequences;->subsequenceEquals(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 77
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/facebook/crudolib/text/CharSequences;->subsequenceEqualsIgnoreCase(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static equalsN(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 69
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

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

.method private static equalsNIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 98
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 99
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 100
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

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3

    .line 13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v2, v0}, Lcom/facebook/crudolib/text/CharSequences;->equalsN(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public static subsequenceEquals(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Z
    .locals 1

    sub-int/2addr p2, p1

    .line 45
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_0
    invoke-static {p0, p3, p1, p2}, Lcom/facebook/crudolib/text/CharSequences;->equalsN(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public static subsequenceEqualsIgnoreCase(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Z
    .locals 1

    sub-int/2addr p2, p1

    .line 86
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_0
    invoke-static {p0, p3, p1, p2}, Lcom/facebook/crudolib/text/CharSequences;->equalsNIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method
