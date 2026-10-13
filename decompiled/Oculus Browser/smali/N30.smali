.class public LN30;
.super LkW;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/ContentResolver;

.field public c:LM30;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;LM30;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p1, p0, LN30;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LN30;->b:Landroid/content/ContentResolver;

    .line 4
    iput-object p3, p0, LN30;->c:LM30;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, LN30;->a:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "photo"

    .line 5
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 6
    iget-object v3, p0, LN30;->b:Landroid/content/ContentResolver;

    const-string v0, "data15"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LN30;->c:LM30;

    iget-object v1, p0, LN30;->a:Ljava/lang/String;

    check-cast v0, LH30;

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v0, LH30;->S:LF30;

    .line 5
    iget-object v2, v2, LF30;->w:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, v0, LH30;->P:LS30;

    .line 8
    iget-object v2, v2, LS30;->I:LyO0;

    .line 9
    invoke-virtual {v2, v1}, LyO0;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    .line 10
    iget-object v2, v0, LH30;->P:LS30;

    .line 11
    iget-object v2, v2, LS30;->I:LyO0;

    .line 12
    invoke-virtual {v2, v1, p1}, LyO0;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 13
    :cond_3
    iget-object v0, v0, LH30;->R:Lorg/chromium/chrome/browser/contacts_picker/ContactView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 14
    throw p1
.end method
