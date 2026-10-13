.class public abstract Lv4;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 11
    invoke-static {p1}, Lw4;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    .line 12
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lw4;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lo6;I)Landroid/graphics/Typeface;
.end method

.method public a(Landroid/content/Context;Le4;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 14

    move-object/from16 v0, p2

    move/from16 v1, p4

    .line 16
    iget-object v0, v0, Le4;->a:[Lf4;

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    const/16 v2, 0x190

    goto :goto_0

    :cond_0
    const/16 v2, 0x2bc

    :goto_0
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 17
    :goto_1
    array-length v6, v0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move-object v9, v7

    const/4 v8, 0x0

    const v10, 0x7fffffff

    :goto_2
    if-ge v8, v6, :cond_5

    aget-object v11, v0, v8

    .line 18
    iget v12, v11, Lf4;->b:I

    sub-int/2addr v12, v2

    .line 19
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    .line 20
    iget-boolean v13, v11, Lf4;->c:Z

    if-ne v13, v3, :cond_2

    const/4 v13, 0x0

    goto :goto_3

    :cond_2
    const/4 v13, 0x1

    :goto_3
    add-int/2addr v12, v13

    if-eqz v9, :cond_3

    if-le v10, v12, :cond_4

    :cond_3
    move-object v9, v11

    move v10, v12

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    if-nez v9, :cond_6

    return-object v7

    .line 21
    :cond_6
    iget v0, v9, Lf4;->f:I

    .line 22
    iget-object v2, v9, Lf4;->a:Ljava/lang/String;

    move-object v3, p1

    move-object/from16 v4, p3

    .line 23
    invoke-static {p1, v4, v0, v2, v1}, Lq4;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 1

    .line 6
    invoke-static {p1}, Lw4;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lw4;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method public a([Lo6;I)Lo6;
    .locals 10

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x2bc

    :goto_0
    and-int/lit8 p2, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 1
    array-length v4, p1

    const v5, 0x7fffffff

    move-object v5, v3

    const/4 v3, 0x0

    const v6, 0x7fffffff

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v7, p1, v3

    .line 2
    iget v8, v7, Lo6;->c:I

    sub-int/2addr v8, v0

    .line 3
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 4
    iget-boolean v9, v7, Lo6;->d:Z

    if-ne v9, p2, :cond_2

    const/4 v9, 0x0

    goto :goto_3

    :cond_2
    const/4 v9, 0x1

    :goto_3
    add-int/2addr v8, v9

    if-eqz v5, :cond_3

    if-le v6, v8, :cond_4

    :cond_3
    move-object v5, v7

    move v6, v8

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5
    :cond_5
    check-cast v5, Lo6;

    return-object v5
.end method
