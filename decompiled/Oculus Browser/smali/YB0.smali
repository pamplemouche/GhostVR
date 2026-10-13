.class public abstract LYB0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/util/Map;


# direct methods
.method public static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f13067a

    return p0

    :cond_1
    const p0, 0x7f13067c

    return p0

    :cond_2
    const p0, 0x7f130677

    return p0
.end method

.method public static a(IZ)I
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p0}, LYB0;->c(I)LXB0;

    move-result-object p0

    .line 6
    iget-object p0, p0, LXB0;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, LYB0;->c(I)LXB0;

    move-result-object p0

    .line 8
    iget-object p0, p0, LXB0;->e:Ljava/lang/Integer;

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, LYB0;->a(I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Integer;)I
    .locals 1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f13069d

    return p0

    :cond_1
    const p0, 0x7f13069b

    return p0
.end method

.method public static a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {p0}, LYB0;->b(I)I

    move-result p0

    invoke-static {p1, p0}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const v0, 0x7f060154

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method public static b(I)I
    .locals 0

    .line 1
    invoke-static {p0}, LYB0;->c(I)LXB0;

    move-result-object p0

    .line 2
    iget p0, p0, LXB0;->a:I

    return p0
.end method

.method public static c(I)LXB0;
    .locals 22

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LYB0;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x1a

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f0802f2

    const v4, 0x7f13013c

    const v5, 0x7f13013c

    const/4 v11, 0x1

    .line 5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x2

    .line 6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x7f130675

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 7
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f080242

    const v4, 0x7f13018a

    const v5, 0x7f13018a

    const/4 v13, 0x3

    .line 9
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 10
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f13067a

    const/16 v21, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 11
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x17

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f0802bc

    const v4, 0x7f13018b

    const v5, 0x7f13018b

    .line 13
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 14
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f13067b

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 15
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f08029d

    const v4, 0x7f13018d

    const v5, 0x7f13018d

    .line 17
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 18
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f130679

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 19
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2e

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, LXB0;

    const v15, 0x7f080104

    const v16, 0x7f130674

    const v17, 0x7f130674

    .line 21
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 22
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0x7f13067d

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x23

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f080111

    const v4, 0x7f130206

    const v5, 0x7f130206

    .line 25
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 26
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f13067f

    const v9, 0x7f130680

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 27
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f08029e

    const v4, 0x7f130261

    const v5, 0x7f130261

    .line 29
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 30
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f130682

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 31
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f0802a0

    const v4, 0x7f130696

    const v5, 0x7f130328

    .line 33
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 34
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f130684

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 35
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f08029f

    const v4, 0x7f130378

    const v5, 0x7f130378

    .line 37
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 38
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f130683

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 39
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f080225

    const v4, 0x7f1306a6

    const v5, 0x7f1301d2

    .line 41
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f13067e

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 42
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f0802a1

    const v4, 0x7f1306a7

    const v5, 0x7f1303e0

    .line 44
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 45
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f130685

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 46
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f0802a2

    const/4 v4, 0x0

    const v5, 0x7f1303e1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, LXB0;

    const v15, 0x7f0802a5

    const v16, 0x7f130512

    const v17, 0x7f130512

    .line 49
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 50
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0x7f130688

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f0802a3

    const v4, 0x7f1304ef

    const v5, 0x7f1304ef

    .line 53
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 54
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v20, 0x0

    const v9, 0x7f130689

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 55
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, LXB0;

    const v15, 0x7f0802a4

    const v16, 0x7f130511

    const v17, 0x7f130511

    .line 57
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f130687

    const v2, 0x7f130686

    const v3, 0x7f1303ed

    :try_start_0
    const-string v4, "GenericSensorExtraClasses"

    .line 59
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const v3, 0x7f13056e

    const v2, 0x7f13068f

    const v1, 0x7f130690

    :cond_0
    move/from16 v21, v1

    move/from16 v20, v2

    move/from16 v17, v3

    goto :goto_0

    :catch_0
    const v17, 0x7f1303ed

    const v20, 0x7f130686

    const v21, 0x7f130687

    :goto_0
    const/16 v1, 0x21

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, LXB0;

    const v15, 0x7f0802bf

    .line 61
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 62
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v14, v2

    move/from16 v16, v17

    invoke-direct/range {v14 .. v21}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v3, 0x7f08022e

    const v4, 0x7f1305ac

    const v5, 0x7f1305ac

    .line 65
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f130691

    const v9, 0x7f130692

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 66
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v11, 0x7f0802c1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 68
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 69
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v3, 0x7f0802c1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 70
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x27

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, LXB0;

    const v4, 0x7f1306a5

    const v5, 0x7f1306a5

    .line 72
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 73
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f130694

    const v9, 0x7f130695

    move-object v2, v10

    move v3, v11

    invoke-direct/range {v2 .. v9}, LXB0;-><init>(IIILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 74
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sput-object v0, LYB0;->a:Ljava/util/Map;

    .line 76
    :cond_1
    sget-object v0, LYB0;->a:Ljava/util/Map;

    .line 77
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXB0;

    return-object v0
.end method
