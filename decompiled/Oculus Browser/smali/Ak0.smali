.class public LAk0;
.super LP01;
.source "PG"


# instance fields
.field public final synthetic b:LDk0;


# direct methods
.method public constructor <init>(LDk0;LO01;)V
    .locals 0

    .line 1
    iput-object p1, p0, LAk0;->b:LDk0;

    invoke-direct {p0, p2}, LP01;-><init>(LO01;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LAk0;->b:LDk0;

    invoke-static {v0}, LDk0;->b(LDk0;)V

    .line 2
    iget-object v0, p0, LAk0;->b:LDk0;

    .line 3
    iget-object v1, v0, LDk0;->h:LP01;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, LP01;->b()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, LDk0;->h:LP01;

    .line 6
    iput-object v1, v0, LDk0;->o:Ljava/util/Set;

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    .line 83
    iget-object v1, v0, LAk0;->b:LDk0;

    .line 84
    iget-object v8, v1, LDk0;->n:Llk0;

    .line 85
    iget-object v2, v8, Llk0;->a:Lorg/chromium/content_public/browser/WebContents;

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 86
    :cond_0
    iput-object v1, v8, Llk0;->e:Lkk0;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v5, v1

    goto/16 :goto_8

    .line 87
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v1

    const-wide/16 v6, 0x0

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/chromium/services/media_session/MediaImage;

    if-nez v9, :cond_3

    const-wide/16 v3, 0x0

    goto/16 :goto_7

    .line 88
    :cond_3
    iget-object v10, v9, Lorg/chromium/services/media_session/MediaImage;->c:Ljava/util/List;

    .line 89
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const-wide v11, 0x3fd999999999999aL    # 0.4

    if-eqz v10, :cond_4

    move-wide v3, v11

    goto/16 :goto_7

    .line 90
    :cond_4
    iget-object v10, v9, Lorg/chromium/services/media_session/MediaImage;->c:Ljava/util/List;

    .line 91
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v13, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 92
    invoke-virtual {v8, v15}, Llk0;->a(Landroid/graphics/Rect;)D

    move-result-wide v3

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    goto :goto_1

    .line 93
    :cond_5
    iget-object v3, v9, Lorg/chromium/services/media_session/MediaImage;->a:Ljava/lang/String;

    .line 94
    iget-object v4, v9, Lorg/chromium/services/media_session/MediaImage;->b:Ljava/lang/String;

    .line 95
    invoke-static {v3}, LFT;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "bmp"

    .line 96
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "image/bmp"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    const-string v10, "gif"

    .line 97
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "image/gif"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    const-string v10, "icon"

    .line 98
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "image/x-icon"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    const-string v10, "png"

    .line 99
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "image/png"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    const-string v10, "jpeg"

    .line 100
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "jpg"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "image/jpeg"

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    const-wide v11, 0x3fe3333333333333L    # 0.6

    goto :goto_6

    :cond_b
    :goto_2
    const-wide v11, 0x3fe6666666666666L    # 0.7

    goto :goto_6

    :cond_c
    :goto_3
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_d
    :goto_4
    const-wide v11, 0x3fd3333333333333L    # 0.3

    goto :goto_6

    :cond_e
    :goto_5
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    :cond_f
    :goto_6
    mul-double v13, v13, v11

    move-wide v3, v13

    :goto_7
    cmpl-double v10, v3, v6

    if-lez v10, :cond_2

    move-wide v6, v3

    move-object v5, v9

    goto/16 :goto_0

    :cond_10
    :goto_8
    if-nez v5, :cond_12

    .line 102
    iput-object v1, v8, Llk0;->f:Ljava/lang/String;

    .line 103
    iget-object v2, v8, Llk0;->e:Lkk0;

    check-cast v2, LDk0;

    if-eqz v2, :cond_11

    .line 104
    invoke-static {v1}, Lxk0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, LDk0;->c:Landroid/graphics/Bitmap;

    .line 105
    iput-object v1, v2, LDk0;->d:Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {v2, v3}, LDk0;->a(Landroid/graphics/Bitmap;)V

    .line 107
    invoke-virtual {v8}, Llk0;->a()V

    goto :goto_9

    .line 108
    :cond_11
    throw v1

    .line 109
    :cond_12
    iget-object v1, v5, Lorg/chromium/services/media_session/MediaImage;->a:Ljava/lang/String;

    .line 110
    iget-object v2, v8, Llk0;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_9

    .line 111
    :cond_13
    iget-object v3, v5, Lorg/chromium/services/media_session/MediaImage;->a:Ljava/lang/String;

    .line 112
    iput-object v3, v8, Llk0;->f:Ljava/lang/String;

    .line 113
    iget-object v2, v8, Llk0;->a:Lorg/chromium/content_public/browser/WebContents;

    const/4 v4, 0x0

    const/16 v5, 0x800

    const/4 v6, 0x0

    move-object v7, v8

    invoke-interface/range {v2 .. v7}, Lorg/chromium/content_public/browser/WebContents;->a(Ljava/lang/String;ZIZLorg/chromium/content_public/browser/ImageDownloadCallback;)I

    move-result v1

    iput v1, v8, Llk0;->d:I

    .line 114
    :goto_9
    iget-object v1, v0, LAk0;->b:LDk0;

    invoke-static {v1}, LDk0;->a(LDk0;)V

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 2

    .line 77
    iget-object v0, p0, LAk0;->b:LDk0;

    .line 78
    iput-object p1, v0, LDk0;->o:Ljava/util/Set;

    .line 79
    invoke-virtual {v0}, LDk0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, v0, LDk0;->j:Lnk0;

    iget-object v1, v0, LDk0;->o:Ljava/util/Set;

    .line 81
    iput-object v1, p1, Lnk0;->n:Ljava/util/Set;

    .line 82
    invoke-virtual {v0}, LDk0;->d()V

    :goto_0
    return-void
.end method

.method public a(Lorg/chromium/services/media_session/MediaMetadata;)V
    .locals 1

    .line 74
    iget-object v0, p0, LAk0;->b:LDk0;

    .line 75
    iput-object p1, v0, LDk0;->l:Lorg/chromium/services/media_session/MediaMetadata;

    .line 76
    invoke-static {v0}, LDk0;->a(LDk0;)V

    return-void
.end method

.method public a(Lorg/chromium/services/media_session/MediaPosition;)V
    .locals 2

    .line 115
    iget-object v0, p0, LAk0;->b:LDk0;

    .line 116
    iput-object p1, v0, LDk0;->p:Lorg/chromium/services/media_session/MediaPosition;

    .line 117
    invoke-virtual {v0}, LDk0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, v0, LDk0;->j:Lnk0;

    iget-object v1, v0, LDk0;->p:Lorg/chromium/services/media_session/MediaPosition;

    .line 119
    iput-object v1, p1, Lnk0;->o:Lorg/chromium/services/media_session/MediaPosition;

    .line 120
    invoke-virtual {v0}, LDk0;->d()V

    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, LAk0;->b:LDk0;

    .line 8
    iget-object p2, p1, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p1, LDk0;->r:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p2, Lzk0;

    invoke-direct {p2, p1}, Lzk0;-><init>(LDk0;)V

    iput-object p2, p1, LDk0;->r:Ljava/lang/Runnable;

    .line 11
    iget-object v1, p1, LDk0;->q:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    iput-object v0, p1, LDk0;->j:Lnk0;

    .line 13
    iput-object v0, p1, LDk0;->d:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    .line 14
    :cond_2
    iget-object p1, p0, LAk0;->b:LDk0;

    .line 15
    iget-object p1, p1, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 16
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    invoke-static {p1}, LzO0;->a(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "org.chromium.chrome.browser.metrics.MediaNotificationUma.EXTRA_CLICK_SOURCE"

    .line 17
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    iget-object v2, p0, LAk0;->b:LDk0;

    .line 19
    iget-object v3, v2, LDk0;->k:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 20
    iget-object v3, v2, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 21
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LDk0;->a(LDk0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    iput-object v3, v2, LDk0;->k:Ljava/lang/String;

    .line 23
    :cond_3
    iget-object v2, p0, LAk0;->b:LDk0;

    .line 24
    invoke-virtual {v2}, LDk0;->a()Lorg/chromium/services/media_session/MediaMetadata;

    move-result-object v3

    .line 25
    iput-object v3, v2, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    .line 26
    iget-object v2, p0, LAk0;->b:LDk0;

    .line 27
    iget-object v3, v2, LDk0;->c:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    goto :goto_1

    .line 28
    :cond_4
    iget-object v3, v2, LDk0;->d:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, v0

    .line 29
    :goto_1
    iput-object v3, v2, LDk0;->f:Landroid/graphics/Bitmap;

    .line 30
    iget-object v0, p0, LAk0;->b:LDk0;

    new-instance v2, Lnk0;

    invoke-direct {v2}, Lnk0;-><init>()V

    iget-object v3, p0, LAk0;->b:LDk0;

    .line 31
    iget-object v4, v3, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    .line 32
    iput-object v4, v2, Lnk0;->a:Lorg/chromium/services/media_session/MediaMetadata;

    .line 33
    iput-boolean p2, v2, Lnk0;->b:Z

    .line 34
    iget-object p2, v3, LDk0;->g:Ljava/lang/String;

    .line 35
    iput-object p2, v2, Lnk0;->c:Ljava/lang/String;

    .line 36
    iget-object p2, v3, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 37
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p2

    .line 38
    iput p2, v2, Lnk0;->d:I

    .line 39
    iget-object p2, p0, LAk0;->b:LDk0;

    .line 40
    iget-object v3, p2, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 41
    iget-boolean v4, v3, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 42
    iput-boolean v4, v2, Lnk0;->e:Z

    const v5, 0x7f080086

    .line 43
    iput v5, v2, Lnk0;->f:I

    .line 44
    iget-object v5, p2, LDk0;->f:Landroid/graphics/Bitmap;

    .line 45
    iput-object v5, v2, Lnk0;->g:Landroid/graphics/Bitmap;

    .line 46
    iget-object v6, p2, LDk0;->c:Landroid/graphics/Bitmap;

    .line 47
    iput-object v6, v2, Lnk0;->i:Landroid/graphics/Bitmap;

    const/4 v6, 0x5

    .line 48
    iput v6, v2, Lnk0;->j:I

    .line 49
    iput-object p1, v2, Lnk0;->l:Landroid/content/Intent;

    const p1, 0x7f0b025b

    .line 50
    iput p1, v2, Lnk0;->k:I

    .line 51
    iget-object p1, p2, LDk0;->s:Lpk0;

    .line 52
    iput-object p1, v2, Lnk0;->m:Lpk0;

    .line 53
    iget-object p1, p2, LDk0;->o:Ljava/util/Set;

    .line 54
    iput-object p1, v2, Lnk0;->n:Ljava/util/Set;

    .line 55
    iget-object p1, p2, LDk0;->p:Lorg/chromium/services/media_session/MediaPosition;

    .line 56
    iput-object p1, v2, Lnk0;->o:Lorg/chromium/services/media_session/MediaPosition;

    .line 57
    iput-object v2, v0, LDk0;->j:Lnk0;

    if-nez v4, :cond_9

    if-nez v5, :cond_a

    .line 58
    iget-boolean p1, p2, LDk0;->e:Z

    if-nez p1, :cond_6

    goto :goto_2

    .line 59
    :cond_6
    iget-object p1, v3, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez p1, :cond_7

    goto :goto_2

    .line 60
    :cond_7
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x72

    .line 61
    iget-object v1, p2, LDk0;->b:LIa0;

    if-nez v1, :cond_8

    .line 62
    new-instance v1, LIa0;

    iget-object v2, p2, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-direct {v1, v2}, LIa0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v1, p2, LDk0;->b:LIa0;

    .line 63
    :cond_8
    new-instance v1, LCk0;

    invoke-direct {v1, p2}, LCk0;-><init>(LDk0;)V

    .line 64
    iget-object p2, p2, LDk0;->b:LIa0;

    invoke-virtual {p2, p1, v0, v1}, LIa0;->a(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_a

    .line 65
    :cond_9
    iget-object p1, p0, LAk0;->b:LDk0;

    .line 66
    iget-object p1, p1, LDk0;->j:Lnk0;

    const p2, 0x7f080087

    .line 67
    iput p2, p1, Lnk0;->h:I

    .line 68
    :cond_a
    iget-object p1, p0, LAk0;->b:LDk0;

    .line 69
    invoke-virtual {p1}, LDk0;->d()V

    .line 70
    iget-object p1, p0, LAk0;->b:LDk0;

    .line 71
    iget-object p2, p1, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 72
    invoke-virtual {p1, p2}, LDk0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 p2, 0x3

    .line 73
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_b
    return-void
.end method
