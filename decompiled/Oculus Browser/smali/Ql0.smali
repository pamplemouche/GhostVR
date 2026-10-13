.class public LQl0;
.super LWl0;
.source "PG"


# instance fields
.field public final y:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, LWl0;-><init>(Landroid/content/res/Resources;)V

    .line 2
    iput-object p1, p0, LQl0;->y:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcm0;)LOl0;
    .locals 22

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, v1, LQl0;->y:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e01d9

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v1, LQl0;->y:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e01da

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5
    iget-object v3, v1, LQl0;->y:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    div-float v6, v4, v3

    const/high16 v7, 0x40e00000    # 7.0f

    mul-float v6, v6, v7

    float-to-double v6, v6

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x7

    :goto_0
    const v6, 0x7f0b0064

    const-string v8, "setMaxLines"

    .line 7
    invoke-virtual {v2, v6, v8, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8
    iget-object v7, v1, LQl0;->y:Landroid/content/Context;

    .line 9
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-lez v5, :cond_1

    const v4, 0x3fa66666    # 1.3f

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v4, v3

    const v3, 0x3e999998    # 0.29999995f

    div-float/2addr v4, v3

    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    mul-float v4, v4, v3

    .line 11
    invoke-static {v7, v4}, LGO0;->a(Landroid/util/DisplayMetrics;F)I

    move-result v3

    .line 12
    invoke-static {}, LqU;->e()LqU;

    move-result-object v4

    .line 13
    :try_start_0
    iget-object v5, v1, LQl0;->y:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v4}, LqU;->close()V

    const/4 v4, 0x2

    new-array v7, v4, [Landroid/widget/RemoteViews;

    const/4 v14, 0x0

    aput-object v0, v7, v14

    const/4 v15, 0x1

    aput-object v2, v7, v15

    const/4 v13, 0x0

    :goto_1
    const/high16 v12, 0x41800000    # 16.0f

    const v8, 0x7f0b02fe

    if-ge v13, v4, :cond_4

    .line 15
    aget-object v11, v7, v13

    const v9, 0x7f0b048f

    .line 16
    invoke-virtual {v11, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, 0x7f0b0494

    .line 17
    iget-object v10, v1, LWl0;->d:Ljava/lang/CharSequence;

    invoke-virtual {v11, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 18
    iget-object v9, v1, LWl0;->e:Ljava/lang/CharSequence;

    invoke-virtual {v11, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 19
    iget-object v9, v1, LWl0;->f:Ljava/lang/CharSequence;

    invoke-virtual {v11, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v8, 0x7f0b0204

    .line 20
    invoke-virtual/range {p0 .. p0}, LWl0;->a()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v11, v8, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v9, 0x7f0b0494

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v10, 0x0

    move-object v8, v11

    move-object/from16 v19, v11

    move v11, v3

    const/high16 v4, 0x41800000    # 16.0f

    move/from16 v12, v17

    move/from16 v17, v13

    move/from16 v13, v18

    .line 21
    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const v9, 0x7f0b0065

    const/4 v12, 0x0

    move-object/from16 v8, v19

    move/from16 v10, v16

    move v13, v3

    .line 22
    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 23
    iget-object v8, v1, LQl0;->y:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 24
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 25
    invoke-static {v9, v4}, LGO0;->a(Landroid/util/DisplayMetrics;F)I

    move-result v4

    mul-int v10, v4, v4

    .line 26
    new-array v10, v10, [I

    .line 27
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v4, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 28
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 29
    iget v4, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 30
    sget-object v8, LzT;->a:Landroid/content/Context;

    .line 31
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 32
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    const/4 v11, 0x0

    .line 33
    invoke-virtual {v8, v10, v9, v11, v4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eq v10, v4, :cond_2

    .line 34
    instance-of v8, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_2

    .line 35
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 36
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const v8, 0x7f0b04fb

    move-object/from16 v9, v19

    .line 37
    invoke-virtual {v9, v8, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 38
    invoke-virtual {v9, v8, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    :cond_2
    move-object/from16 v9, v19

    :goto_2
    const v4, 0x7f0b040b

    .line 39
    invoke-virtual {v9, v4, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 40
    iget-object v8, v1, LWl0;->l:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    .line 41
    invoke-virtual {v9, v4, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 42
    :cond_3
    iget v8, v1, LWl0;->j:I

    invoke-virtual {v9, v4, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_3
    add-int/lit8 v13, v17, 0x1

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_4
    const/high16 v4, 0x41800000    # 16.0f

    const v3, 0x7f0b009b

    .line 43
    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 44
    iget-object v5, v1, LWl0;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_5

    const/16 v5, 0x8

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    const v7, 0x7f0b0090

    .line 45
    invoke-virtual {v2, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 46
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 47
    iget-object v5, v1, LQl0;->y:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 48
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 49
    iget-object v9, v1, LWl0;->p:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const v11, -0x8a8a8b

    const-string v12, "setColorFilter"

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LVl0;

    .line 50
    new-instance v13, Landroid/widget/RemoteViews;

    iget-object v14, v1, LQl0;->y:Landroid/content/Context;

    .line 51
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v8, 0x7f0e01db

    invoke-direct {v13, v14, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 52
    iget-object v8, v10, LVl0;->b:Landroid/graphics/Bitmap;

    if-nez v8, :cond_6

    iget v8, v10, LVl0;->a:I

    if-eqz v8, :cond_b

    :cond_6
    const v8, 0x7f0b0093

    .line 53
    invoke-virtual {v13, v8, v12, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 54
    iget-object v11, v10, LVl0;->b:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_7

    .line 55
    invoke-virtual {v13, v8, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 56
    iget-object v8, v10, LVl0;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    goto :goto_6

    .line 57
    :cond_7
    iget v11, v10, LVl0;->a:I

    if-eqz v11, :cond_8

    .line 58
    invoke-virtual {v13, v8, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 59
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 60
    iput-boolean v15, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    iget v11, v10, LVl0;->a:I

    invoke-static {v5, v11, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 62
    iget v14, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    int-to-float v8, v14

    .line 63
    iget v11, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    const/high16 v12, 0x43200000    # 160.0f

    div-float/2addr v11, v12

    div-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/16 v11, 0x20

    .line 64
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    .line 65
    invoke-static {v7, v8}, LGO0;->a(Landroid/util/DisplayMetrics;F)I

    move-result v8

    .line 66
    invoke-static {v7, v4}, LGO0;->a(Landroid/util/DisplayMetrics;F)I

    move-result v11

    add-int v14, v11, v8

    .line 67
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v18, 0x0

    goto :goto_7

    :cond_9
    move/from16 v18, v14

    .line 68
    :goto_7
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_a

    move/from16 v20, v14

    goto :goto_8

    :cond_a
    const/16 v20, 0x0

    :goto_8
    const v17, 0x7f0b008d

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v13

    .line 69
    invoke-virtual/range {v16 .. v21}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 70
    :cond_b
    iget-object v8, v10, LVl0;->c:Ljava/lang/CharSequence;

    const v11, 0x7f0b008d

    invoke-virtual {v13, v11, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 71
    iget-object v8, v10, LVl0;->d:Landroid/app/PendingIntent;

    invoke-virtual {v13, v11, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    invoke-virtual {v2, v3, v13}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    const v8, 0x7f0b02fe

    const/4 v14, 0x0

    goto/16 :goto_5

    .line 73
    :cond_c
    iget-object v3, v1, LWl0;->q:LVl0;

    const v4, 0x7f0b02ff

    if-nez v3, :cond_d

    .line 74
    invoke-virtual {v2, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 75
    iget-object v3, v1, LQl0;->y:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, LGO0;->a(Landroid/content/Context;F)I

    move-result v8

    const/4 v6, 0x0

    const v5, 0x7f0b02fe

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    .line 76
    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    goto :goto_9

    .line 77
    :cond_d
    iget-object v3, v3, LVl0;->d:Landroid/app/PendingIntent;

    const v5, 0x7f0b02fe

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 78
    invoke-virtual {v2, v4, v12, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 79
    :goto_9
    iget-object v3, v1, LWl0;->g:Ljava/lang/String;

    iget-object v4, v1, LWl0;->m:Ljava/lang/String;

    move-object/from16 v5, p1

    const/4 v6, 0x0

    .line 80
    invoke-static {v6, v3, v4, v5}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v3

    .line 81
    iget-object v4, v1, LWl0;->h:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, LPl0;->b(Ljava/lang/CharSequence;)LPl0;

    .line 82
    iget-object v4, v1, LWl0;->n:Lpm0;

    invoke-interface {v3, v4}, LPl0;->b(Lpm0;)LPl0;

    .line 83
    iget-object v4, v1, LWl0;->o:Lpm0;

    invoke-interface {v3, v4}, LPl0;->a(Lpm0;)LPl0;

    .line 84
    iget v4, v1, LWl0;->v:I

    invoke-interface {v3, v4}, LPl0;->b(I)LPl0;

    .line 85
    iget v4, v1, LWl0;->r:I

    invoke-interface {v3, v4}, LPl0;->e(I)LPl0;

    .line 86
    iget-object v4, v1, LWl0;->s:[J

    if-eqz v4, :cond_e

    invoke-interface {v3, v4}, LPl0;->a([J)LPl0;

    .line 87
    :cond_e
    iget-wide v4, v1, LWl0;->t:J

    invoke-interface {v3, v4, v5}, LPl0;->a(J)LPl0;

    .line 88
    invoke-interface {v3, v15}, LPl0;->b(Z)LPl0;

    .line 89
    iget-boolean v4, v1, LWl0;->u:Z

    xor-int/2addr v4, v15

    invoke-interface {v3, v4}, LPl0;->a(Z)LPl0;

    .line 90
    invoke-interface {v3, v0}, LPl0;->b(Landroid/widget/RemoteViews;)LPl0;

    .line 91
    iget-object v0, v1, LWl0;->d:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    .line 92
    iget-object v0, v1, LWl0;->e:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    .line 93
    iget-object v0, v1, LWl0;->f:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    .line 94
    invoke-virtual/range {p0 .. p0}, LWl0;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v3, v0}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    .line 95
    iget v0, v1, LWl0;->j:I

    iget-object v4, v1, LWl0;->k:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_f

    .line 96
    invoke-static {v4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-interface {v3, v0}, LPl0;->a(Landroid/graphics/drawable/Icon;)LPl0;

    goto :goto_a

    .line 97
    :cond_f
    invoke-interface {v3, v0}, LPl0;->c(I)LPl0;

    .line 98
    :goto_a
    iget-object v0, v1, LWl0;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LVl0;

    .line 99
    invoke-static {v3, v4}, LWl0;->a(LPl0;LVl0;)V

    goto :goto_b

    .line 100
    :cond_10
    iget-object v0, v1, LWl0;->q:LVl0;

    if-eqz v0, :cond_11

    .line 101
    invoke-static {v3, v0}, LWl0;->a(LPl0;LVl0;)V

    .line 102
    :cond_11
    iget-object v0, v1, LWl0;->f:Ljava/lang/CharSequence;

    invoke-static {v3, v0}, LWl0;->a(LPl0;Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, v1, LQl0;->y:Landroid/content/Context;

    invoke-virtual {v1, v0}, LWl0;->a(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-interface {v3, v0}, LPl0;->a(Landroid/app/Notification;)LPl0;

    .line 104
    invoke-interface {v3, v2}, LPl0;->a(Landroid/widget/RemoteViews;)LOl0;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 105
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 106
    :try_start_2
    invoke-virtual {v4}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 107
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, v2, v4}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 108
    :goto_c
    throw v3
.end method
