.class public abstract LVy;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 28
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static a(LUR;Ljava/lang/String;)V
    .locals 10

    const-string v0, "\\."

    .line 1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    .line 3
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1}, LVy;->a(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {p0}, LFF;->g()V

    .line 5
    iget-object v4, p0, LFF;->x:LTF;

    check-cast v4, LVR;

    .line 6
    iget v5, v4, LVR;->z:I

    or-int/2addr v5, v3

    iput v5, v4, LVR;->z:I

    .line 7
    iput v1, v4, LVR;->A:I

    .line 8
    array-length v1, v0

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    .line 9
    aget-object v1, v0, v3

    invoke-static {v1}, LVy;->a(Ljava/lang/String;)I

    move-result v1

    .line 10
    invoke-virtual {p0}, LFF;->g()V

    .line 11
    iget-object v5, p0, LFF;->x:LTF;

    check-cast v5, LVR;

    .line 12
    iget v6, v5, LVR;->z:I

    or-int/2addr v6, v4

    iput v6, v5, LVR;->z:I

    .line 13
    iput v1, v5, LVR;->B:I

    .line 14
    array-length v1, v0

    const/4 v5, 0x3

    if-lt v1, v5, :cond_1

    .line 15
    aget-object v1, v0, v4

    invoke-static {v1}, LVy;->a(Ljava/lang/String;)I

    move-result v1

    .line 16
    invoke-virtual {p0}, LFF;->g()V

    .line 17
    iget-object v4, p0, LFF;->x:LTF;

    check-cast v4, LVR;

    .line 18
    iget v6, v4, LVR;->z:I

    const/4 v7, 0x4

    or-int/2addr v6, v7

    iput v6, v4, LVR;->z:I

    .line 19
    iput v1, v4, LVR;->C:I

    .line 20
    array-length v1, v0

    if-lt v1, v7, :cond_1

    .line 21
    aget-object v0, v0, v5

    invoke-static {v0}, LVy;->a(Ljava/lang/String;)I

    move-result v0

    .line 22
    invoke-virtual {p0}, LFF;->g()V

    .line 23
    iget-object p0, p0, LFF;->x:LTF;

    check-cast p0, LVR;

    .line 24
    iget v1, p0, LVR;->z:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, LVR;->z:I

    .line 25
    iput v0, p0, LVR;->D:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v6, p0

    new-array v9, v3, [Ljava/lang/Object;

    aput-object p1, v9, v2

    const/4 v4, 0x5

    const/4 v8, 0x0

    const-string v5, "Utils"

    const-string v7, "Invalid int value while parsing string version: %s"

    .line 26
    invoke-static/range {v4 .. v9}, Lhy;->a(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "Invalid format while parsing string version: %s"

    .line 27
    invoke-static {p0, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Utils"

    invoke-static {v0, p0, p1}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
