.class public final Lgs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhk;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final c:Ldt;

.field public final d:Landroid/content/ComponentName;

.field public final e:Let;

.field public final f:Let;

.field public g:Lok;

.field public h:Lcom/google/android/gms/cast/CastDevice;

.field public i:LS5;

.field public j:LH5;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ldt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgs;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lgs;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 4
    iput-object p3, p0, Lgs;->c:Ldt;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lgs;->d:Landroid/content/ComponentName;

    .line 6
    new-instance p2, Let;

    invoke-direct {p2, p1}, Let;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgs;->e:Let;

    .line 7
    new-instance p1, Lhs;

    invoke-direct {p1, p0}, Lhs;-><init>(Lgs;)V

    .line 8
    iput-object p1, p2, Let;->g:Lft;

    .line 9
    new-instance p1, Let;

    iget-object p2, p0, Lgs;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Let;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lgs;->f:Let;

    .line 10
    new-instance p2, Lis;

    invoke-direct {p2, p0}, Lis;-><init>(Lgs;)V

    .line 11
    iput-object p2, p1, Let;->g:Lft;

    return-void
.end method


# virtual methods
.method public final a()LQ4;
    .locals 2

    .line 66
    iget-object v0, p0, Lgs;->i:LS5;

    .line 67
    iget-object v0, v0, LS5;->b:Lx5;

    .line 68
    invoke-virtual {v0}, Lx5;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, LQ4;

    invoke-direct {v0}, LQ4;-><init>()V

    return-object v0

    .line 70
    :cond_0
    new-instance v1, LQ4;

    invoke-direct {v1, v0}, LQ4;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-object v1
.end method

