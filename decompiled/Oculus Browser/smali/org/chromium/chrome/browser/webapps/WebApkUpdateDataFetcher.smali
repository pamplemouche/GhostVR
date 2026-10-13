.class public Lorg/chromium/chrome/browser/webapps/WebApkUpdateDataFetcher;
.super LSG0;
.source "PG"


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public onDataAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[Ljava/lang/String;IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 10

    move-object/from16 v0, p12

    .line 1
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    move-object v7, p5

    .line 4
    invoke-virtual {v6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v5, p6

    move-object/from16 v8, p9

    goto :goto_1

    :cond_0
    move-object/from16 v8, p9

    .line 5
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v5, p10

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static/range {p19 .. p19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    new-instance v0, LgP0;

    invoke-direct {v0}, LgP0;-><init>()V

    .line 9
    :goto_2
    invoke-static {v1}, LPf1;->a(Landroid/content/Context;)I

    .line 10
    throw v5
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method
