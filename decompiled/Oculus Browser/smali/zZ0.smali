.class public LzZ0;
.super Landroid/app/AlertDialog;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final A:Landroid/widget/NumberPicker;

.field public final B:LyZ0;

.field public final C:I

.field public final D:I

.field public final E:Z

.field public final w:Landroid/widget/NumberPicker;

.field public final x:Landroid/widget/NumberPicker;

.field public final y:Landroid/widget/NumberPicker;

.field public final z:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIZLyZ0;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move/from16 v3, p10

    .line 1
    invoke-direct/range {p0 .. p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v4, p11

    .line 2
    iput-object v4, v0, LzZ0;->B:LyZ0;

    .line 3
    iput v2, v0, LzZ0;->C:I

    .line 4
    iput-boolean v3, v0, LzZ0;->E:Z

    const/4 v4, 0x0

    move/from16 v5, p7

    move/from16 v6, p8

    if-lt v5, v6, :cond_0

    const v5, 0x5265bff

    const/4 v5, 0x0

    const v6, 0x5265bff

    :cond_0
    if-ltz v2, :cond_1

    const v8, 0x5265c00

    if-lt v2, v8, :cond_2

    :cond_1
    const v2, 0xea60

    :cond_2
    const-string v8, "layout_inflater"

    .line 5
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v9, 0x7f0e011b

    const/4 v10, 0x0

    .line 6
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 7
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v9, 0x7f0b0203

    .line 8
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/NumberPicker;

    iput-object v9, v0, LzZ0;->w:Landroid/widget/NumberPicker;

    const v9, 0x7f0b027f

    .line 9
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/NumberPicker;

    iput-object v9, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    const v9, 0x7f0b03b4

    .line 10
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/NumberPicker;

    iput-object v9, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    const v9, 0x7f0b027d

    .line 11
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/NumberPicker;

    iput-object v9, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    const v9, 0x7f0b0049

    .line 12
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/NumberPicker;

    iput-object v9, v0, LzZ0;->A:Landroid/widget/NumberPicker;

    const v9, 0x36ee80

    .line 13
    div-int v10, v5, v9

    .line 14
    div-int v11, v6, v9

    mul-int v12, v10, v9

    sub-int/2addr v5, v12

    mul-int v12, v11, v9

    sub-int/2addr v6, v12

    if-ne v10, v11, :cond_3

    .line 15
    iget-object v12, v0, LzZ0;->w:Landroid/widget/NumberPicker;

    invoke-virtual {v12, v4}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    move v12, v10

    goto :goto_0

    :cond_3
    move/from16 v12, p3

    :goto_0
    const/16 v13, 0x8

    const/4 v14, 0x1

    if-eqz v3, :cond_4

    .line 16
    iget-object v1, v0, LzZ0;->A:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v13}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_4
    div-int/lit8 v3, v10, 0xc

    .line 18
    div-int/lit8 v15, v11, 0xc

    .line 19
    div-int/lit8 v16, v12, 0xc

    .line 20
    iget-object v13, v0, LzZ0;->A:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 21
    iget-object v13, v0, LzZ0;->A:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 22
    iget-object v13, v0, LzZ0;->A:Landroid/widget/NumberPicker;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const v7, 0x7f130605

    .line 23
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v4

    const v7, 0x7f130608

    .line 24
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v14

    .line 25
    invoke-virtual {v13, v9}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 26
    rem-int/lit8 v12, v12, 0xc

    const/16 v1, 0xc

    if-nez v12, :cond_5

    const/16 v12, 0xc

    :cond_5
    if-ne v3, v15, :cond_8

    .line 27
    iget-object v7, v0, LzZ0;->A:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v4}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 28
    rem-int/lit8 v10, v10, 0xc

    .line 29
    rem-int/lit8 v11, v11, 0xc

    if-nez v10, :cond_6

    if-nez v11, :cond_6

    const/16 v10, 0xc

    goto :goto_1

    :cond_6
    if-nez v10, :cond_7

    move v10, v11

    goto :goto_1

    :cond_7
    if-nez v11, :cond_9

    goto :goto_1

    :cond_8
    move/from16 v3, v16

    const/4 v10, 0x1

    :goto_1
    const/16 v11, 0xc

    .line 30
    :cond_9
    iget-object v1, v0, LzZ0;->A:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    :goto_2
    if-ne v10, v11, :cond_a

    .line 31
    iget-object v1, v0, LzZ0;->w:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 32
    :cond_a
    iget-object v1, v0, LzZ0;->w:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 33
    iget-object v1, v0, LzZ0;->w:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v11}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 34
    iget-object v1, v0, LzZ0;->w:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v12}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 35
    new-instance v1, LxZ0;

    const-string v3, "%02d"

    invoke-direct {v1, v3}, LxZ0;-><init>(Ljava/lang/String;)V

    const v7, 0xea60

    .line 36
    div-int v9, v5, v7

    .line 37
    div-int v12, v6, v7

    mul-int v13, v9, v7

    sub-int/2addr v5, v13

    mul-int v13, v12, v7

    sub-int/2addr v6, v13

    const/16 v7, 0x3b

    if-ne v10, v11, :cond_b

    .line 38
    iget-object v13, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 39
    iget-object v13, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v12}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    if-ne v9, v12, :cond_c

    .line 40
    iget-object v13, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    new-array v15, v14, [Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v9}, LxZ0;->format(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v4

    .line 42
    invoke-virtual {v13, v15}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 43
    iget-object v13, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v4}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    move v13, v9

    goto :goto_3

    .line 44
    :cond_b
    iget-object v13, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 45
    iget-object v13, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :cond_c
    move/from16 v13, p4

    .line 46
    :goto_3
    iget-object v15, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {v15, v13}, Landroid/widget/NumberPicker;->setValue(I)V

    const v13, 0x36ee80

    .line 47
    rem-int v13, v2, v13

    if-nez v13, :cond_d

    .line 48
    iget-object v13, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v4}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 49
    iget-object v13, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v9}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 50
    :cond_d
    iget-object v13, v0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    const v13, 0xea60

    if-lt v2, v13, :cond_e

    const v13, 0x7f0b03b5

    .line 51
    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v13, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v15}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 53
    :cond_e
    div-int/lit16 v13, v5, 0x3e8

    .line 54
    div-int/lit16 v15, v6, 0x3e8

    mul-int/lit16 v7, v13, 0x3e8

    sub-int/2addr v5, v7

    mul-int/lit16 v7, v15, 0x3e8

    sub-int/2addr v6, v7

    if-ne v10, v11, :cond_10

    if-ne v9, v12, :cond_10

    .line 55
    iget-object v7, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 56
    iget-object v7, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    if-ne v13, v15, :cond_f

    .line 57
    iget-object v7, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    move-object/from16 p3, v3

    new-array v3, v14, [Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v13}, LxZ0;->format(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v4

    .line 59
    invoke-virtual {v7, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 60
    iget-object v3, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    move v3, v13

    goto :goto_5

    :cond_f
    move-object/from16 p3, v3

    goto :goto_4

    :cond_10
    move-object/from16 p3, v3

    .line 61
    iget-object v3, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 62
    iget-object v3, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    const/16 v7, 0x3b

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :goto_4
    move/from16 v3, p5

    .line 63
    :goto_5
    iget-object v7, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 64
    iget-object v3, v0, LzZ0;->y:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    const/16 v1, 0x3e8

    if-lt v2, v1, :cond_11

    const v3, 0x7f0b03b6

    .line 65
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v3, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 67
    :cond_11
    div-int/lit8 v3, v2, 0x2

    add-int v3, v3, p6

    div-int/2addr v3, v2

    mul-int v3, v3, v2

    const-string v7, "%03d"

    const/16 v8, 0x64

    const/16 v4, 0xa

    if-eq v2, v14, :cond_15

    if-eq v2, v4, :cond_15

    if-ne v2, v8, :cond_12

    goto :goto_7

    :cond_12
    if-ge v2, v1, :cond_14

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v5

    :goto_6
    if-ge v4, v6, :cond_13

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v2

    goto :goto_6

    :cond_13
    const/4 v11, 0x0

    .line 70
    iget-object v4, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v11}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 71
    iget-object v4, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v14

    invoke-virtual {v4, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 72
    iget-object v4, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    sub-int/2addr v3, v5

    div-int/2addr v3, v2

    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 73
    iget-object v2, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 74
    iput v5, v0, LzZ0;->D:I

    goto :goto_a

    :cond_14
    const/4 v1, 0x0

    .line 75
    iput v1, v0, LzZ0;->D:I

    goto :goto_a

    :cond_15
    :goto_7
    if-ne v10, v11, :cond_16

    if-ne v9, v12, :cond_16

    if-ne v13, v15, :cond_16

    .line 76
    iget-object v1, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    div-int v9, v5, v2

    invoke-virtual {v1, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 77
    iget-object v1, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    div-int v9, v6, v2

    invoke-virtual {v1, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    if-ne v5, v6, :cond_17

    .line 78
    iget-object v1, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_8

    :cond_16
    const/4 v6, 0x0

    .line 79
    iget-object v1, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 80
    iget-object v1, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    const/16 v5, 0x3e7

    div-int/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :cond_17
    move v5, v3

    :goto_8
    if-ne v2, v14, :cond_18

    .line 81
    iget-object v1, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    new-instance v3, LxZ0;

    invoke-direct {v3, v7}, LxZ0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto :goto_9

    :cond_18
    if-ne v2, v4, :cond_19

    .line 82
    iget-object v1, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    new-instance v3, LxZ0;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, LxZ0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto :goto_9

    :cond_19
    if-ne v2, v8, :cond_1a

    .line 83
    iget-object v1, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    new-instance v3, LxZ0;

    const-string v4, "%d"

    invoke-direct {v3, v4}, LxZ0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 84
    :cond_1a
    :goto_9
    iget-object v1, v0, LzZ0;->z:Landroid/widget/NumberPicker;

    div-int/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    const/4 v1, 0x0

    .line 85
    iput v1, v0, LzZ0;->D:I

    :goto_a
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/NumberPicker;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    iget-object p1, p0, LzZ0;->w:Landroid/widget/NumberPicker;

    invoke-virtual {p0, p1}, LzZ0;->a(Landroid/widget/NumberPicker;)I

    move-result p1

    .line 2
    iget-object p2, p0, LzZ0;->x:Landroid/widget/NumberPicker;

    invoke-virtual {p0, p2}, LzZ0;->a(Landroid/widget/NumberPicker;)I

    move-result v6

    .line 3
    iget-object p2, p0, LzZ0;->y:Landroid/widget/NumberPicker;

    invoke-virtual {p0, p2}, LzZ0;->a(Landroid/widget/NumberPicker;)I

    move-result v7

    .line 4
    iget-object p2, p0, LzZ0;->z:Landroid/widget/NumberPicker;

    invoke-virtual {p0, p2}, LzZ0;->a(Landroid/widget/NumberPicker;)I

    move-result p2

    iget v0, p0, LzZ0;->C:I

    mul-int p2, p2, v0

    iget v0, p0, LzZ0;->D:I

    add-int v8, p2, v0

    .line 5
    iget-boolean p2, p0, LzZ0;->E:Z

    if-nez p2, :cond_1

    .line 6
    iget-object p2, p0, LzZ0;->A:Landroid/widget/NumberPicker;

    invoke-virtual {p0, p2}, LzZ0;->a(Landroid/widget/NumberPicker;)I

    move-result p2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    mul-int/lit8 p2, p2, 0xc

    add-int/2addr p1, p2

    :cond_1
    move v5, p1

    .line 7
    iget-object p1, p0, LzZ0;->B:LyZ0;

    check-cast p1, LqZ0;

    .line 8
    iget-object v0, p1, LqZ0;->b:LuZ0;

    iget v1, p1, LqZ0;->a:I

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v9}, LuZ0;->a(IIIIIIIII)V

    return-void
.end method
