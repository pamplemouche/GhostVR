.class public Lpx0;
.super LkW;
.source "PG"


# instance fields
.field public a:Lox0;

.field public b:Landroid/net/Uri;

.field public c:I

.field public d:I

.field public e:J

.field public f:Landroid/content/ContentResolver;

.field public g:Landroid/media/MediaMetadataRetriever;

.field public h:I


# direct methods
.method public constructor <init>(Lox0;Landroid/content/ContentResolver;Landroid/net/Uri;IIJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lpx0;->g:Landroid/media/MediaMetadataRetriever;

    .line 3
    iput-object p1, p0, Lpx0;->a:Lox0;

    .line 4
    iput-object p2, p0, Lpx0;->f:Landroid/content/ContentResolver;

    .line 5
    iput-object p3, p0, Lpx0;->b:Landroid/net/Uri;

    .line 6
    iput p4, p0, Lpx0;->c:I

    .line 7
    iput p5, p0, Lpx0;->d:I

    .line 8
    iput-wide p6, p0, Lpx0;->e:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    .line 2
    div-long v4, v0, v2

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    .line 3
    div-long v6, v0, v2

    mul-long v2, v2, v6

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    cmp-long v10, v4, v2

    if-lez v10, :cond_1

    .line 4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v9

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "%02d:%02d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground()Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 2
    :try_start_0
    iget-object v4, p0, Lpx0;->f:Landroid/content/ContentResolver;

    iget-object v5, p0, Lpx0;->b:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v5, p0, Lpx0;->g:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 4
    iget-object v5, p0, Lpx0;->g:Landroid/media/MediaMetadataRetriever;

    const/16 v6, 0x9

    .line 5
    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 6
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 7
    iget v8, p0, Lpx0;->d:I

    if-le v8, v0, :cond_1

    iget v8, p0, Lpx0;->d:I

    int-to-long v8, v8

    iget-wide v10, p0, Lpx0;->e:J

    mul-long v8, v8, v10

    cmp-long v10, v8, v6

    if-lez v10, :cond_1

    .line 8
    iget v8, p0, Lpx0;->d:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    iput-wide v6, p0, Lpx0;->e:J

    .line 9
    :cond_1
    invoke-virtual {p0, v5}, Lpx0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    :cond_2
    iget-object v6, p0, Lpx0;->g:Landroid/media/MediaMetadataRetriever;

    .line 11
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    iget v8, p0, Lpx0;->c:I

    iget v9, p0, Lpx0;->d:I

    iget-wide v10, p0, Lpx0;->e:J

    .line 12
    invoke-static/range {v6 .. v11}, Lnx0;->a(Landroid/media/MediaMetadataRetriever;Ljava/io/FileDescriptor;IIJ)Ljava/util/List;

    move-result-object v6

    .line 13
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 15
    iput v3, p0, Lpx0;->h:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v1

    goto :goto_1

    :catch_0
    move-object v4, v1

    :catch_1
    const/4 v0, 0x2

    .line 16
    :try_start_3
    iput v0, p0, Lpx0;->h:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_3

    .line 17
    :try_start_4
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 18
    :cond_3
    :goto_0
    iput v3, p0, Lpx0;->h:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_2
    move-object v4, v1

    .line 19
    :catch_3
    :try_start_5
    iput v0, p0, Lpx0;->h:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_3

    .line 20
    :try_start_6
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 21
    :cond_4
    iput v3, p0, Lpx0;->h:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 22
    throw v0

    .line 23
    :catch_4
    iput v2, p0, Lpx0;->h:I

    :goto_2
    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lpx0;->a:Lox0;

    iget-object v0, p0, Lpx0;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    iget v2, p0, Lpx0;->h:I

    check-cast p1, Lxx0;

    const-string v3, ""

    invoke-virtual {p1, v0, v1, v3, v2}, Lxx0;->a(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lpx0;->a:Lox0;

    iget-object v1, p0, Lpx0;->b:Landroid/net/Uri;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget v3, p0, Lpx0;->h:I

    check-cast v0, Lxx0;

    invoke-virtual {v0, v1, v2, p1, v3}, Lxx0;->a(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
