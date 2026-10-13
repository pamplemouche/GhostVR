.class public LG90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LY80;


# instance fields
.field public final a:Ljava/util/PriorityQueue;

.field public b:Landroid/os/Handler;

.field public c:LW80;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, LC90;->w:Ljava/util/Comparator;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, LG90;->a:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public a()LW80;
    .locals 1

    .line 1
    iget-object v0, p0, LG90;->c:LW80;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LV80;->a:LW80;

    .line 3
    iput-object v0, p0, LG90;->c:LW80;

    .line 4
    :cond_0
    iget-object v0, p0, LG90;->c:LW80;

    return-object v0
.end method

.method public a(ILorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 2

    .line 21
    iget-object v0, p2, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 22
    invoke-virtual {p0, v0}, LG90;->b(LbU0;)J

    .line 23
    invoke-virtual {p0}, LG90;->a()LW80;

    move-result-object v0

    .line 24
    iget-object p2, p2, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 25
    iget-object v1, v0, LW80;->b:Lam0;

    check-cast v1, Lbm0;

    .line 26
    iget-object v1, v1, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 27
    iget-object p1, v0, LW80;->d:Lh90;

    invoke-virtual {p1, p2}, Lh90;->b(LbU0;)V

    .line 28
    iget-object p1, v0, LW80;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(LF90;)V
    .locals 5

    .line 9
    iget-object v0, p1, LF90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 10
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 11
    invoke-virtual {p0, v0}, LG90;->b(LbU0;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 12
    iput-wide v0, p1, LF90;->d:J

    .line 13
    :cond_0
    iget-boolean v0, p0, LG90;->d:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, LG90;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, LG90;->d:Z

    .line 16
    invoke-virtual {p0, p1}, LG90;->b(LF90;)V

    .line 17
    iget-object p1, p0, LG90;->b:Landroid/os/Handler;

    if-nez p1, :cond_2

    .line 18
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LG90;->b:Landroid/os/Handler;

    .line 19
    :cond_2
    iget-object p1, p0, LG90;->b:Landroid/os/Handler;

    .line 20
    new-instance v0, LD90;

    invoke-direct {v0, p0}, LD90;-><init>(LG90;)V

    const-wide/16 v1, 0xdc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public a(LbU0;)V
    .locals 1

    .line 5
    invoke-virtual {p0, p1}, LG90;->b(LbU0;)J

    .line 6
    invoke-virtual {p0}, LG90;->a()LW80;

    move-result-object v0

    invoke-virtual {v0, p1}, LW80;->b(LbU0;)V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 3

    .line 7
    new-instance v0, LF90;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LF90;-><init>(ILorg/chromium/chrome/browser/download/DownloadInfo;I)V

    .line 8
    invoke-virtual {p0, v0}, LG90;->a(LF90;)V

    return-void
.end method

.method public final b(LbU0;)J
    .locals 3

    .line 3
    iget-object v0, p0, LG90;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF90;

    .line 6
    iget-object v2, v1, LF90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 7
    iget-object v2, v2, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 8
    invoke-virtual {v2, p1}, LbU0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-wide v1, v1, LF90;->d:J

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-wide v1

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b()V
    .locals 4

    .line 140
    iget-object v0, p0, LG90;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF90;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0, v0}, LG90;->b(LF90;)V

    .line 142
    iget-object v0, p0, LG90;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LG90;->b:Landroid/os/Handler;

    .line 144
    :cond_0
    iget-object v0, p0, LG90;->b:Landroid/os/Handler;

    .line 145
    new-instance v1, LE90;

    invoke-direct {v1, p0}, LE90;-><init>(LG90;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, LG90;->d:Z

    :goto_0
    return-void
.end method

.method public final b(LF90;)V
    .locals 32

    move-object/from16 v0, p1

    .line 11
    iget-object v1, v0, LF90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 12
    iget v2, v0, LF90;->a:I

    if-eqz v2, :cond_e

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, LG90;->a()LW80;

    move-result-object v4

    .line 14
    iget-object v5, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 15
    iget-object v6, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 16
    iget-boolean v7, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->r:Z

    .line 17
    iget-boolean v8, v0, LF90;->j:Z

    .line 18
    iget-boolean v9, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 19
    iget-boolean v10, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->A:Z

    .line 20
    iget-object v11, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->C:Landroid/graphics/Bitmap;

    .line 21
    iget-object v12, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 22
    iget-boolean v13, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->F:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 23
    iget v0, v0, LF90;->k:I

    move/from16 v16, v0

    .line 24
    invoke-virtual/range {v4 .. v16}, LW80;->a(LbU0;Ljava/lang/String;ZZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZZZI)V

    goto/16 :goto_7

    .line 25
    :cond_1
    invoke-virtual/range {p0 .. p0}, LG90;->a()LW80;

    move-result-object v16

    .line 26
    iget-object v0, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 27
    iget-object v2, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 28
    iget-object v3, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->C:Landroid/graphics/Bitmap;

    .line 29
    iget-object v4, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 30
    iget-boolean v5, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->F:Z

    .line 31
    iget-boolean v6, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 32
    iget v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->E:I

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v1

    .line 33
    invoke-virtual/range {v16 .. v23}, LW80;->a(LbU0;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZZI)V

    goto/16 :goto_7

    .line 34
    :cond_2
    invoke-virtual/range {p0 .. p0}, LG90;->a()LW80;

    move-result-object v2

    .line 35
    iget-object v5, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 36
    iget-object v6, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 37
    iget-object v7, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 38
    iget-wide v8, v0, LF90;->f:J

    .line 39
    iget-boolean v10, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 40
    iget-boolean v11, v0, LF90;->h:Z

    .line 41
    iget-boolean v12, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->z:Z

    .line 42
    iget-object v13, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->C:Landroid/graphics/Bitmap;

    .line 43
    iget-object v14, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 44
    iget-boolean v15, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->F:Z

    .line 45
    iget-object v3, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->h:Ljava/lang/String;

    move-object/from16 v18, v3

    .line 46
    iget-wide v3, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->k:J

    .line 47
    sget-object v0, LzT;->a:Landroid/content/Context;

    move-object/from16 v19, v1

    .line 48
    invoke-virtual {v2, v5}, LW80;->a(LbU0;)I

    move-result v1

    move-wide/from16 v20, v3

    if-eqz v13, :cond_4

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    .line 49
    :goto_1
    iget-object v3, v2, LW80;->c:Landroid/graphics/Bitmap;

    move-object/from16 v23, v13

    if-nez v3, :cond_6

    if-eqz v4, :cond_6

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f08028b

    invoke-static {v3, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 51
    sget-object v13, LzT;->a:Landroid/content/Context;

    .line 52
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v25, v0

    const v0, 0x1050006

    .line 53
    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    move/from16 v26, v15

    const v15, 0x1050005

    .line 54
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v27, v14

    .line 55
    new-instance v14, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v14}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    move/from16 v28, v1

    int-to-float v1, v15

    move/from16 v29, v12

    int-to-float v12, v0

    .line 56
    invoke-virtual {v14, v1, v12}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const v12, 0x7f0600d7

    .line 58
    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 59
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v0, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 61
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    invoke-virtual {v14, v13, v1}, Landroid/graphics/drawable/shapes/OvalShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v15, v1

    int-to-float v1, v1

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v1, v14

    .line 64
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v31, v11

    sub-int v11, v0, v30

    int-to-float v11, v11

    div-float/2addr v11, v14

    const/4 v14, 0x0

    cmpl-float v30, v1, v14

    if-ltz v30, :cond_5

    cmpl-float v14, v11, v14

    if-ltz v14, :cond_5

    const/4 v14, 0x0

    .line 65
    invoke-virtual {v13, v3, v1, v11, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move/from16 v30, v10

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move/from16 v30, v10

    const/4 v10, 0x0

    invoke-direct {v1, v10, v10, v11, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v10, v10, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v13, v3, v1, v11, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 67
    :goto_2
    iput-object v12, v2, LW80;->c:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_6
    move-object/from16 v25, v0

    move/from16 v28, v1

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v29, v12

    move-object/from16 v27, v14

    move/from16 v26, v15

    :goto_3
    if-eqz v4, :cond_7

    .line 68
    iget-object v13, v2, LW80;->c:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_7
    move-object/from16 v13, v23

    .line 69
    :goto_4
    new-instance v0, Ll90;

    invoke-direct {v0}, Ll90;-><init>()V

    .line 70
    iput-object v5, v0, Ll90;->a:LbU0;

    .line 71
    iput-object v7, v0, Ll90;->b:Ljava/lang/String;

    .line 72
    iput-object v6, v0, Ll90;->c:Ljava/lang/String;

    .line 73
    iput-wide v8, v0, Ll90;->p:J

    move/from16 v1, v30

    .line 74
    iput-boolean v1, v0, Ll90;->f:Z

    move/from16 v1, v31

    .line 75
    iput-boolean v1, v0, Ll90;->h:Z

    move/from16 v1, v29

    .line 76
    iput-boolean v1, v0, Ll90;->g:Z

    .line 77
    iput-object v13, v0, Ll90;->d:Landroid/graphics/Bitmap;

    move/from16 v1, v28

    .line 78
    iput v1, v0, Ll90;->j:I

    move-object/from16 v3, v27

    .line 79
    iput-object v3, v0, Ll90;->k:Ljava/lang/String;

    move/from16 v3, v26

    .line 80
    iput-boolean v3, v0, Ll90;->l:Z

    move-object/from16 v3, v18

    .line 81
    iput-object v3, v0, Ll90;->n:Ljava/lang/String;

    move-wide/from16 v3, v20

    .line 82
    iput-wide v3, v0, Ll90;->r:J

    .line 83
    invoke-virtual {v0}, Ll90;->a()Lm90;

    move-result-object v0

    move-object/from16 v3, v25

    const/4 v4, 0x2

    .line 84
    invoke-static {v3, v4, v0, v1}, LU80;->a(Landroid/content/Context;ILm90;I)Landroid/app/Notification;

    move-result-object v0

    const/4 v6, 0x0

    .line 85
    invoke-virtual {v2, v1, v0, v5, v6}, LW80;->a(ILandroid/app/Notification;LbU0;Ld90;)V

    .line 86
    iget-object v6, v2, LW80;->e:Lj80;

    invoke-virtual {v6, v3, v4, v1, v0}, Lj80;->a(Landroid/content/Context;IILandroid/app/Notification;)V

    .line 87
    iget-object v0, v2, LW80;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    .line 88
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->z:Z

    if-eqz v2, :cond_f

    .line 89
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v2

    move-object/from16 v3, p1

    iget-boolean v4, v3, LF90;->g:Z

    iget-wide v5, v3, LF90;->f:J

    if-eqz v2, :cond_c

    const-string v3, "UseDownloadOfflineContentProvider"

    .line 90
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    .line 91
    iget-object v3, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 92
    iget-boolean v4, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->m:Z

    .line 93
    invoke-static {v3, v4}, Lorg/chromium/chrome/browser/download/DownloadUtils;->shouldAutoOpenDownload(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 94
    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadItem;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 95
    iput-wide v5, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    .line 96
    iget-object v3, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->a:LbU0;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LbU0;->b:Ljava/lang/String;

    .line 97
    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;)V

    goto :goto_5

    .line 98
    :cond_8
    iget-boolean v3, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 99
    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 100
    iget-object v3, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 101
    iget-object v2, v2, Lu80;->D:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 102
    :cond_9
    iget-boolean v3, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 103
    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 104
    iget-boolean v3, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 105
    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object v2

    .line 106
    iget-object v3, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 107
    iget-object v2, v2, Lu80;->D:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    const/4 v1, 0x1

    .line 108
    invoke-static {v1}, LD01;->a(I)LF01;

    move-result-object v1

    .line 109
    invoke-interface {v1}, LF01;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 110
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    if-eqz v0, :cond_b

    .line 111
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->a()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    goto :goto_6

    .line 112
    :cond_b
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 113
    :goto_6
    invoke-static {v0}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object v0

    const-string v1, "download_completed"

    .line 114
    invoke-interface {v0, v1}, LoT0;->c(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 115
    throw v0

    :cond_d
    move-object v0, v1

    .line 116
    invoke-virtual/range {p0 .. p0}, LG90;->a()LW80;

    move-result-object v1

    .line 117
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 118
    iget-object v3, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 119
    iget-boolean v6, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 120
    iget-boolean v7, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->A:Z

    .line 121
    iget-object v8, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->C:Landroid/graphics/Bitmap;

    .line 122
    iget-object v9, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 123
    iget-boolean v10, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->F:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 124
    iget v13, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->D:I

    .line 125
    invoke-virtual/range {v1 .. v13}, LW80;->a(LbU0;Ljava/lang/String;ZZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZZZI)V

    goto :goto_7

    :cond_e
    move-object v3, v0

    move-object v0, v1

    .line 126
    invoke-virtual/range {p0 .. p0}, LG90;->a()LW80;

    move-result-object v14

    .line 127
    iget-object v15, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 128
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 129
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->p:LfU0;

    .line 130
    iget-wide v4, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->j:J

    .line 131
    iget-wide v4, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->q:J

    .line 132
    iget-wide v6, v3, LF90;->e:J

    .line 133
    iget-boolean v8, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 134
    iget-boolean v3, v3, LF90;->i:Z

    .line 135
    iget-boolean v9, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->A:Z

    .line 136
    iget-object v10, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->C:Landroid/graphics/Bitmap;

    .line 137
    iget-object v11, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 138
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->F:Z

    const/16 v28, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move/from16 v22, v8

    move/from16 v23, v3

    move/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move/from16 v27, v0

    .line 139
    invoke-virtual/range {v14 .. v28}, LW80;->a(LbU0;Ljava/lang/String;LfU0;JJZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZI)V

    :cond_f
    :goto_7
    return-void
.end method

.method public b(Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 3

    .line 1
    new-instance v0, LF90;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LF90;-><init>(ILorg/chromium/chrome/browser/download/DownloadInfo;I)V

    .line 2
    invoke-virtual {p0, v0}, LG90;->a(LF90;)V

    return-void
.end method
