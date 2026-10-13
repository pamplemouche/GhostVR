.class public LW80;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public b:Lam0;

.field public c:Landroid/graphics/Bitmap;

.field public d:Lh90;

.field public e:Lj80;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LW80;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lbm0;

    .line 4
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Lbm0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LW80;->b:Lam0;

    .line 6
    sget-object v0, Lf90;->a:Lh90;

    .line 7
    iput-object v0, p0, LW80;->d:Lh90;

    .line 8
    new-instance v0, Lj80;

    invoke-direct {v0}, Lj80;-><init>()V

    iput-object v0, p0, LW80;->e:Lj80;

    return-void
.end method

.method public static a(Landroid/content/Context;Ld90;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 82
    :cond_0
    iget-boolean v1, p1, Ld90;->e:Z

    if-nez v1, :cond_1

    return v0

    .line 83
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;)Z

    move-result p0

    .line 84
    iget-boolean p1, p1, Ld90;->c:Z

    if-nez p1, :cond_2

    if-nez p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static c()I
    .locals 5

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const v1, 0xf4240

    const-string v2, "NextDownloadNotificationId"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v3, 0x1

    .line 3
    :goto_0
    invoke-static {v0, v2, v1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return v3
.end method


# virtual methods
.method public final a(LbU0;)I
    .locals 1

    .line 85
    iget-object v0, p0, LW80;->d:Lh90;

    .line 86
    invoke-virtual {v0, p1}, Lh90;->a(LbU0;)Ld90;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    iget p1, p1, Ld90;->a:I

    return p1

    .line 88
    :cond_0
    invoke-static {}, LW80;->c()I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 5

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v1

    .line 90
    invoke-interface {v1}, LF01;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/profiles/Profile;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 92
    :goto_0
    iget-object v2, p0, LW80;->d:Lh90;

    .line 93
    iget-object v2, v2, Lh90;->a:Ljava/util/List;

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld90;

    .line 96
    iget-boolean v4, v3, Ld90;->b:Z

    if-nez v4, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    iget-object v3, v3, Ld90;->f:LbU0;

    .line 98
    invoke-virtual {p0, v3}, LW80;->b(LbU0;)V

    if-eqz v1, :cond_1

    .line 99
    invoke-static {v3}, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->a(LbU0;)Lc90;

    move-result-object v4

    .line 100
    invoke-interface {v4, v3, v0}, Lc90;->b(LbU0;Z)V

    .line 101
    invoke-interface {v4}, Lc90;->a()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(ILandroid/app/Notification;LbU0;Ld90;)V
    .locals 4

    .line 64
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 65
    :try_start_0
    iget-object v1, p0, LW80;->b:Lam0;

    check-cast v1, Lbm0;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "NotifManagerProxy"

    const-string v3, "Failed to create notification."

    .line 66
    invoke-static {v1, v3, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, v1, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    invoke-virtual {v0}, LqU;->close()V

    .line 69
    iget-object p1, p0, LW80;->d:Lh90;

    .line 70
    invoke-virtual {p1, p3}, Lh90;->a(LbU0;)Ld90;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 71
    :cond_2
    sget-object p1, Lnm0;->a:Lom0;

    .line 72
    invoke-static {p3}, LcU0;->b(LbU0;)Z

    move-result v0

    .line 73
    invoke-virtual {p1, v0, p2}, Lom0;->a(ILandroid/app/Notification;)V

    :goto_2
    if-eqz p4, :cond_3

    .line 74
    iget-object p1, p0, LW80;->d:Lh90;

    .line 75
    invoke-virtual {p1, p4, v2}, Lh90;->a(Ld90;Z)V

    goto :goto_3

    .line 76
    :cond_3
    iget-object p1, p0, LW80;->d:Lh90;

    invoke-virtual {p1, p3}, Lh90;->b(LbU0;)V

    :goto_3
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 77
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 78
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 79
    :try_start_3
    invoke-virtual {v0}, LqU;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p3

    .line 80
    sget-object p4, LRB;->a:LLB;

    invoke-virtual {p4, p1, p3}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 81
    :goto_4
    throw p2
.end method

.method public a(LbU0;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZZI)V
    .locals 3

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object p2, p0, LW80;->d:Lh90;

    .line 47
    invoke-virtual {p2, p1}, Lh90;->a(LbU0;)Ld90;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object p2, p2, Ld90;->d:Ljava/lang/String;

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, LW80;->a(LbU0;)I

    move-result v0

    .line 50
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 51
    new-instance v2, Ll90;

    invoke-direct {v2}, Ll90;-><init>()V

    .line 52
    iput-object p1, v2, Ll90;->a:LbU0;

    .line 53
    iput-object p2, v2, Ll90;->b:Ljava/lang/String;

    .line 54
    iput-object p3, v2, Ll90;->d:Landroid/graphics/Bitmap;

    .line 55
    iput-boolean p6, v2, Ll90;->f:Z

    .line 56
    iput-object p4, v2, Ll90;->k:Ljava/lang/String;

    .line 57
    iput-boolean p5, v2, Ll90;->l:Z

    .line 58
    iput p7, v2, Ll90;->s:I

    .line 59
    invoke-virtual {v2}, Ll90;->a()Lm90;

    move-result-object p2

    const/4 p3, 0x4

    .line 60
    invoke-static {v1, p3, p2, v0}, LU80;->a(Landroid/content/Context;ILm90;I)Landroid/app/Notification;

    move-result-object p2

    const/4 p4, 0x0

    .line 61
    invoke-virtual {p0, v0, p2, p1, p4}, LW80;->a(ILandroid/app/Notification;LbU0;Ld90;)V

    .line 62
    iget-object p4, p0, LW80;->e:Lj80;

    invoke-virtual {p4, v1, p3, v0, p2}, Lj80;->a(Landroid/content/Context;IILandroid/app/Notification;)V

    .line 63
    iget-object p2, p0, LW80;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(LbU0;Ljava/lang/String;LfU0;JJZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    .line 2
    invoke-virtual/range {p0 .. p1}, LW80;->a(LbU0;)I

    move-result v10

    .line 3
    sget-object v11, LzT;->a:Landroid/content/Context;

    .line 4
    new-instance v1, Ll90;

    invoke-direct {v1}, Ll90;-><init>()V

    .line 5
    iput-object v9, v1, Ll90;->a:LbU0;

    move-object/from16 v6, p2

    .line 6
    iput-object v6, v1, Ll90;->b:Ljava/lang/String;

    move-object/from16 v2, p3

    .line 7
    iput-object v2, v1, Ll90;->m:LfU0;

    move-wide/from16 v2, p4

    .line 8
    iput-wide v2, v1, Ll90;->q:J

    move-wide/from16 v2, p6

    .line 9
    iput-wide v2, v1, Ll90;->o:J

    move/from16 v4, p8

    .line 10
    iput-boolean v4, v1, Ll90;->f:Z

    move/from16 v8, p10

    .line 11
    iput-boolean v8, v1, Ll90;->i:Z

    move-object/from16 v2, p11

    .line 12
    iput-object v2, v1, Ll90;->d:Landroid/graphics/Bitmap;

    move-object/from16 v2, p12

    .line 13
    iput-object v2, v1, Ll90;->k:Ljava/lang/String;

    move/from16 v2, p13

    .line 14
    iput-boolean v2, v1, Ll90;->l:Z

    .line 15
    iput v10, v1, Ll90;->j:I

    move/from16 v2, p14

    .line 16
    iput v2, v1, Ll90;->t:I

    .line 17
    invoke-virtual {v1}, Ll90;->a()Lm90;

    move-result-object v1

    const/4 v12, 0x0

    .line 18
    invoke-static {v11, v12, v1, v10}, LU80;->a(Landroid/content/Context;ILm90;I)Landroid/app/Notification;

    move-result-object v13

    .line 19
    new-instance v14, Ld90;

    const/4 v7, 0x1

    move-object v1, v14

    move-object/from16 v2, p1

    move v3, v10

    move/from16 v5, p9

    invoke-direct/range {v1 .. v8}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    invoke-virtual {p0, v10, v13, v9, v14}, LW80;->a(ILandroid/app/Notification;LbU0;Ld90;)V

    .line 20
    iget-object v1, v0, LW80;->e:Lj80;

    invoke-virtual {v1, v11, v12, v10, v13}, Lj80;->a(Landroid/content/Context;IILandroid/app/Notification;)V

    .line 21
    iget-object v1, v0, LW80;->a:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LW80;->a:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(LbU0;Ljava/lang/String;ZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZZI)V
    .locals 15

    .line 1
    invoke-static {}, LfU0;->c()LfU0;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p10

    invoke-virtual/range {v0 .. v14}, LW80;->a(LbU0;Ljava/lang/String;LfU0;JJZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZI)V

    return-void
.end method

.method public a(LbU0;Ljava/lang/String;ZZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZZZI)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p1

    .line 22
    iget-object v0, v11, LW80;->d:Lh90;

    .line 23
    invoke-virtual {v0, v12}, Lh90;->a(LbU0;)Ld90;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p5

    .line 24
    invoke-virtual/range {v0 .. v7}, LW80;->a(LbU0;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZZI)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 25
    iget-boolean v1, v0, Ld90;->e:Z

    if-nez v1, :cond_1

    if-nez p11, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 26
    :cond_2
    iget-boolean v1, v0, Ld90;->c:Z

    move v4, v1

    :goto_0
    if-nez p4, :cond_5

    if-eqz p12, :cond_3

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    .line 27
    invoke-virtual/range {p0 .. p1}, LW80;->a(LbU0;)I

    move-result v0

    goto :goto_1

    :cond_4
    iget v0, v0, Ld90;->a:I

    :goto_1
    move v8, v0

    .line 28
    sget-object v9, LzT;->a:Landroid/content/Context;

    .line 29
    new-instance v0, Ll90;

    invoke-direct {v0}, Ll90;-><init>()V

    .line 30
    iput-object v12, v0, Ll90;->a:LbU0;

    move-object/from16 v5, p2

    .line 31
    iput-object v5, v0, Ll90;->b:Ljava/lang/String;

    move/from16 v3, p5

    .line 32
    iput-boolean v3, v0, Ll90;->f:Z

    move/from16 v7, p6

    .line 33
    iput-boolean v7, v0, Ll90;->i:Z

    move-object/from16 v6, p7

    .line 34
    iput-object v6, v0, Ll90;->d:Landroid/graphics/Bitmap;

    move-object/from16 v10, p8

    .line 35
    iput-object v10, v0, Ll90;->k:Ljava/lang/String;

    move/from16 v13, p9

    .line 36
    iput-boolean v13, v0, Ll90;->l:Z

    .line 37
    iput v8, v0, Ll90;->j:I

    .line 38
    invoke-virtual {v0}, Ll90;->a()Lm90;

    move-result-object v0

    const/4 v10, 0x1

    .line 39
    invoke-static {v9, v10, v0, v8}, LU80;->a(Landroid/content/Context;ILm90;I)Landroid/app/Notification;

    move-result-object v13

    .line 40
    new-instance v14, Ld90;

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    invoke-virtual {p0, v8, v13, v12, v14}, LW80;->a(ILandroid/app/Notification;LbU0;Ld90;)V

    .line 41
    iget-object v0, v11, LW80;->e:Lj80;

    invoke-virtual {v0, v9, v10, v8, v13}, Lj80;->a(Landroid/content/Context;IILandroid/app/Notification;)V

    .line 42
    iget-object v0, v11, LW80;->a:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_5
    :goto_2
    move-object/from16 v5, p2

    move/from16 v3, p5

    move/from16 v7, p6

    move-object/from16 v6, p7

    move-object/from16 v10, p8

    move/from16 v13, p9

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p12

    .line 43
    invoke-virtual/range {v0 .. v10}, LW80;->a(LbU0;Ljava/lang/String;ZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZZI)V

    .line 44
    iget-object v0, v11, LW80;->a:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 15

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDownloadAutoResumptionEnabledInNative()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {}, Lb90;->c()Lb90;

    move-result-object v0

    invoke-virtual {v0}, Lb90;->a()V

    .line 13
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x5

    const-string v2, "ResumptionAttemptLeft"

    .line 14
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 15
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    .line 16
    invoke-static {v1, v2, v0}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 17
    iget-object v0, p0, LW80;->d:Lh90;

    .line 18
    iget-object v0, v0, Lh90;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld90;

    .line 21
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 22
    invoke-static {v3, v2}, LW80;->a(Landroid/content/Context;Ld90;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    iget-object v3, p0, LW80;->a:Ljava/util/List;

    iget-object v4, v2, Ld90;->f:LbU0;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    iget-object v5, v2, Ld90;->f:LbU0;

    iget-object v6, v2, Ld90;->d:Ljava/lang/String;

    iget-boolean v7, v2, Ld90;->b:Z

    iget-boolean v8, v2, Ld90;->c:Z

    iget-boolean v9, v2, Ld90;->g:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v14}, LW80;->a(LbU0;Ljava/lang/String;ZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZZI)V

    .line 25
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

    .line 26
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v4, v2, Ld90;->f:LbU0;

    iget-object v4, v4, LbU0;->b:Ljava/lang/String;

    const-string v5, "org.chromium.chrome.browser.download.DownloadContentId_Id"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object v2, v2, Ld90;->f:LbU0;

    iget-object v2, v2, LbU0;->a:Ljava/lang/String;

    const-string v4, "org.chromium.chrome.browser.download.DownloadContentId_Namespace"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "org.chromium.chrome.browser.download.IS_AUTO_RESUMPTION"

    const/4 v4, 0x1

    .line 29
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 31
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b(LbU0;)V
    .locals 4

    .line 1
    iget-object v0, p0, LW80;->d:Lh90;

    .line 2
    invoke-virtual {v0, p1}, Lh90;->a(LbU0;)Ld90;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, v0, Ld90;->a:I

    .line 4
    iget-object v2, p0, LW80;->b:Lam0;

    check-cast v2, Lbm0;

    .line 5
    iget-object v2, v2, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 6
    iget-object v1, p0, LW80;->d:Lh90;

    invoke-virtual {v1, p1}, Lh90;->b(LbU0;)V

    .line 7
    iget-object v1, p0, LW80;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, LW80;->e:Lj80;

    .line 9
    sget-object v1, LzT;->a:Landroid/content/Context;

    const/4 v2, 0x3

    .line 10
    iget v0, v0, Ld90;->a:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lj80;->a(Landroid/content/Context;IILandroid/app/Notification;)V

    return-void
.end method
