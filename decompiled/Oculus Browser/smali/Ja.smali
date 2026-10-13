.class public LJa;
.super LQa;
.source "PG"


# instance fields
.field public K:LEa;

.field public L:LIa;

.field public M:I

.field public N:I

.field public O:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LJa;

    return-void
.end method

.method public constructor <init>(LEa;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LQa;-><init>(LPa;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LJa;->M:I

    .line 3
    iput v0, p0, LJa;->N:I

    .line 4
    new-instance v0, LEa;

    invoke-direct {v0, p1, p0, p2}, LEa;-><init>(LEa;LJa;Landroid/content/res/Resources;)V

    .line 5
    invoke-super {p0, v0}, LQa;->a(LMa;)V

    .line 6
    iput-object v0, p0, LJa;->K:LEa;

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LJa;->onStateChange([I)Z

    .line 8
    invoke-virtual {p0}, LJa;->jumpToCurrentState()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)LJa;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "animated-selector"

    .line 2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3
    new-instance v5, LJa;

    const/4 v6, 0x0

    .line 4
    invoke-direct {v5, v6, v6}, LJa;-><init>(LEa;Landroid/content/res/Resources;)V

    .line 5
    sget-object v7, LeS;->g:[I

    invoke-static {v1, v4, v3, v7}, Lm4;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v8, 0x1

    .line 6
    invoke-virtual {v7, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v5, v9, v8}, LJa;->setVisible(ZZ)Z

    .line 7
    iget-object v9, v5, LJa;->K:LEa;

    .line 8
    iget v10, v9, LMa;->d:I

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v11

    or-int/2addr v10, v11

    iput v10, v9, LMa;->d:I

    .line 9
    iget-boolean v10, v9, LMa;->i:Z

    const/4 v11, 0x2

    .line 10
    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 11
    iput-boolean v10, v9, LMa;->i:Z

    .line 12
    iget-boolean v10, v9, LMa;->l:Z

    const/4 v12, 0x3

    .line 13
    invoke-virtual {v7, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 14
    iput-boolean v10, v9, LMa;->l:Z

    .line 15
    iget v10, v9, LMa;->A:I

    const/4 v13, 0x4

    .line 16
    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 17
    iput v10, v9, LMa;->A:I

    const/4 v10, 0x5

    .line 18
    iget v14, v9, LMa;->B:I

    .line 19
    invoke-virtual {v7, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 20
    iput v10, v9, LMa;->B:I

    .line 21
    iget-boolean v9, v9, LMa;->x:Z

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 22
    iget-object v14, v5, LNa;->w:LMa;

    iget-boolean v15, v14, LMa;->x:Z

    if-eq v15, v9, :cond_0

    .line 23
    iput-boolean v9, v14, LMa;->x:Z

    .line 24
    iget-object v14, v5, LNa;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_0

    .line 25
    invoke-virtual {v14, v9}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 26
    :cond_0
    iget-object v9, v5, LNa;->w:LMa;

    invoke-virtual {v9, v1}, LMa;->a(Landroid/content/res/Resources;)V

    .line 27
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    add-int/2addr v7, v8

    .line 29
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v8, :cond_16

    .line 30
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v7, :cond_1

    if-eq v9, v12, :cond_16

    :cond_1
    if-eq v9, v11, :cond_2

    goto :goto_0

    :cond_2
    if-le v14, v7, :cond_3

    goto :goto_0

    .line 31
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "item"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, -0x1

    if-eqz v9, :cond_d

    .line 32
    sget-object v9, LeS;->h:[I

    invoke-static {v1, v4, v3, v9}, Lm4;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 33
    invoke-virtual {v9, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 34
    invoke-virtual {v9, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-lez v8, :cond_4

    .line 35
    invoke-static {v0, v8}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 36
    :cond_4
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 38
    new-array v9, v8, [I

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v8, :cond_7

    .line 39
    invoke-interface {v3, v11}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    if-eqz v15, :cond_6

    const v13, 0x10100d0

    if-eq v15, v13, :cond_6

    const v13, 0x1010199

    if-eq v15, v13, :cond_6

    add-int/lit8 v13, v14, 0x1

    .line 40
    invoke-interface {v3, v11, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_2

    :cond_5
    neg-int v15, v15

    :goto_2
    aput v15, v9, v14

    move v14, v13

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x4

    goto :goto_1

    .line 41
    :cond_7
    invoke-static {v9, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v8

    const-string v9, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v6, :cond_b

    .line 42
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v11, 0x4

    if-ne v6, v11, :cond_8

    goto :goto_3

    :cond_8
    const/4 v11, 0x2

    if-ne v6, v11, :cond_a

    .line 43
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "vector"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 44
    invoke-static/range {p1 .. p4}, LY0;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)LY0;

    move-result-object v6

    goto :goto_4

    .line 45
    :cond_9
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_4

    .line 46
    :cond_a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-static {v2, v1, v9}, LZi;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    .line 48
    iget-object v9, v5, LJa;->K:LEa;

    .line 49
    invoke-virtual {v9, v6}, LMa;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    .line 50
    iget-object v11, v9, LPa;->J:[[I

    aput-object v8, v11, v6

    .line 51
    iget-object v8, v9, LEa;->L:Le7;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Le7;->c(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 52
    :cond_c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-static {v2, v1, v9}, LZi;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_d
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "transition"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 55
    sget-object v6, LeS;->i:[I

    invoke-static {v1, v4, v3, v6}, Lm4;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v8, 0x2

    .line 56
    invoke-virtual {v6, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x1

    .line 57
    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 58
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-lez v12, :cond_e

    .line 59
    invoke-static {v0, v12}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_5

    :cond_e
    const/4 v12, 0x0

    :goto_5
    const/4 v13, 0x3

    .line 60
    invoke-virtual {v6, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 61
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const-string v6, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v12, :cond_12

    .line 62
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x4

    if-ne v12, v14, :cond_f

    goto :goto_6

    :cond_f
    const/4 v15, 0x2

    if-ne v12, v15, :cond_11

    .line 63
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v15, "animated-vector"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 64
    invoke-static/range {p0 .. p4}, LK0;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)LK0;

    move-result-object v12

    goto :goto_7

    .line 65
    :cond_10
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_7

    .line 66
    :cond_11
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-static {v2, v1, v6}, LZi;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v14, 0x4

    :goto_7
    if-eqz v12, :cond_14

    if-eq v8, v11, :cond_13

    if-eq v9, v11, :cond_13

    .line 68
    iget-object v6, v5, LJa;->K:LEa;

    invoke-virtual {v6, v8, v9, v12, v13}, LEa;->a(IILandroid/graphics/drawable/Drawable;Z)I

    goto :goto_9

    .line 69
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    .line 70
    invoke-static {v2, v1, v3}, LZi;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-static {v2, v1, v6}, LZi;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_8
    const/4 v14, 0x4

    :goto_9
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    goto/16 :goto_0

    .line 73
    :cond_16
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v5, v0}, LJa;->onStateChange([I)Z

    return-object v5

    .line 74
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid animated-selector tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(LMa;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, LQa;->a(LMa;)V

    .line 77
    instance-of v0, p1, LEa;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, LEa;

    iput-object p1, p0, LJa;->K:LEa;

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 8

    .line 1
    iget-object v0, p0, LNa;->z:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3
    iput-object v1, p0, LNa;->z:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, LNa;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6
    iget-boolean v3, p0, LNa;->B:Z

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p0, LNa;->y:Landroid/graphics/drawable/Drawable;

    iget v4, p0, LNa;->A:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    :cond_1
    iget-wide v3, p0, LNa;->G:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 9
    iput-wide v5, p0, LNa;->G:J

    const/4 v0, 0x1

    .line 10
    :cond_2
    iget-wide v3, p0, LNa;->F:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 11
    iput-wide v5, p0, LNa;->F:J

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    :cond_4
    iget-object v0, p0, LJa;->L:LIa;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, LIa;->d()V

    .line 15
    iput-object v1, p0, LJa;->L:LIa;

    .line 16
    iget v0, p0, LJa;->M:I

    invoke-virtual {p0, v0}, LNa;->a(I)Z

    const/4 v0, -0x1

    .line 17
    iput v0, p0, LJa;->M:I

    .line 18
    iput v0, p0, LJa;->N:I

    :cond_5
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, LJa;->O:Z

    if-nez v0, :cond_0

    invoke-super {p0}, LQa;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    .line 2
    iget-object v0, p0, LJa;->K:LEa;

    invoke-virtual {v0}, LEa;->d()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LJa;->O:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, LJa;->K:LEa;

    invoke-virtual {v2, v1}, LEa;->b([I)I

    move-result v2

    .line 2
    iget v3, v0, LNa;->C:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_a

    .line 3
    iget-object v6, v0, LJa;->L:LIa;

    if-eqz v6, :cond_2

    .line 4
    iget v3, v0, LJa;->M:I

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    iget v3, v0, LJa;->N:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v6}, LIa;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v6}, LIa;->b()V

    .line 7
    iget v3, v0, LJa;->N:I

    iput v3, v0, LJa;->M:I

    .line 8
    iput v2, v0, LJa;->N:I

    goto/16 :goto_3

    .line 9
    :cond_1
    iget v3, v0, LJa;->M:I

    .line 10
    invoke-virtual {v6}, LIa;->d()V

    :cond_2
    const/4 v6, 0x0

    .line 11
    iput-object v6, v0, LJa;->L:LIa;

    const/4 v6, -0x1

    .line 12
    iput v6, v0, LJa;->N:I

    .line 13
    iput v6, v0, LJa;->M:I

    .line 14
    iget-object v6, v0, LJa;->K:LEa;

    .line 15
    invoke-virtual {v6, v3}, LEa;->b(I)I

    move-result v7

    .line 16
    invoke-virtual {v6, v2}, LEa;->b(I)I

    move-result v8

    if-eqz v8, :cond_9

    if-nez v7, :cond_3

    goto/16 :goto_4

    .line 17
    :cond_3
    invoke-static {v7, v8}, LEa;->a(II)J

    move-result-wide v9

    .line 18
    iget-object v11, v6, LEa;->K:LQ6;

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v9, v10, v14}, LQ6;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-int v10, v9

    if-gez v10, :cond_4

    goto/16 :goto_4

    .line 19
    :cond_4
    invoke-static {v7, v8}, LEa;->a(II)J

    move-result-wide v14

    .line 20
    iget-object v9, v6, LEa;->K:LQ6;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v14, v15, v11}, LQ6;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide v16, 0x200000000L

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, v10}, LNa;->a(I)Z

    .line 22
    iget-object v10, v0, LNa;->y:Landroid/graphics/drawable/Drawable;

    .line 23
    instance-of v11, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v11, :cond_7

    .line 24
    invoke-static {v7, v8}, LEa;->a(II)J

    move-result-wide v7

    .line 25
    iget-object v6, v6, LEa;->K:LQ6;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v7, v8, v11}, LQ6;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v11, 0x100000000L

    and-long/2addr v6, v11

    cmp-long v8, v6, v16

    if-eqz v8, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    .line 26
    :goto_1
    new-instance v7, LGa;

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v7, v10, v6, v9}, LGa;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_2

    .line 27
    :cond_7
    instance-of v6, v10, LK0;

    if-eqz v6, :cond_8

    .line 28
    new-instance v7, LFa;

    check-cast v10, LK0;

    invoke-direct {v7, v10}, LFa;-><init>(LK0;)V

    goto :goto_2

    .line 29
    :cond_8
    instance-of v6, v10, Landroid/graphics/drawable/Animatable;

    if-eqz v6, :cond_9

    .line 30
    new-instance v7, LDa;

    check-cast v10, Landroid/graphics/drawable/Animatable;

    invoke-direct {v7, v10}, LDa;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 31
    :goto_2
    invoke-virtual {v7}, LIa;->c()V

    .line 32
    iput-object v7, v0, LJa;->L:LIa;

    .line 33
    iput v3, v0, LJa;->N:I

    .line 34
    iput v2, v0, LJa;->M:I

    :goto_3
    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_b

    .line 35
    invoke-virtual {v0, v2}, LNa;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    .line 36
    :cond_b
    :goto_6
    iget-object v2, v0, LNa;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    .line 37
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v4, v1

    :cond_c
    return v4
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, LNa;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, LJa;->L:LIa;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, LJa;->L:LIa;

    invoke-virtual {p1}, LIa;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, LJa;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
