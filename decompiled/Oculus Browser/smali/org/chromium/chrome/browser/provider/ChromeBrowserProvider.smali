.class public Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;
.super Landroid/content/ContentProvider;
.source "PG"


# static fields
.field public static final B:[Ljava/lang/String;

.field public static final C:[Ljava/lang/String;

.field public static final D:[Ljava/lang/String;


# instance fields
.field public A:J

.field public final w:Ljava/lang/Object;

.field public final x:Ljava/lang/Object;

.field public y:Landroid/content/UriMatcher;

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "date"

    const-string v1, "_id"

    const-string v2, "search"

    .line 1
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->B:[Ljava/lang/String;

    const-string v2, "bookmarks"

    const-string v3, "com.google.android.apps.chrome.browser-contract"

    .line 2
    invoke-static {v3, v2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    const-string v2, "searches"

    .line 3
    invoke-static {v3, v2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    const-string v2, "history"

    .line 4
    invoke-static {v3, v2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    const-string v2, "combined"

    .line 5
    invoke-static {v3, v2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    const-string v10, "favicon"

    const-string v11, "created"

    const-string v4, "_id"

    const-string v5, "url"

    const-string v6, "visits"

    const-string v7, "date"

    const-string v8, "bookmark"

    const-string v9, "title"

    .line 6
    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->C:[Ljava/lang/String;

    const-string v2, "bookmark"

    const-string v3, "title"

    const-string v4, "url"

    .line 7
    filled-new-array {v1, v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->w:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->x:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->z:J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".browser"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "bookmark"

    .line 65
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, " = 1 "

    goto :goto_0

    :cond_0
    const-string p1, " = 0"

    .line 66
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, " AND ("

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 73
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 74
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 75
    invoke-static {p0}, LJ/N;->MQhpB95X(Ljava/lang/Object;)J

    move-result-wide v0

    .line 76
    iput-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 77
    throw p0
.end method

.method public static b(Landroid/net/Uri;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 39
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, " AND ("

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 57
    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onBookmarkChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/net/Uri;)V

    return-void
.end method

.method private onHistoryChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "history"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/net/Uri;)V

    return-void
.end method

.method private onSearchTermChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "searches"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16

    .line 50
    invoke-static/range {p1 .. p1}, LYC0;->a(Landroid/content/ContentValues;)LYC0;

    move-result-object v0

    move-object/from16 v15, p0

    .line 51
    iget-wide v1, v15, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    iget-object v4, v0, LYC0;->c:Ljava/lang/String;

    iget-object v5, v0, LYC0;->b:Ljava/lang/Long;

    iget-object v6, v0, LYC0;->a:Ljava/lang/Boolean;

    iget-object v7, v0, LYC0;->d:Ljava/lang/Long;

    iget-object v8, v0, LYC0;->e:[B

    iget-object v9, v0, LYC0;->f:Ljava/lang/String;

    iget-object v10, v0, LYC0;->g:Ljava/lang/Integer;

    iget-wide v11, v0, LYC0;->h:J

    move-object/from16 v3, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 52
    invoke-static/range {v1 .. v14}, LJ/N;->MK2xZH7V(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[BLjava/lang/String;Ljava/lang/Object;JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    .line 54
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MNkmCUGs(JLjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, p2, v2

    const-string v4, "%"

    invoke-static {v1, v3, v4}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    aget-object v3, p2, v2

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p2, v2

    const-string v4, "file"

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 31
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v5, -0x1

    if-ge v2, v7, :cond_2

    const-string v7, " OR "

    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, " OR title LIKE ?"

    .line 39
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p1, ")"

    .line 40
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    const-string p1, " AND bookmark=?"

    .line 41
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1"

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 44
    sget-object p2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->D:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p4, p1, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 45
    new-instance p2, LaD0;

    invoke-direct {p2, p1}, LaD0;-><init>(Landroid/database/Cursor;)V

    return-object p2
.end method

.method public final a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    if-eqz p1, :cond_0

    .line 46
    array-length v0, p1

    if-nez v0, :cond_1

    .line 47
    :cond_0
    sget-object p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->C:[Ljava/lang/String;

    :cond_1
    move-object v3, p1

    .line 48
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 49
    invoke-static/range {v0 .. v6}, LJ/N;->MH$U74Ot(JLjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/database/SQLiteCursor;

    return-object p1
.end method

.method public final a(J)V
    .locals 6

    .line 12
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->z:J

    const-wide/16 v2, -0x1

    const-string v4, "last_bookmark_folder_id"

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 13
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->z:J

    .line 15
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->z:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    return-void

    .line 16
    :cond_1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->z:J

    .line 17
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->z:J

    .line 19
    invoke-interface {p1, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 4

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LXC0;

    invoke-direct {v1, p0, p1}, LXC0;-><init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;Landroid/net/Uri;)V

    const-wide/16 v2, 0x0

    .line 81
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 83
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 84
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 86
    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 87
    aget-object v0, v0, v1

    invoke-static {v0}, LqZ;->g(Ljava/lang/String;)I

    move-result v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android.ChromeBrowserProvider."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xf

    invoke-static {p1, v0, p2}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final a()Z
    .locals 6

    .line 55
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "REL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ChromeBrowserProvider"

    const-string v3, "ChromeBrowserProvider methods cannot be called from the UI thread."

    .line 57
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 58
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b()V

    .line 59
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    return v2

    .line 60
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, LZ01;->a:LFW;

    new-instance v3, LVC0;

    invoke-direct {v3, p0}, LVC0;-><init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V

    invoke-static {v1, v3}, Lorg/chromium/base/task/PostTask;->b(LFW;Ljava/lang/Runnable;)V

    .line 62
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t run in the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lja0;->a:Lja0;

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, ""

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lja0;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "SignaturePassed"

    .line 4
    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "READ_WRITE_BOOKMARK_FOLDERS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    const-string v0, "com.android.browser.permission."

    .line 9
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const-string v0, "CallerHasPermission"

    .line 11
    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public final b(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .line 40
    invoke-static {p1}, LZC0;->a(Landroid/content/ContentValues;)LZC0;

    move-result-object p1

    .line 41
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    iget-object v3, p1, LZC0;->a:Ljava/lang/String;

    iget-object v4, p1, LZC0;->b:Ljava/lang/Long;

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    .line 42
    invoke-static/range {v0 .. v6}, LJ/N;->M5GGiheu(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final b([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    if-eqz p1, :cond_0

    .line 43
    array-length v0, p1

    if-nez v0, :cond_1

    .line 44
    :cond_0
    sget-object p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->B:[Ljava/lang/String;

    :cond_1
    move-object v3, p1

    .line 45
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 46
    invoke-static/range {v0 .. v6}, LJ/N;->MlS5H8vH(JLjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/database/SQLiteCursor;

    return-object p1
.end method

.method public final b()V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ChromeBrowserProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "bookmarks"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "bookmarks/#"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".browser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "bookmarks"

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "bookmarks/#"

    const/4 v5, 0x3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "searches"

    const/4 v6, 0x4

    invoke-virtual {v2, v1, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "searches/#"

    const/4 v7, 0x5

    invoke-virtual {v2, v1, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "history"

    const/4 v8, 0x6

    invoke-virtual {v2, v1, v3, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "history/#"

    const/4 v9, 0x7

    invoke-virtual {v2, v1, v3, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "combined"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "combined/#"

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.google.android.apps.chrome.browser-contract"

    const-string v10, "history"

    invoke-virtual {v2, v3, v10, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.google.android.apps.chrome.browser-contract"

    const-string v10, "history/#"

    invoke-virtual {v2, v3, v10, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.google.android.apps.chrome.browser-contract"

    const-string v10, "combined"

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.google.android.apps.chrome.browser-contract"

    const-string v10, "combined/#"

    invoke-virtual {v2, v3, v10, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.google.android.apps.chrome.browser-contract"

    const-string v10, "searches"

    invoke-virtual {v2, v3, v10, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.google.android.apps.chrome.browser-contract"

    const-string v10, "searches/#"

    invoke-virtual {v2, v3, v10, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.google.android.apps.chrome.browser-contract"

    const-string v10, "bookmarks"

    const/16 v11, 0x8

    invoke-virtual {v2, v3, v10, v11}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.google.android.apps.chrome.browser-contract"

    const-string v10, "bookmarks/#"

    const/16 v12, 0x9

    invoke-virtual {v2, v3, v10, v12}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.android.browser"

    const-string v10, "history"

    invoke-virtual {v2, v3, v10, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.android.browser"

    const-string v8, "history/#"

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.android.browser"

    const-string v8, "combined"

    invoke-virtual {v2, v3, v8, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.android.browser"

    const-string v8, "combined/#"

    invoke-virtual {v2, v3, v8, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.android.browser"

    const-string v8, "searches"

    invoke-virtual {v2, v3, v8, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.android.browser"

    const-string v8, "searches/#"

    invoke-virtual {v2, v3, v8, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.android.browser"

    const-string v8, "bookmarks"

    invoke-virtual {v2, v3, v8, v11}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "com.android.browser"

    const-string v8, "bookmarks/#"

    invoke-virtual {v2, v3, v8, v12}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "browser"

    const-string v8, "bookmarks"

    invoke-virtual {v2, v3, v8, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "browser"

    const-string v4, "bookmarks/#"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "browser"

    const-string v4, "searches"

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "browser"

    const-string v4, "searches/#"

    invoke-virtual {v2, v3, v4, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "bookmarks/search_suggest_query"

    const/16 v4, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    const-string v3, "search_suggest_query"

    const/16 v4, 0xb

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Z
    .locals 1

    const-string v0, "WRITE_HISTORY_BOOKMARKS"

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Landroid/net/Uri;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ChromeBrowserProvider: delete - unknown URL "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :pswitch_0
    invoke-static {v2, v3, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {v2, v3, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    .line 9
    invoke-static {v0, v1, p0, p2, p3}, LJ/N;->MioTm3rK(JLjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 10
    :pswitch_3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    .line 11
    invoke-static {v0, v1, p0, p2, p3}, LJ/N;->MioTm3rK(JLjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-static {v2, v3, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    .line 14
    invoke-static {v0, v1, p0, p2, p3}, LJ/N;->MFSN7pCT(JLjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 15
    :pswitch_5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    .line 16
    invoke-static {v0, v1, p0, p2, p3}, LJ/N;->MFSN7pCT(JLjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 17
    :pswitch_6
    invoke-static {v2, v3, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p0, p2, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 19
    :pswitch_7
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    .line 20
    invoke-static {v0, v1, p0, p2, p3}, LJ/N;->MNkmCUGs(JLjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 21
    :pswitch_8
    iget-wide p2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    .line 22
    invoke-static {p2, p3, p0, v2, v3}, LJ/N;->MYCtyu3G(JLjava/lang/Object;J)I

    move-result p2

    :goto_0
    if-eqz p2, :cond_2

    .line 23
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/net/Uri;)V

    :cond_2
    return p2

    :cond_3
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChromeBrowserProvider: getType - unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "vnd.android.cursor.item/browser-history"

    return-object p1

    :pswitch_1
    const-string p1, "vnd.android.cursor.dir/browser-history"

    return-object p1

    :pswitch_2
    const-string p1, "vnd.android.cursor.item/searches"

    return-object p1

    :pswitch_3
    const-string p1, "vnd.android.cursor.dir/searches"

    return-object p1

    :pswitch_4
    const-string p1, "vnd.android.cursor.item/bookmark"

    return-object p1

    :pswitch_5
    const-string p1, "vnd.android.cursor.dir/bookmark"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a()Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v1, v12, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    invoke-virtual {v1, v13}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    const-wide/16 v15, 0x0

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bookmark"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChromeBrowserProvider: insert - unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    invoke-static/range {p2 .. p2}, LZC0;->a(Landroid/content/ContentValues;)LZC0;

    move-result-object v0

    .line 6
    iget-object v1, v0, LZC0;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7
    iget-wide v2, v12, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    iget-object v0, v0, LZC0;->b:Ljava/lang/Long;

    .line 8
    invoke-static {v2, v3, v12, v1, v0}, LJ/N;->MeRMf2ng(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v2, v0, v15

    if-nez v2, :cond_b

    return-object v14

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have a search term"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_4
    :goto_0
    invoke-static/range {p2 .. p2}, LYC0;->a(Landroid/content/ContentValues;)LYC0;

    move-result-object v0

    .line 11
    iget-object v3, v0, LYC0;->c:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 12
    iget-wide v1, v12, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    iget-object v4, v0, LYC0;->b:Ljava/lang/Long;

    iget-object v5, v0, LYC0;->a:Ljava/lang/Boolean;

    iget-object v6, v0, LYC0;->d:Ljava/lang/Long;

    iget-object v7, v0, LYC0;->e:[B

    iget-object v8, v0, LYC0;->f:Ljava/lang/String;

    iget-object v9, v0, LYC0;->g:Ljava/lang/Integer;

    iget-wide v10, v0, LYC0;->h:J

    move-wide v0, v1

    move-object/from16 v2, p0

    .line 13
    invoke-static/range {v0 .. v11}, LJ/N;->MgO3iZgV(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[BLjava/lang/String;Ljava/lang/Object;J)J

    move-result-wide v0

    cmp-long v2, v0, v15

    if-nez v2, :cond_b

    return-object v14

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have a bookmark URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v1, "url"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "title"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "isFolder"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v8, v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_1
    const-string v1, "parentId"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v9, -0x1

    if-eqz v2, :cond_8

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_2

    :cond_8
    move-wide v6, v9

    .line 21
    :goto_2
    iget-wide v0, v12, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    move-object/from16 v2, p0

    move v5, v8

    move-wide v15, v6

    .line 22
    invoke-static/range {v0 .. v7}, LJ/N;->MBJTm0cZ(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ZJ)J

    move-result-wide v0

    cmp-long v2, v0, v9

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v8, :cond_a

    .line 23
    invoke-virtual {v12, v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(J)V

    goto :goto_3

    :cond_a
    move-wide v9, v15

    .line 24
    invoke-virtual {v12, v9, v10}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(J)V

    :goto_3
    if-nez v2, :cond_b

    return-object v14

    .line 25
    :cond_b
    invoke-static {v13, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 26
    invoke-virtual {v12, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/net/Uri;)V

    return-object v0

    :cond_c
    :goto_4
    return-object v14
.end method

.method public onCreate()Z
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LUC0;

    invoke-direct {v1, p0}, LUC0;-><init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->b(LFW;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "READ_HISTORY_BOOKMARKS"

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p2, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->C:[Ljava/lang/String;

    invoke-direct {p1, p2, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p1

    .line 4
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Landroid/net/Uri;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    return-object v1

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ChromeBrowserProvider: query - unknown URL uri = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :pswitch_0
    invoke-virtual {p0, p3, p4, p5, v2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x1

    .line 8
    invoke-virtual {p0, p3, p4, p5, p2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-static {v3, v4, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 11
    :pswitch_3
    invoke-static {p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-static {p3, v2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, v4, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 14
    :pswitch_5
    invoke-static {p3, v2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 16
    :pswitch_6
    invoke-static {v3, v4, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 17
    :pswitch_7
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 18
    :pswitch_8
    invoke-static {v3, v4, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 19
    :pswitch_9
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_3

    .line 20
    new-instance p2, Landroid/database/MatrixCursor;

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 21
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Landroid/net/Uri;)J

    move-result-wide v5

    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->y:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ChromeBrowserProvider: update - unknown URL "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :pswitch_0
    invoke-static {v5, v6, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_1

    .line 7
    :pswitch_1
    invoke-static {p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-static {p3, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, v6, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-static {p3, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 12
    :pswitch_4
    invoke-static {v5, v6, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 13
    :pswitch_5
    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 14
    :pswitch_6
    invoke-static {v5, v6, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 15
    :pswitch_7
    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :pswitch_8
    const/4 p3, 0x0

    const-string p4, "url"

    .line 16
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    move-object v7, p3

    const-string p3, "title"

    .line 18
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 p3, -0x1

    const-string v0, "parentId"

    .line 19
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0

    :cond_3
    move-wide p2, p3

    .line 21
    :goto_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    move-object v4, p0

    move-wide v9, p2

    .line 22
    invoke-static/range {v2 .. v10}, LJ/N;->Mk0BzYKj(JLjava/lang/Object;JLjava/lang/String;Ljava/lang/String;J)I

    move-result p4

    .line 23
    invoke-virtual {p0, p2, p3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(J)V

    move p2, p4

    :goto_1
    if-eqz p2, :cond_4

    .line 24
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->a(Landroid/net/Uri;)V

    :cond_4
    return p2

    :cond_5
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
