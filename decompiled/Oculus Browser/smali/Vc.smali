.class public LVc;
.super Landroid/view/MenuInflater;
.source "PG"


# static fields
.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, LVc;->e:[Ljava/lang/Class;

    .line 2
    sput-object v0, LVc;->f:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, LVc;->c:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    iput-object v0, p0, LVc;->a:[Ljava/lang/Object;

    .line 4
    iput-object v0, p0, LVc;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 83
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object p1

    .line 84
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 85
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, LVc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    new-instance v2, LUc;

    move-object/from16 v3, p3

    invoke-direct {v2, v0, v3}, LUc;-><init>(LVc;Landroid/view/Menu;)V

    .line 2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const-string v4, "menu"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1

    .line 3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expecting menu, got "

    invoke-static {v2, v3}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v6, :cond_17

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-nez v8, :cond_16

    if-eq v3, v6, :cond_15

    const-string v11, "item"

    const-string v12, "group"

    const/4 v13, 0x3

    if-eq v3, v5, :cond_7

    if-eq v3, v13, :cond_2

    goto/16 :goto_a

    .line 8
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_3

    .line 9
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, p1

    move-object v10, v9

    const/4 v9, 0x0

    goto/16 :goto_b

    .line 10
    :cond_3
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 11
    iput v7, v2, LUc;->b:I

    .line 12
    iput v7, v2, LUc;->c:I

    .line 13
    iput v7, v2, LUc;->d:I

    .line 14
    iput v7, v2, LUc;->e:I

    .line 15
    iput-boolean v6, v2, LUc;->f:Z

    .line 16
    iput-boolean v6, v2, LUc;->g:Z

    goto/16 :goto_a

    .line 17
    :cond_4
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 18
    iget-boolean v3, v2, LUc;->h:Z

    if-nez v3, :cond_12

    .line 19
    iget-object v3, v2, LUc;->A:Lj7;

    if-eqz v3, :cond_5

    .line 20
    check-cast v3, Lud;

    .line 21
    iget-object v3, v3, Lud;->b:Landroid/view/ActionProvider;

    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {v2}, LUc;->a()Landroid/view/SubMenu;

    goto/16 :goto_a

    .line 23
    :cond_5
    iput-boolean v6, v2, LUc;->h:Z

    .line 24
    iget-object v3, v2, LUc;->a:Landroid/view/Menu;

    iget v11, v2, LUc;->b:I

    iget v12, v2, LUc;->i:I

    iget v13, v2, LUc;->j:I

    iget-object v14, v2, LUc;->k:Ljava/lang/CharSequence;

    invoke-interface {v3, v11, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, LUc;->a(Landroid/view/MenuItem;)V

    goto/16 :goto_a

    .line 25
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    move-object/from16 v11, p1

    const/4 v8, 0x1

    goto/16 :goto_b

    :cond_7
    if-eqz v9, :cond_8

    goto/16 :goto_a

    .line 26
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v14, 0x5

    const/4 v15, 0x4

    if-eqz v12, :cond_9

    .line 28
    iget-object v3, v2, LUc;->F:LVc;

    iget-object v3, v3, LVc;->c:Landroid/content/Context;

    sget-object v11, LeS;->m0:[I

    invoke-virtual {v3, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 29
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v2, LUc;->b:I

    .line 30
    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v2, LUc;->c:I

    .line 31
    invoke-virtual {v3, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v2, LUc;->d:I

    .line 32
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v2, LUc;->e:I

    .line 33
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v2, LUc;->f:Z

    .line 34
    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v2, LUc;->g:Z

    .line 35
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_a

    .line 36
    :cond_9
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 37
    iget-object v3, v2, LUc;->F:LVc;

    iget-object v3, v3, LVc;->c:Landroid/content/Context;

    sget-object v11, LeS;->n0:[I

    invoke-virtual {v3, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 38
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v2, LUc;->i:I

    .line 39
    iget v11, v2, LUc;->c:I

    invoke-virtual {v3, v14, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 40
    iget v12, v2, LUc;->d:I

    const/4 v14, 0x6

    invoke-virtual {v3, v14, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    const/high16 v14, -0x10000

    and-int/2addr v11, v14

    const v14, 0xffff

    and-int/2addr v12, v14

    or-int/2addr v11, v12

    .line 41
    iput v11, v2, LUc;->j:I

    const/4 v11, 0x7

    .line 42
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v2, LUc;->k:Ljava/lang/CharSequence;

    const/16 v11, 0x8

    .line 43
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v2, LUc;->l:Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v2, LUc;->m:I

    const/16 v11, 0x9

    .line 45
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a

    const/4 v11, 0x0

    goto :goto_3

    .line 46
    :cond_a
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 47
    :goto_3
    iput-char v11, v2, LUc;->n:C

    const/16 v11, 0x10

    const/16 v12, 0x1000

    .line 48
    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v2, LUc;->o:I

    const/16 v11, 0xa

    .line 49
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_b

    const/4 v11, 0x0

    goto :goto_4

    .line 50
    :cond_b
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 51
    :goto_4
    iput-char v11, v2, LUc;->p:C

    const/16 v11, 0x14

    .line 52
    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v2, LUc;->q:I

    const/16 v11, 0xb

    .line 53
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 54
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput v11, v2, LUc;->r:I

    goto :goto_5

    .line 55
    :cond_c
    iget v11, v2, LUc;->e:I

    iput v11, v2, LUc;->r:I

    .line 56
    :goto_5
    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v2, LUc;->s:Z

    .line 57
    iget-boolean v11, v2, LUc;->f:Z

    invoke-virtual {v3, v15, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v2, LUc;->t:Z

    .line 58
    iget-boolean v11, v2, LUc;->g:Z

    invoke-virtual {v3, v6, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v2, LUc;->u:Z

    const/16 v11, 0x15

    const/4 v12, -0x1

    .line 59
    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v2, LUc;->v:I

    const/16 v11, 0xc

    .line 60
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, LUc;->z:Ljava/lang/String;

    const/16 v11, 0xd

    .line 61
    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v2, LUc;->w:I

    const/16 v11, 0xf

    .line 62
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, LUc;->x:Ljava/lang/String;

    const/16 v11, 0xe

    .line 63
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, LUc;->y:Ljava/lang/String;

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    goto :goto_6

    :cond_d
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_e

    .line 64
    iget v13, v2, LUc;->w:I

    if-nez v13, :cond_e

    iget-object v13, v2, LUc;->x:Ljava/lang/String;

    if-nez v13, :cond_e

    .line 65
    iget-object v11, v2, LUc;->y:Ljava/lang/String;

    sget-object v13, LVc;->f:[Ljava/lang/Class;

    iget-object v14, v2, LUc;->F:LVc;

    iget-object v14, v14, LVc;->b:[Ljava/lang/Object;

    invoke-virtual {v2, v11, v13, v14}, LUc;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj7;

    iput-object v11, v2, LUc;->A:Lj7;

    goto :goto_7

    :cond_e
    if-eqz v11, :cond_f

    const-string v11, "SupportMenuInflater"

    const-string v13, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 66
    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v11, 0x0

    .line 67
    iput-object v11, v2, LUc;->A:Lj7;

    :goto_7
    const/16 v11, 0x11

    .line 68
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v2, LUc;->B:Ljava/lang/CharSequence;

    const/16 v11, 0x16

    .line 69
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v2, LUc;->C:Ljava/lang/CharSequence;

    const/16 v11, 0x13

    .line 70
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 71
    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iget-object v12, v2, LUc;->E:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v11, v12}, Lmf;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v11

    iput-object v11, v2, LUc;->E:Landroid/graphics/PorterDuff$Mode;

    const/4 v11, 0x0

    goto :goto_8

    :cond_10
    const/4 v11, 0x0

    .line 72
    iput-object v11, v2, LUc;->E:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    const/16 v12, 0x12

    .line 73
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 74
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    iput-object v11, v2, LUc;->D:Landroid/content/res/ColorStateList;

    goto :goto_9

    .line 75
    :cond_11
    iput-object v11, v2, LUc;->D:Landroid/content/res/ColorStateList;

    .line 76
    :goto_9
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    iput-boolean v7, v2, LUc;->h:Z

    :cond_12
    :goto_a
    move-object/from16 v11, p1

    goto :goto_b

    .line 78
    :cond_13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 79
    invoke-virtual {v2}, LUc;->a()Landroid/view/SubMenu;

    move-result-object v3

    move-object/from16 v11, p1

    .line 80
    invoke-virtual {v0, v11, v1, v3}, LVc;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_b

    :cond_14
    move-object/from16 v11, p1

    const/4 v9, 0x1

    move-object v10, v3

    .line 81
    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_2

    .line 82
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected end of document"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    return-void

    :cond_17
    move-object/from16 v11, p1

    goto/16 :goto_0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .locals 3

    const-string v0, "Error inflating menu XML"

    .line 1
    instance-of v1, p2, LH4;

    if-nez v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, LVc;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v1, p1, p2}, LVc;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw p1
.end method
