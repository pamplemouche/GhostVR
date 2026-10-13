.class public abstract LXe1;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static varargs a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;
    .locals 11

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2
    iget-object v4, v3, LWe1;->w:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, LWe1;->z:I

    .line 3
    iget-object v5, v3, LWe1;->x:Ljava/lang/String;

    iget-object v6, v3, LWe1;->w:Ljava/lang/String;

    .line 4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    .line 5
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, LWe1;->A:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, -0x1

    if-ge v3, v2, :cond_2

    aget-object v6, p1, v3

    .line 9
    iget v7, v6, LWe1;->z:I

    if-eq v7, v5, :cond_1

    iget v8, v6, LWe1;->A:I

    if-eq v8, v5, :cond_1

    if-lt v7, v4, :cond_1

    .line 10
    invoke-virtual {v0, p0, v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 11
    iget v4, v6, LWe1;->z:I

    iget-object v5, v6, LWe1;->w:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iput v4, v6, LWe1;->z:I

    .line 13
    iget v4, v6, LWe1;->A:I

    invoke-virtual {v0, p0, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 14
    iget v4, v6, LWe1;->A:I

    iget-object v5, v6, LWe1;->x:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iput v5, v6, LWe1;->A:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_1
    iput v5, v6, LWe1;->z:I

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    iget-object v0, v6, LWe1;->w:Ljava/lang/String;

    aput-object v0, p1, v1

    iget-object v0, v6, LWe1;->x:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v0, 0x2

    aput-object p0, p1, v0

    const-string p0, "Input string is missing tags %s%s: %s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p0, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 20
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 21
    array-length v0, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    .line 22
    iget v4, v3, LWe1;->z:I

    if-eq v4, v5, :cond_5

    iget-object v4, v3, LWe1;->y:[Ljava/lang/Object;

    if-eqz v4, :cond_5

    array-length v6, v4

    if-nez v6, :cond_3

    goto :goto_5

    .line 23
    :cond_3
    array-length v6, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, v4, v7

    if-nez v8, :cond_4

    goto :goto_4

    .line 24
    :cond_4
    iget v9, v3, LWe1;->z:I

    iget v10, v3, LWe1;->A:I

    invoke-virtual {p0, v8, v9, v10, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-object p0
.end method
