.class public Lzx0;
.super LkW;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/ui/base/WindowAndroid;

.field public b:Lyx0;

.field public c:Lk81;

.field public d:Z

.field public e:Z

.field public f:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;Lyx0;Lk81;Ljava/util/List;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p1, p0, Lzx0;->a:Lorg/chromium/ui/base/WindowAndroid;

    .line 3
    iput-object p2, p0, Lzx0;->b:Lyx0;

    .line 4
    iput-object p3, p0, Lzx0;->c:Lk81;

    .line 5
    iput-object p5, p0, Lzx0;->f:Landroid/content/ContentResolver;

    .line 6
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "image/"

    .line 7
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_1

    .line 8
    iput-boolean p4, p0, Lzx0;->d:Z

    goto :goto_0

    :cond_1
    const-string p3, "video/"

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    iput-boolean p4, p0, Lzx0;->e:Z

    .line 11
    :cond_2
    :goto_0
    iget-boolean p2, p0, Lzx0;->d:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lzx0;->e:Z

    if-eqz p2, :cond_0

    :cond_3
    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, LkW;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "relative_path"

    goto :goto_0

    :cond_1
    const-string v2, "_data"

    :goto_0
    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v10, 0x0

    aput-object v3, v6, v10

    const-string v11, "date_added"

    const/4 v12, 0x1

    aput-object v11, v6, v12

    const/4 v13, 0x2

    const-string v4, "media_type"

    aput-object v4, v6, v13

    const-string v14, "mime_type"

    const/4 v4, 0x3

    aput-object v14, v6, v4

    const/4 v5, 0x4

    aput-object v2, v6, v5

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " LIKE ? OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " LIKE ?) AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " NOT LIKE ?"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-boolean v7, v0, Lzx0;->d:Z

    if-eqz v7, :cond_2

    const-string v7, "media_type=1"

    goto :goto_1

    :cond_2
    const-string v7, ""

    .line 6
    :goto_1
    iget-boolean v8, v0, Lzx0;->e:Z

    if-eqz v8, :cond_4

    .line 7
    iget-boolean v8, v0, Lzx0;->d:Z

    if-eqz v8, :cond_3

    const-string v8, " OR "

    invoke-static {v7, v8}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    const-string v8, "media_type=3"

    .line 8
    invoke-static {v7, v8}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND ("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v7, v2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v9, "Camera"

    invoke-static {v2, v8, v9}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 12
    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 13
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const-string v13, "/Screenshots"

    invoke-static {v15, v4, v13}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v13

    if-nez v13, :cond_6

    .line 15
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    new-array v13, v5, [Ljava/lang/String;

    const-string v5, "%"

    .line 19
    invoke-static {v2, v5}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v10

    invoke-static {v8, v5}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v12

    invoke-static {v9, v5}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v13, v8

    invoke-static {v4, v5}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v13, v4

    const-string v2, "external"

    .line 20
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 21
    iget-object v4, v0, Lzx0;->f:Landroid/content/ContentResolver;

    const-string v9, "date_added DESC"

    move-object v5, v2

    move-object v8, v13

    .line 22
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 23
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 24
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 25
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 26
    iget-object v6, v0, Lzx0;->c:Lk81;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Lk81;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    .line 27
    :cond_7
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 28
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 29
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 30
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v6, "video/"

    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x3

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    .line 32
    :goto_3
    new-instance v6, LLx0;

    invoke-direct {v6, v7, v8, v9, v5}, LLx0;-><init>(Landroid/net/Uri;JI)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    :cond_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 34
    new-instance v2, LLx0;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v2, v5, v3, v4, v6}, LLx0;-><init>(Landroid/net/Uri;JI)V

    invoke-virtual {v1, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    iget-object v2, v0, Lzx0;->a:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2, v5}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v2

    .line 37
    iget-object v5, v0, Lzx0;->a:Lorg/chromium/ui/base/WindowAndroid;

    const-string v6, "android.permission.CAMERA"

    .line 38
    invoke-virtual {v5, v6}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lzx0;->a:Lorg/chromium/ui/base/WindowAndroid;

    .line 39
    invoke-virtual {v5, v6}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-eqz v2, :cond_c

    if-eqz v5, :cond_c

    .line 40
    new-instance v2, LLx0;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4, v12}, LLx0;-><init>(Landroid/net/Uri;JI)V

    invoke-virtual {v1, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_c
    :goto_6
    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lzx0;->b:Lyx0;

    check-cast v0, LTx0;

    invoke-virtual {v0, p1}, LTx0;->a(Ljava/util/List;)V

    :goto_0
    return-void
.end method