.method public final a(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    if-nez p1, :cond_0

    .line 15
    iget-object v1, v0, Lgs;->i:LS5;

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v6, 0x0

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    move-object v15, v2

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v16, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 18
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 p1, v2

    invoke-direct/range {v2 .. v18}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 19
    iget-object v1, v1, LS5;->a:LI5;

    invoke-interface {v1, v2}, LI5;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 20
    iget-object v1, v0, Lgs;->i:LS5;

    .line 21
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 22
    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v3, v2}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 23
    iget-object v1, v1, LS5;->a:LI5;

    invoke-interface {v1, v3}, LI5;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 24
    :cond_0
    iget v1, v8, Lcom/google/android/gms/cast/MediaInfo;->x:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x5

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x200

    :goto_0
    move-wide/from16 v18, v1

    .line 25
    iget-object v9, v0, Lgs;->i:LS5;

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-wide/16 v5, 0x0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    move-object v14, v1

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v15, -0x1

    const-wide/16 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 28
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v1, v2

    move-object/from16 v20, v2

    move/from16 v2, p1

    move-object v0, v9

    move-wide/from16 v8, v18

    invoke-direct/range {v1 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 29
    iget-object v0, v0, LS5;->a:LI5;

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, LI5;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    move-object/from16 v0, p0

    .line 30
    iget-object v1, v0, Lgs;->i:LS5;

    .line 31
    iget-object v2, v0, Lgs;->d:Landroid/content/ComponentName;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_1

    .line 32
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 33
    iget-object v4, v0, Lgs;->d:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 34
    iget-object v4, v0, Lgs;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 35
    :goto_1
    iget-object v1, v1, LS5;->a:LI5;

    invoke-interface {v1, v2}, LI5;->a(Landroid/app/PendingIntent;)V

    move-object/from16 v1, p2

    .line 36
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lgs;->a()LQ4;

    move-result-object v4

    const-string v5, "com.google.android.gms.cast.metadata.TITLE"

    .line 38
    invoke-virtual {v2, v5}, Lcom/google/android/gms/cast/MediaMetadata;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.metadata.TITLE"

    .line 39
    invoke-virtual {v4, v7, v6}, LQ4;->a(Ljava/lang/String;Ljava/lang/String;)LQ4;

    .line 40
    invoke-virtual {v2, v5}, Lcom/google/android/gms/cast/MediaMetadata;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.metadata.DISPLAY_TITLE"

    .line 41
    invoke-virtual {v4, v6, v5}, LQ4;->a(Ljava/lang/String;Ljava/lang/String;)LQ4;

    const-string v5, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 42
    invoke-virtual {v2, v5}, Lcom/google/android/gms/cast/MediaMetadata;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 43
    invoke-virtual {v4, v5, v2}, LQ4;->a(Ljava/lang/String;Ljava/lang/String;)LQ4;

    .line 44
    iget-wide v1, v1, Lcom/google/android/gms/cast/MediaInfo;->A:J

    const-string v5, "android.media.metadata.DURATION"

    .line 45
    invoke-virtual {v4, v5, v1, v2}, LQ4;->a(Ljava/lang/String;J)LQ4;

    .line 46
    iget-object v1, v0, Lgs;->i:LS5;

    invoke-virtual {v4}, LQ4;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    .line 47
    iget-object v1, v1, LS5;->a:LI5;

    invoke-interface {v1, v2}, LI5;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 48
    throw v3
.end method

.method public final a(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-nez p2, :cond_1

    const-string p2, "android.media.metadata.DISPLAY_ICON"

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lgs;->i:LS5;

    .line 50
    invoke-virtual {p0}, Lgs;->a()LQ4;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p2, p1}, LQ4;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)LQ4;

    .line 52
    invoke-virtual {v1}, LQ4;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 53
    iget-object p2, v0, LS5;->a:LI5;

    invoke-interface {p2, p1}, LI5;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 54
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 56
    iget-object v0, p0, Lgs;->i:LS5;

    .line 57
    invoke-virtual {p0}, Lgs;->a()LQ4;

    move-result-object v1

    .line 58
    invoke-virtual {v1, p2, p1}, LQ4;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)LQ4;

    .line 59
    invoke-virtual {v1}, LQ4;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 60
    iget-object p2, v0, LS5;->a:LI5;

    invoke-interface {p2, p1}, LI5;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 61
    iget-object p2, p0, Lgs;->i:LS5;

    .line 62
    invoke-virtual {p0}, Lgs;->a()LQ4;

    move-result-object v0

    const-string v1, "android.media.metadata.ALBUM_ART"

    .line 63
    invoke-virtual {v0, v1, p1}, LQ4;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)LQ4;

    .line 64
    invoke-virtual {v0}, LQ4;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 65
    iget-object p2, p2, LS5;->a:LI5;

    invoke-interface {p2, p1}, LI5;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 7

    .line 1
    iget-object p1, p0, Lgs;->g:Lok;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    :goto_0
    if-nez v1, :cond_2

    move-object v2, v0

    goto :goto_1

    .line 4
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz p1, :cond_a

    if-eqz v1, :cond_a

    if-nez v2, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    iget-object v2, p0, Lgs;->g:Lok;

    invoke-virtual {v2}, Lok;->e()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_5

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_7

    const/4 p1, 0x4

    if-eq v2, p1, :cond_9

    goto :goto_3

    :cond_4
    const/4 v3, 0x3

    goto :goto_3

    .line 6
    :cond_5
    iget v2, p1, Lcom/google/android/gms/cast/MediaStatus;->B:I

    .line 7
    iget-object v5, p0, Lgs;->g:Lok;

    .line 8
    invoke-virtual {v5}, Lok;->i()Z

    move-result v5

    if-eqz v5, :cond_6

    if-ne v2, v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 9
    :goto_2
    iget v2, p1, Lcom/google/android/gms/cast/MediaStatus;->H:I

    if-eqz v6, :cond_8

    :cond_7
    const/4 v3, 0x2

    goto :goto_3

    .line 10
    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/MediaStatus;->a(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    move-object v1, p1

    :cond_9
    const/4 v3, 0x6

    .line 12
    :cond_a
    :goto_3
    invoke-virtual {p0, v3, v1}, Lgs;->a(ILcom/google/android/gms/cast/MediaInfo;)V

    if-nez v3, :cond_b

    .line 13
    throw v0

    .line 14
    :cond_b
    throw v0
.end method
