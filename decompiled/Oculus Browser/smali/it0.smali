.class public Lit0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lft0;


# static fields
.field public static final x:Landroid/net/Uri;

.field public static final y:Landroid/net/Uri;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public final w:Landroid/database/Cursor;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.partnerbookmarks"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lit0;->x:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lit0;->y:Landroid/net/Uri;

    const-string v6, "favicon"

    const-string v7, "touchicon"

    const-string v1, "_id"

    const-string v2, "url"

    const-string v3, "title"

    const-string v4, "type"

    const-string v5, "parent"

    .line 6
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lit0;->z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lit0;->w:Landroid/database/Cursor;

    return-void
.end method

.method public static a()Lit0;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lit0;->y:Landroid/net/Uri;

    sget-object v4, Lit0;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "type DESC, _id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v2, Lit0;

    invoke-direct {v2, v1}, Lit0;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "cr_PartnerBookmarks"

    const-string v3, "Unable to read partner bookmark database"

    .line 4
    invoke-static {v1, v3, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit0;->w:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lit0;->w:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lit0;->w:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 9

    const-string v0, "cr_PartnerBookmarks"

    .line 1
    iget-object v1, p0, Lit0;->w:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    .line 2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    new-instance v1, Lgt0;

    invoke-direct {v1}, Lgt0;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Lit0;->w:Landroid/database/Cursor;

    iget-object v5, p0, Lit0;->w:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lgt0;->a:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-string v1, "Dropping the bookmark: reserved _id was used"

    new-array v4, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1, v4}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    iget-object v4, p0, Lit0;->w:Landroid/database/Cursor;

    iget-object v5, p0, Lit0;->w:Landroid/database/Cursor;

    const-string v8, "parent"

    .line 7
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lgt0;->b:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 8
    iput-wide v6, v1, Lgt0;->b:J

    .line 9
    :cond_1
    iget-object v4, p0, Lit0;->w:Landroid/database/Cursor;

    iget-object v5, p0, Lit0;->w:Landroid/database/Cursor;

    const-string v6, "type"

    .line 10
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, Lgt0;->c:Z

    .line 11
    iget-object v4, p0, Lit0;->w:Landroid/database/Cursor;

    iget-object v5, p0, Lit0;->w:Landroid/database/Cursor;

    const-string v6, "url"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lgt0;->d:Ljava/lang/String;

    .line 12
    iget-object v4, p0, Lit0;->w:Landroid/database/Cursor;

    iget-object v5, p0, Lit0;->w:Landroid/database/Cursor;

    const-string v6, "title"

    .line 13
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lgt0;->e:Ljava/lang/String;

    .line 14
    iget-object v4, p0, Lit0;->w:Landroid/database/Cursor;

    iget-object v5, p0, Lit0;->w:Landroid/database/Cursor;

    const-string v6, "favicon"

    .line 15
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    iput-object v4, v1, Lgt0;->f:[B

    .line 16
    iget-object v4, p0, Lit0;->w:Landroid/database/Cursor;

    iget-object v5, p0, Lit0;->w:Landroid/database/Cursor;

    const-string v6, "touchicon"

    .line 17
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    iput-object v4, v1, Lgt0;->g:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget-boolean v4, v1, Lgt0;->c:Z

    if-nez v4, :cond_3

    iget-object v4, v1, Lgt0;->d:Ljava/lang/String;

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v1, Lgt0;->e:Ljava/lang/String;

    if-nez v4, :cond_5

    :cond_4
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Dropping the bookmark: no title, or no url on a non-foler"

    .line 19
    invoke-static {v0, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "Dropping the bookmark: "

    .line 20
    invoke-static {v4}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v1, v2

    :cond_5
    return-object v1

    .line 21
    :cond_6
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 22
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
