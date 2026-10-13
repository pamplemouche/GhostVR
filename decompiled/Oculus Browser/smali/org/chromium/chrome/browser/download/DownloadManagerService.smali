.class public Lorg/chromium/chrome/browser/download/DownloadManagerService;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LW70;
.implements Lx81;
.implements Lc90;
.implements LTC0;


# static fields
.field public static final Q:Ljava/util/Set;

.field public static final R:Ljava/util/Set;

.field public static S:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# instance fields
.field public final A:Landroid/os/Handler;

.field public B:Ljava/lang/String;

.field public C:I

.field public final D:Ljava/util/List;

.field public final E:Ljava/util/List;

.field public final F:LWT;

.field public G:LB90;

.field public H:Li90;

.field public I:Lu80;

.field public J:Lu80;

.field public K:J

.field public L:LA81;

.field public M:Z

.field public N:I

.field public O:Z

.field public P:Z

.field public final w:Landroid/content/SharedPreferences;

.field public final x:Ljava/util/HashMap;

.field public final y:LY80;

.field public final z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->Q:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->R:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(LY80;Landroid/os/Handler;J)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->E:Ljava/util/List;

    .line 5
    new-instance v1, LWT;

    invoke-direct {v1}, LWT;-><init>()V

    iput-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->F:LWT;

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->N:I

    .line 7
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 8
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 9
    iput-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->w:Landroid/content/SharedPreferences;

    const-string v4, "org.chromium.chrome.browser.download.IS_DOWNLOAD_HOME_ENABLED"

    .line 10
    invoke-static {v2, v4}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 11
    iput-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    move-wide/from16 v4, p3

    .line 12
    iput-wide v4, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->z:J

    move-object/from16 v2, p2

    .line 13
    iput-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->A:Landroid/os/Handler;

    .line 14
    new-instance v2, Li90;

    invoke-direct {v2}, Li90;-><init>()V

    iput-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->H:Li90;

    .line 15
    new-instance v2, LB90;

    invoke-direct {v2, v1}, LB90;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->G:LB90;

    const-string v1, "UseDownloadOfflineContentProvider"

    .line 16
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sput-object v0, Lorg/chromium/chrome/browser/download/DownloadController;->a:LW70;

    .line 18
    :goto_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->A:Landroid/os/Handler;

    new-instance v2, LD80;

    invoke-direct {v2, v0}, LD80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->w:Landroid/content/SharedPreferences;

    const-string v2, "DownloadUmaEntry"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->w:Landroid/content/SharedPreferences;

    .line 21
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "1"

    const/4 v8, 0x7

    const-string v9, ","

    .line 23
    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 24
    array-length v10, v9

    const/4 v11, 0x5

    if-eq v10, v11, :cond_2

    array-length v10, v9

    if-ne v10, v8, :cond_4

    .line 25
    :cond_2
    :try_start_0
    aget-object v10, v9, v5

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 26
    aget-object v10, v9, v6

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/4 v7, 0x2

    .line 27
    aget-object v7, v9, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v7, 0x3

    .line 28
    aget-object v7, v9, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 29
    aget-object v13, v9, v3

    .line 30
    array-length v7, v9

    const-wide/16 v19, 0x0

    if-ne v7, v8, :cond_3

    .line 31
    aget-object v7, v9, v11

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v10, 0x6

    .line 32
    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    goto :goto_2

    :cond_3
    move-wide/from16 v21, v19

    .line 33
    :goto_2
    new-instance v7, Lj90;

    move-object v12, v7

    invoke-direct/range {v12 .. v22}, Lj90;-><init>(Ljava/lang/String;JIZZJJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v7, "Exception while parsing UMA entry:"

    .line 34
    invoke-static {v7, v2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "DownloadUmaStats"

    invoke-static {v8, v2, v7}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v7, v4

    :goto_3
    if-eqz v7, :cond_1

    .line 35
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->E:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_5
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 37
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj90;

    .line 39
    iget-boolean v3, v2, Lj90;->c:Z

    if-eqz v3, :cond_8

    .line 40
    new-instance v7, Lorg/chromium/chrome/browser/download/DownloadItem;

    invoke-direct {v7, v3, v4}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 41
    iget-wide v8, v2, Lj90;->b:J

    .line 42
    iput-wide v8, v7, Lorg/chromium/chrome/browser/download/DownloadItem;->e:J

    .line 43
    iget-boolean v3, v2, Lj90;->c:Z

    if-eqz v3, :cond_7

    .line 44
    iget-object v2, v2, Lj90;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadItem;->a(J)V

    goto :goto_5

    .line 45
    :cond_7
    new-instance v3, Ln80;

    invoke-direct {v3}, Ln80;-><init>()V

    iget-object v8, v2, Lj90;->a:Ljava/lang/String;

    .line 46
    iput-object v8, v3, Ln80;->m:Ljava/lang/String;

    .line 47
    iget-wide v8, v2, Lj90;->f:J

    .line 48
    iput-wide v8, v3, Ln80;->j:J

    .line 49
    invoke-virtual {v3}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object v2

    .line 50
    iput-object v2, v7, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 51
    :goto_5
    iget-wide v2, v7, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    .line 52
    new-instance v8, LE80;

    invoke-direct {v8, v0, v7}, LE80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;)V

    invoke-static {v2, v3, v8}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(JLorg/chromium/base/Callback;)V

    goto :goto_4

    .line 53
    :cond_8
    iget-boolean v3, v2, Lj90;->e:Z

    if-nez v3, :cond_6

    .line 54
    iput-boolean v6, v2, Lj90;->e:Z

    .line 55
    iget v3, v2, Lj90;->d:I

    add-int/2addr v3, v6

    iput v3, v2, Lj90;->d:I

    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_a

    .line 56
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->d()V

    .line 57
    :cond_a
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->G:LB90;

    .line 58
    iget-object v2, v1, LB90;->b:Landroid/content/SharedPreferences;

    const-string v3, "PendingOMADownloads"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 59
    iget-object v2, v1, LB90;->b:Landroid/content/SharedPreferences;

    .line 60
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    invoke-static {v3}, Lw90;->a(Ljava/lang/String;)Lw90;

    move-result-object v3

    .line 63
    iget-wide v4, v3, Lw90;->a:J

    iget-object v3, v3, Lw90;->b:Ljava/lang/String;

    .line 64
    new-instance v6, Lu90;

    invoke-direct {v6, v1, v4, v5, v3}, Lu90;-><init>(LB90;JLjava/lang/String;)V

    invoke-static {v4, v5, v6}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(JLorg/chromium/base/Callback;)V

    goto :goto_6

    :cond_b
    return-void
.end method

.method public static a(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, p1, v3

    if-nez v7, :cond_6

    .line 179
    invoke-static {p0}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v6

    .line 180
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez p6, :cond_3

    .line 181
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 182
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 183
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 184
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    const-string v4, "mime_type"

    .line 185
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 188
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 189
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 190
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, v1, v3}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 191
    :goto_0
    throw v2

    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_3
    move-object/from16 v4, p6

    :goto_2
    if-eqz p3, :cond_4

    .line 192
    invoke-static {v0, v0, v4, v5}, LKi0;->a(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    .line 193
    :cond_4
    invoke-static {v0, v4, v1, v2}, LKi0;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_3
    move-object v6, v0

    :cond_5
    :goto_4
    return-object v6

    .line 194
    :cond_6
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(J)LA80;

    move-result-object v3

    if-nez p6, :cond_7

    .line 195
    iget-object v4, v3, LA80;->c:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object/from16 v4, p6

    :goto_5
    if-nez v0, :cond_8

    .line 196
    iget-object v3, v3, LA80;->d:Landroid/net/Uri;

    goto :goto_6

    .line 197
    :cond_8
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_6
    if-eqz v3, :cond_c

    .line 198
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v7, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_9

    :cond_9
    if-nez v0, :cond_a

    move-object v0, v3

    goto :goto_7

    .line 199
    :cond_a
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_7
    if-eqz p3, :cond_b

    .line 200
    invoke-static {v0, v3, v4, v5}, LKi0;->a(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_8

    .line 201
    :cond_b
    invoke-static {v3, v4, v1, v2}, LKi0;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_c
    :goto_9
    return-object v6
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 121
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-static {v0, v0, p1}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "DownloadService"

    const-string v0, "Cannot find Downloads app"

    .line 212
    invoke-static {p0, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13

    .line 206
    new-instance v12, LM80;

    move-object v0, v12

    move-object v1, p1

    move-wide/from16 v2, p5

    move v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    move-object v8, p0

    move/from16 v9, p9

    move-object/from16 v10, p4

    move/from16 v11, p3

    invoke-direct/range {v0 .. v11}, LM80;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Z)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 207
    invoke-virtual {v12, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 1

    .line 122
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 123
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    if-eqz p3, :cond_1

    .line 126
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Failed to write DownloadInfo "

    .line 127
    invoke-static {p0, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "DownloadService"

    invoke-static {p2, p0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 128
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/download/DownloadManagerService;ILjava/lang/String;)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 297
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 298
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 9

    .line 202
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadUtils;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-static {p1}, LJ/N;->M4t0L845(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p2

    move-object v8, p1

    .line 204
    invoke-static/range {v2 .. v8}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 205
    invoke-static {p0, v1}, Lwa0;->a(Landroid/content/Intent;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static a(Lorg/chromium/chrome/browser/download/DownloadItem;Z)Z
    .locals 8

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 17
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 18
    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 19
    iget-object v7, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    move v4, p1

    .line 20
    invoke-static/range {v1 .. v7}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 21
    invoke-static {p0, p1}, Lwa0;->a(Landroid/content/Intent;Z)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private addDownloadItemToList(Ljava/util/List;Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createDownloadItemList()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static e()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "DownloadRetryCount"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lorg/chromium/chrome/browser/download/DownloadManagerService;
    .locals 5

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->S:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, LG90;

    invoke-direct {v0}, LG90;-><init>()V

    .line 5
    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x3e8

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/chromium/chrome/browser/download/DownloadManagerService;-><init>(LY80;Landroid/os/Handler;J)V

    sput-object v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->S:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 6
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->S:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, LJ/N;->M4t0L845(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static g()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->S:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private handleOMADownload(Lorg/chromium/chrome/browser/download/DownloadItem;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->G:LB90;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ly90;

    invoke-direct {v1, v0, p1, p2, p3}, Ly90;-><init>(LB90;Lorg/chromium/chrome/browser/download/DownloadInfo;J)V

    .line 4
    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method private onAllDownloadsRetrieved(Ljava/util/List;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->F:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ80;

    .line 2
    invoke-interface {v1, p1, p2}, LQ80;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x6

    .line 4
    invoke-static {p2, v0}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Ld80;->a:Le80;

    .line 6
    new-instance v1, LJ80;

    invoke-direct {v1, p0, v0, p1, p2}, LJ80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Le80;Ljava/util/List;Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;)V

    invoke-virtual {v0, v1}, Le80;->a(Lorg/chromium/base/Callback;)V

    :goto_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public static onDownloadItemCanceled(Lorg/chromium/chrome/browser/download/DownloadItem;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 p1, 0x3ef

    goto :goto_0

    :cond_0
    const/16 p1, 0x3f1

    .line 2
    :goto_0
    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    return-void
.end method

.method private onDownloadItemCreated(Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->F:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ80;

    .line 2
    invoke-interface {v1, p1}, LQ80;->a(Lorg/chromium/chrome/browser/download/DownloadItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDownloadItemRemoved(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->J:Lu80;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->I:Lu80;

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, p1}, LcU0;->a(ZLjava/lang/String;)LbU0;

    move-result-object v1

    .line 3
    iget-boolean v2, v0, Lu80;->w:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Lu80;->c(LbU0;)V

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->F:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ80;

    .line 6
    invoke-interface {v1, p1, p2}, LQ80;->a(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private onDownloadItemUpdated(Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->F:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ80;

    .line 2
    invoke-interface {v1, p1}, LQ80;->b(Lorg/chromium/chrome/browser/download/DownloadItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private openDownloadItem(Lorg/chromium/chrome/browser/download/DownloadItem;I)V
    .locals 7

    .line 1
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 5
    iget-boolean v3, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 6
    iget-object v4, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 7
    iget-object v5, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->h:Ljava/lang/String;

    move v6, p2

    .line 8
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lj90;
    .locals 3

    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj90;

    .line 302
    iget-object v2, v1, Lj90;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    const-string p2, ".Total"

    .line 308
    invoke-static {p1, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, ".Manual"

    .line 309
    invoke-static {p1, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a(Z)Lu80;
    .locals 0

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->J:Lu80;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->I:Lu80;

    :goto_0
    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 6

    .line 281
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDownloadAutoResumptionEnabledInNative()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    return-void

    .line 283
    :cond_2
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 284
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;)Z

    move-result p1

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR80;

    if-eqz v1, :cond_3

    .line 290
    iget-boolean v2, v1, LR80;->b:Z

    if-nez v2, :cond_4

    if-nez p1, :cond_3

    .line 291
    :cond_4
    iget-object v1, v1, LR80;->c:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 292
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->A:Landroid/os/Handler;

    new-instance v3, LF80;

    invoke-direct {v3, p0, v1}, LF80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;)V

    iget-wide v4, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->z:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 294
    :cond_5
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->L:LA81;

    if-eqz p1, :cond_6

    .line 295
    invoke-virtual {p1}, LA81;->b()V

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->L:LA81;

    :cond_6
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 323
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->R:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 324
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->R:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 325
    :cond_0
    invoke-static {p1}, LX80;->a(I)V

    .line 326
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->B:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 327
    iget p2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->C:I

    invoke-static {p1, p2}, LX80;->a(II)V

    if-ne p1, v1, :cond_2

    .line 328
    iget p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->C:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->C:I

    .line 329
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b()J

    move-result-wide p1

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->B:Ljava/lang/String;

    const/4 v1, 0x0

    .line 330
    invoke-static {p1, p2, p0, v0, v1}, LJ/N;->MBkC1K8I(JLjava/lang/Object;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final a(ILjava/lang/String;J)V
    .locals 12

    move-object v10, p0

    move-object v11, p2

    .line 303
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;)Lj90;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 305
    iget-wide v5, v0, Lj90;->b:J

    sub-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v1, 0x0

    .line 306
    iget v7, v0, Lj90;->d:I

    iget-wide v8, v0, Lj90;->g:J

    move-object v0, p0

    move v2, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ZIJJIJ)V

    .line 307
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(JI)V
    .locals 0

    return-void
.end method

.method public final a(LR80;)V
    .locals 9

    .line 129
    iget-object v0, p1, LR80;->c:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 130
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 131
    iget v2, p1, LR80;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    const-string v6, "DownloadService"

    if-eq v2, v3, :cond_4

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    const/4 v6, 0x3

    if-eq v2, v6, :cond_2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    iget-boolean v7, p1, LR80;->e:Z

    check-cast v2, LG90;

    if-eqz v2, :cond_1

    .line 133
    new-instance v5, LF90;

    invoke-direct {v5, v6, v1, v4}, LF90;-><init>(ILorg/chromium/chrome/browser/download/DownloadInfo;I)V

    .line 134
    iput-boolean v7, v5, LF90;->j:Z

    .line 135
    iput v3, v5, LF90;->k:I

    .line 136
    invoke-virtual {v2, v5}, LG90;->a(LF90;)V

    .line 137
    iget-boolean v1, p1, LR80;->e:Z

    xor-int/2addr v1, v3

    goto :goto_2

    .line 138
    :cond_1
    throw v5

    .line 139
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    .line 140
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->a:LbU0;

    .line 141
    check-cast v1, LG90;

    invoke-virtual {v1, v2}, LG90;->a(LbU0;)V

    goto :goto_1

    .line 142
    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    check-cast v2, LG90;

    invoke-virtual {v2, v1}, LG90;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 146
    :cond_4
    iget-boolean v2, p1, LR80;->g:Z

    .line 147
    new-instance v5, LL80;

    invoke-direct {v5, p0, v0, v1, v2}, LL80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;Lorg/chromium/chrome/browser/download/DownloadInfo;Z)V

    .line 148
    :try_start_0
    sget-object v1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v5, v1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Thread limit reached, reschedule notification update later."

    .line 149
    invoke-static {v6, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    move v1, v3

    goto :goto_2

    .line 150
    :cond_5
    iget-boolean v2, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->s:Z

    if-eqz v2, :cond_6

    .line 151
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    check-cast v2, LG90;

    invoke-virtual {v2, v1}, LG90;->b(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 152
    invoke-static {v4}, LX80;->b(I)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 153
    :cond_6
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    iget-wide v6, p1, LR80;->a:J

    iget-boolean v8, p1, LR80;->b:Z

    check-cast v2, LG90;

    if-eqz v2, :cond_9

    .line 154
    new-instance v5, LF90;

    invoke-direct {v5, v4, v1, v3}, LF90;-><init>(ILorg/chromium/chrome/browser/download/DownloadInfo;I)V

    .line 155
    iput-wide v6, v5, LF90;->e:J

    .line 156
    iput-boolean v8, v5, LF90;->i:Z

    .line 157
    invoke-virtual {v2, v5}, LG90;->a(LF90;)V

    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_7

    .line 158
    iput-boolean v4, p1, LR80;->f:Z

    :cond_7
    if-eqz v1, :cond_8

    .line 159
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    .line 160
    :cond_9
    throw v5
.end method

.method public a(LbU0;Lorg/chromium/chrome/browser/download/DownloadItem;Z)V
    .locals 6

    .line 213
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR80;

    if-eqz p1, :cond_0

    .line 214
    iget v0, p1, LR80;->d:I

    if-nez v0, :cond_0

    iget-object v0, p1, LR80;->c:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 215
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 216
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 217
    :goto_0
    invoke-static {v0}, LX80;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 218
    sget-object p1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->Q:Ljava/util/Set;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 219
    sget-object p1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->Q:Ljava/util/Set;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {v0}, LX80;->b(I)V

    .line 221
    :cond_2
    invoke-virtual {p0, p2, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    .line 222
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR80;

    :cond_3
    if-eqz p3, :cond_5

    .line 223
    iget-boolean v2, p1, LR80;->b:Z

    if-nez v2, :cond_4

    .line 224
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 225
    invoke-static {v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p1, LR80;->b:Z

    .line 226
    :cond_4
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p1, v0, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 232
    :cond_5
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->e()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 233
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 234
    iget v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->N:I

    if-gez v2, :cond_6

    .line 235
    invoke-static {}, LJ/N;->M3NaDnJv()I

    move-result v2

    .line 236
    iput v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->N:I

    .line 237
    :cond_6
    iget v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->N:I

    if-lt p1, v2, :cond_7

    .line 238
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c(Ljava/lang/String;)V

    .line 239
    iget-object p1, p2, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 240
    invoke-virtual {p0, p1, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;Z)V

    return-void

    .line 241
    :cond_7
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p0, p1, v1, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p1, v1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Ljava/lang/String;)V

    .line 246
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b()J

    move-result-wide v0

    .line 247
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v3

    .line 248
    iget-object p1, p2, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 249
    iget-boolean v4, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    move-object v2, p0

    move v5, p3

    .line 250
    invoke-static/range {v0 .. v5}, LJ/N;->MieiRHrs(JLjava/lang/Object;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(LbU0;Z)V
    .locals 3

    .line 251
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b()J

    move-result-wide v0

    iget-object v2, p1, LbU0;->b:Ljava/lang/String;

    .line 252
    invoke-static {v0, v1, p0, v2, p2}, LJ/N;->MmztvsiA(JLjava/lang/Object;Ljava/lang/String;Z)V

    .line 253
    iget-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    iget-object p1, p1, LbU0;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR80;

    if-eqz p1, :cond_1

    .line 254
    iget p2, p1, LR80;->d:I

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    .line 255
    :cond_0
    iget-object p1, p1, LR80;->c:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 256
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 257
    invoke-static {p1}, Ln80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;

    move-result-object p1

    const/4 p2, 0x1

    .line 258
    iput-boolean p2, p1, Ln80;->s:Z

    const-wide/16 v0, -0x1

    .line 259
    iput-wide v0, p1, Ln80;->j:J

    .line 260
    invoke-virtual {p1}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object p1

    .line 261
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x400

    .line 1
    div-long/2addr p2, v0

    long-to-int p3, p2

    const/4 p2, 0x1

    const/high16 v0, 0x100000

    const/16 v1, 0x32

    .line 2
    invoke-static {p1, p3, p2, v0, v1}, LfV;->a(Ljava/lang/String;IIII)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5

    .line 310
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0, p1, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 314
    invoke-interface {v4, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p2, :cond_0

    const-string p1, "MobileDownload.ResumptionsCount.Automatic"

    .line 315
    invoke-static {p1, v3}, LfV;->e(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p2, "MobileDownload.ResumptionsCount.Manual"

    .line 316
    invoke-static {p2, v3}, LfV;->e(Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 317
    invoke-virtual {p0, p1, v2, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x1f4

    .line 319
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-string v0, "MobileDownload.ResumptionsCount.Total"

    .line 320
    invoke-static {v0, p2}, LfV;->e(Ljava/lang/String;I)V

    .line 321
    invoke-interface {v4, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    :goto_0
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 3

    .line 89
    invoke-static {p1}, Ln80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;

    move-result-object v0

    const/4 v1, 0x2

    .line 90
    iput v1, v0, Ln80;->v:I

    .line 91
    invoke-virtual {v0}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object v0

    .line 92
    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 93
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadItem;

    invoke-direct {v0, v2, p1}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    .line 95
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadItem;)V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/download/DownloadInfo;JI)V
    .locals 11

    .line 6
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 7
    iget-object v1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 8
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 9
    invoke-static {v2}, LJ/N;->M4t0L845(Ljava/lang/String;)Z

    move-result v2

    .line 10
    iget-boolean v3, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 11
    iget-object v4, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 12
    iget-object v7, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 13
    iget-object v8, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->h:Ljava/lang/String;

    .line 14
    iget-object v10, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    move-wide v5, p2

    move v9, p4

    .line 15
    invoke-static/range {v0 .. v10}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/download/DownloadInfo;Z)V
    .locals 5

    .line 96
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 97
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->r:Z

    const/4 v2, 0x4

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const/4 v3, 0x3

    .line 98
    iget-object v4, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, v3, v4}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 100
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDownloadAutoResumptionEnabledInNative()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    new-instance v3, LA81;

    new-instance v4, LG81;

    invoke-direct {v4}, LG81;-><init>()V

    invoke-direct {v3, p0, v4}, LA81;-><init>(Lx81;Ly81;)V

    iput-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->L:LA81;

    .line 104
    :cond_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 105
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const/4 v1, 0x4

    :goto_1
    if-ne v1, v2, :cond_4

    .line 106
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v2, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ILjava/lang/String;)V

    .line 108
    :cond_4
    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    .line 109
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadItem;)V

    .line 110
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDownloadAutoResumptionEnabledInNative()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 111
    :cond_5
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR80;

    if-nez p1, :cond_6

    return-void

    :cond_6
    if-eqz p2, :cond_9

    .line 112
    sget-object p2, LzT;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 113
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 114
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 115
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    .line 116
    :cond_7
    iget-boolean p1, p1, LR80;->b:Z

    if-nez p1, :cond_8

    .line 117
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 118
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 119
    :cond_8
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->A:Landroid/os/Handler;

    new-instance p2, LF80;

    invoke-direct {p2, p0, v0}, LF80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;)V

    iget-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->z:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public final a(Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 4

    .line 22
    iget-object v0, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 23
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->G:LB90;

    .line 26
    iget-object v1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 27
    iget-wide v2, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    if-eqz v0, :cond_0

    .line 28
    new-instance p1, Ly90;

    invoke-direct {p1, v0, v1, v2, v3}, Ly90;-><init>(LB90;Lorg/chromium/chrome/browser/download/DownloadInfo;J)V

    .line 29
    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v0, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 32
    iget-wide v1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    const/4 p1, 0x7

    .line 33
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;JI)V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/download/DownloadItem;I)V
    .locals 6

    .line 34
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 35
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 36
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const v3, 0x7f1302ab

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 37
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const v3, 0x7f1302a5

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 38
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const v3, 0x7f1302aa

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 39
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const v3, 0x7f1302a7

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 40
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    const v3, 0x7f1302a8

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 41
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    const v3, 0x7f1302a9

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 42
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    const v3, 0x7f1302a6

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 43
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->H:Li90;

    invoke-virtual {v0}, Li90;->a()LZF0;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->H:Li90;

    const/16 v3, 0x3f1

    if-ne p2, v3, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 46
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v4

    .line 47
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v5

    .line 48
    iget-boolean v5, v5, Lorg/chromium/chrome/browser/profiles/Profile;->a:Z

    .line 49
    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 50
    :cond_1
    iget-object v4, v4, Lu80;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    goto :goto_4

    .line 51
    :cond_3
    invoke-virtual {v0}, Li90;->a()LZF0;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    const/16 v4, 0xa

    .line 52
    invoke-static {p1, v0, v1, v4}, LUF0;->a(Ljava/lang/CharSequence;LXF0;II)LUF0;

    move-result-object p1

    .line 53
    iput-boolean v2, p1, LUF0;->h:Z

    const/16 v1, 0x1b58

    .line 54
    iput v1, p1, LUF0;->i:I

    if-eqz p2, :cond_5

    .line 55
    sget-object p2, LzT;->a:Landroid/content/Context;

    const v1, 0x7f130451

    .line 56
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 57
    iput-object p2, p1, LUF0;->d:Ljava/lang/String;

    .line 58
    iput-object v3, p1, LUF0;->e:Ljava/lang/Object;

    .line 59
    :cond_5
    invoke-virtual {v0}, Li90;->a()LZF0;

    move-result-object p2

    invoke-virtual {p2, p1}, LZF0;->a(LUF0;)V

    goto :goto_4

    .line 60
    :cond_6
    throw v3

    .line 61
    :cond_7
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 62
    invoke-static {p2, p1, v2}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    .line 63
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lorg/chromium/chrome/browser/download/DownloadItem;Lz80;)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 164
    iget-wide v2, v1, Lz80;->d:J

    .line 165
    iput-wide v2, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->e:J

    .line 166
    iget-wide v2, v1, Lz80;->a:J

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadItem;->a(J)V

    .line 167
    iget-boolean v2, v1, Lz80;->b:Z

    if-nez v2, :cond_0

    .line 168
    iget v1, v1, Lz80;->c:I

    invoke-virtual {v10, v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    .line 169
    invoke-virtual/range {v0 .. v9}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ZIJJIJ)V

    return-void

    .line 170
    :cond_0
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 171
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 172
    invoke-virtual {v10, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 173
    invoke-virtual {v2, v4, v5, v3, v3}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V

    .line 174
    new-instance v2, Lj90;

    iget-wide v3, v1, Lz80;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 175
    iget-wide v13, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->e:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v11, v2

    .line 176
    invoke-direct/range {v11 .. v21}, Lj90;-><init>(Ljava/lang/String;JIZZJJ)V

    .line 177
    iget-object v0, v10, Lorg/chromium/chrome/browser/download/DownloadManagerService;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->d()V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/download/DownloadItem;ZLA80;)V
    .locals 10

    .line 64
    iget-object v1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ln80;

    invoke-direct {v1}, Ln80;-><init>()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v1}, Ln80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;

    move-result-object v1

    .line 67
    :goto_0
    iget-wide v2, p3, LA80;->g:J

    .line 68
    iput-wide v2, v1, Ln80;->k:J

    .line 69
    iget-wide v2, p3, LA80;->f:J

    .line 70
    iput-wide v2, v1, Ln80;->j:J

    .line 71
    iget-object v2, p3, LA80;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p3, LA80;->b:Ljava/lang/String;

    .line 72
    iput-object v2, v1, Ln80;->e:Ljava/lang/String;

    .line 73
    :cond_1
    iget-object v2, p3, LA80;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p3, LA80;->c:Ljava/lang/String;

    .line 74
    iput-object v2, v1, Ln80;->c:Ljava/lang/String;

    .line 75
    :cond_2
    invoke-virtual {v1}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object v1

    .line 76
    iput-object v1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 77
    iget v1, p3, LA80;->a:I

    if-nez v1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_1

    .line 78
    :cond_4
    iget v1, p3, LA80;->h:I

    invoke-virtual {p0, p1, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    goto :goto_1

    .line 79
    :cond_5
    new-instance v1, LN80;

    invoke-direct {v1, p0, p1, p3}, LN80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;LA80;)V

    sget-object v2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 80
    invoke-virtual {v1, v2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :cond_6
    :goto_1
    const-wide/16 v1, 0x0

    .line 81
    iget-wide v3, p3, LA80;->e:J

    .line 82
    iget-wide v5, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->e:J

    sub-long/2addr v3, v5

    .line 83
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v1, 0x1

    .line 84
    iget v2, p3, LA80;->a:I

    iget-wide v5, p3, LA80;->f:J

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ZIJJIJ)V

    .line 85
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .line 3
    sget-object p1, Lorg/chromium/chrome/browser/profiles/ProfileManager;->a:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->K:J

    .line 5
    invoke-static {v0, v1, p0}, LJ/N;->M070u0sx(JLjava/lang/Object;)V

    return-void
.end method

.method public final a(ZIJJIJ)V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x400

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p5, 0x3

    if-eq p2, p5, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_5

    const-string p1, "MobileDownload.DownloadTime.ChromeNetworkStack.Cancel"

    .line 262
    invoke-static {p1, p3, p4}, LfV;->a(Ljava/lang/String;J)V

    const-string p1, "MobileDownload.InterruptionsCount.ChromeNetworkStack.Cancel"

    .line 263
    invoke-static {p1, p7}, LfV;->c(Ljava/lang/String;I)V

    const-string p1, "MobileDownload.BytesWasted.ChromeNetworkStack.Cancel"

    .line 264
    invoke-virtual {p0, p1, p8, p9}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "MobileDownload.DownloadTime.DownloadManager.Failure"

    .line 265
    invoke-static {p1, p3, p4}, LfV;->a(Ljava/lang/String;J)V

    .line 266
    div-long/2addr p5, v1

    long-to-int p1, p5

    const-string p2, "MobileDownload.BytesDownloaded.DownloadManager.Failure"

    .line 267
    invoke-static {p2, p1}, LfV;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p1, "MobileDownload.DownloadTime.ChromeNetworkStack.Failure"

    .line 268
    invoke-static {p1, p3, p4}, LfV;->a(Ljava/lang/String;J)V

    .line 269
    div-long/2addr p5, v1

    long-to-int p1, p5

    const-string p2, "MobileDownload.BytesDownloaded.ChromeNetworkStack.Failure"

    .line 270
    invoke-static {p2, p1}, LfV;->a(Ljava/lang/String;I)V

    const-string p1, "MobileDownload.InterruptionsCount.ChromeNetworkStack.Failure"

    .line 271
    invoke-static {p1, p7}, LfV;->c(Ljava/lang/String;I)V

    const-string p1, "MobileDownload.BytesWasted.ChromeNetworkStack.Failure"

    .line 272
    invoke-virtual {p0, p1, p8, p9}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "MobileDownload.DownloadTime.DownloadManager.Success"

    .line 273
    invoke-static {p1, p3, p4}, LfV;->a(Ljava/lang/String;J)V

    .line 274
    div-long/2addr p5, v1

    long-to-int p1, p5

    const-string p2, "MobileDownload.BytesDownloaded.DownloadManager.Success"

    .line 275
    invoke-static {p2, p1}, LfV;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string p1, "MobileDownload.DownloadTime.ChromeNetworkStack.Success"

    .line 276
    invoke-static {p1, p3, p4}, LfV;->a(Ljava/lang/String;J)V

    .line 277
    div-long/2addr p5, v1

    long-to-int p1, p5

    const-string p2, "MobileDownload.BytesDownloaded.ChromeNetworkStack.Success"

    .line 278
    invoke-static {p2, p1}, LfV;->a(Ljava/lang/String;I)V

    const-string p1, "MobileDownload.InterruptionsCount.ChromeNetworkStack.Success"

    .line 279
    invoke-static {p1, p7}, LfV;->c(Ljava/lang/String;I)V

    const-string p1, "MobileDownload.BytesWasted.ChromeNetworkStack.Success"

    .line 280
    invoke-virtual {p0, p1, p8, p9}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;J)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a([J)V
    .locals 0

    return-void
.end method

.method public final a(Lj90;J)Z
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 161
    iget-wide v0, p1, Lj90;->f:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 162
    iget-wide v2, p1, Lj90;->g:J

    sub-long/2addr v0, p2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lj90;->g:J

    .line 163
    :cond_1
    iput-wide p2, p1, Lj90;->f:J

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()J
    .locals 5

    .line 97
    iget-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->K:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 98
    sget-boolean v0, Lorg/chromium/chrome/browser/profiles/ProfileManager;->b:Z

    .line 99
    invoke-static {p0, v0}, LJ/N;->MeJ$lv4P(Ljava/lang/Object;Z)J

    move-result-wide v1

    .line 100
    iput-wide v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->K:J

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lorg/chromium/chrome/browser/profiles/ProfileManager;->a:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->K:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(J)V
    .locals 0

    return-void
.end method

.method public b(LbU0;Z)V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b()J

    move-result-wide v0

    iget-object v2, p1, LbU0;->b:Ljava/lang/String;

    .line 81
    invoke-static {v0, v1, p0, v2, p2}, LJ/N;->MV30ev0v(JLjava/lang/Object;Ljava/lang/String;Z)V

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    iget-object v1, p1, LbU0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR80;

    if-eqz v0, :cond_0

    .line 83
    iget-object p2, v0, LR80;->c:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 84
    iget-object p2, p2, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 85
    invoke-static {p2}, Ln80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object p2

    .line 87
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 88
    iget-object p2, p1, LbU0;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    check-cast v0, LG90;

    .line 90
    invoke-virtual {v0, p1}, LG90;->b(LbU0;)J

    .line 91
    invoke-virtual {v0}, LG90;->a()LW80;

    move-result-object v0

    invoke-virtual {v0, p1}, LW80;->b(LbU0;)V

    if-eqz p2, :cond_1

    .line 92
    iget-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->J:Lu80;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->I:Lu80;

    :goto_0
    if-eqz p2, :cond_3

    .line 93
    iget-boolean v0, p2, Lu80;->w:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p2, p1}, Lu80;->c(LbU0;)V

    :cond_3
    :goto_1
    const/4 p2, 0x3

    .line 95
    iget-object v0, p1, LbU0;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ILjava/lang/String;J)V

    const/4 p2, 0x2

    .line 96
    iget-object p1, p1, LbU0;->b:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 103
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 106
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b()J

    move-result-wide v0

    .line 110
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->M2cL0nU9(JLjava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 2

    .line 74
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 75
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->s:Z

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    .line 78
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadItem;)V

    .line 79
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c()V

    return-void
.end method

.method public final b(Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 3
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4
    iget-boolean v1, v0, Lu80;->w:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 6
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadInfo;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Lorg/chromium/components/offline_items_collection/OfflineItem;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lu80;->b(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 9
    iget v2, v2, Lorg/chromium/chrome/browser/download/DownloadInfo;->v:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    .line 10
    iget-object v1, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    .line 11
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->a:LbU0;

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v1

    new-instance v2, Lp80;

    invoke-direct {v2, v0, p1}, Lp80;-><init>(Lu80;Lorg/chromium/chrome/browser/download/DownloadItem;)V

    if-eqz v1, :cond_3

    .line 14
    new-instance v0, LO80;

    invoke-direct {v0, v1, p1, v2}, LO80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;Lorg/chromium/base/Callback;)V

    .line 15
    :try_start_0
    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "DownloadService"

    const-string v1, "Thread limit reached, reschedule notification update later."

    .line 16
    invoke-static {v0, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 17
    throw p1

    .line 18
    :cond_4
    iget p1, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 19
    iget-object p1, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {v0, p1}, Lu80;->c(LbU0;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v0, v1, v4, v4, v4}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final b(Lorg/chromium/chrome/browser/download/DownloadItem;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 21
    iget-object v1, v7, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 22
    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 23
    invoke-static {v1}, LJ/N;->M4t0L845(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 24
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v12

    .line 25
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR80;

    .line 26
    iget-object v2, v7, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 27
    iget-wide v14, v2, Lorg/chromium/chrome/browser/download/DownloadInfo;->j:J

    const/4 v13, 0x4

    if-nez v1, :cond_5

    .line 28
    iget-boolean v1, v2, Lorg/chromium/chrome/browser/download/DownloadInfo;->s:Z

    if-nez v1, :cond_4

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 30
    new-instance v6, LR80;

    .line 31
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 32
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;)Z

    move-result v4

    move-object v1, v6

    move-wide/from16 v2, v16

    move-object/from16 v5, p1

    move-object v9, v6

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, LR80;-><init>(JZLorg/chromium/chrome/browser/download/DownloadItem;I)V

    .line 33
    iput-boolean v10, v9, LR80;->f:Z

    .line 34
    iput-boolean v11, v9, LR80;->g:Z

    .line 35
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->Q:Ljava/util/Set;

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;)Lj90;

    move-result-object v1

    if-nez v1, :cond_2

    .line 38
    new-instance v1, Lj90;

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v2

    if-ne v8, v13, :cond_1

    const/16 v18, 0x1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    const/4 v3, 0x0

    const/16 v19, 0x0

    const-wide/16 v22, 0x0

    move-object v13, v1

    move-wide v4, v14

    move-object v14, v2

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v3

    move-wide/from16 v20, v4

    .line 39
    invoke-direct/range {v13 .. v23}, Lj90;-><init>(Ljava/lang/String;JIZZJJ)V

    .line 40
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->E:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->d()V

    goto :goto_2

    :cond_2
    move-wide v4, v14

    .line 42
    invoke-virtual {v0, v1, v4, v5}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lj90;J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->d()V

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 44
    invoke-virtual {v0, v9}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(LR80;)V

    :cond_4
    return-void

    :cond_5
    move-wide v4, v14

    .line 45
    iput v8, v1, LR80;->d:I

    .line 46
    iput-object v7, v1, LR80;->c:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 47
    iput-boolean v10, v1, LR80;->f:Z

    .line 48
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, LR80;->e:Z

    .line 49
    iput-boolean v11, v1, LR80;->g:Z

    if-eqz v8, :cond_8

    if-eq v8, v10, :cond_7

    const/4 v2, 0x2

    if-eq v8, v2, :cond_7

    const/4 v2, 0x3

    if-eq v8, v2, :cond_7

    if-eq v8, v13, :cond_6

    goto :goto_3

    .line 50
    :cond_6
    invoke-virtual {v0, v12}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;)Lj90;

    move-result-object v2

    .line 51
    iget v3, v2, Lj90;->d:I

    add-int/2addr v3, v10

    iput v3, v2, Lj90;->d:I

    .line 52
    invoke-virtual {v0, v2, v4, v5}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lj90;J)Z

    .line 53
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->d()V

    .line 54
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(LR80;)V

    goto :goto_3

    .line 55
    :cond_7
    iget-object v2, v7, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 56
    iget-wide v2, v2, Lorg/chromium/chrome/browser/download/DownloadInfo;->j:J

    .line 57
    invoke-virtual {v0, v8, v12, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ILjava/lang/String;J)V

    .line 58
    invoke-virtual {v0, v12, v10}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v12, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(LR80;)V

    .line 61
    sget-object v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->Q:Ljava/util/Set;

    invoke-interface {v1, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 62
    :cond_8
    invoke-virtual {v0, v12}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;)Lj90;

    move-result-object v2

    .line 63
    iget-boolean v3, v2, Lj90;->e:Z

    .line 64
    iget-object v6, v7, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 65
    iget-boolean v6, v6, Lorg/chromium/chrome/browser/download/DownloadInfo;->s:Z

    if-ne v3, v6, :cond_9

    .line 66
    invoke-virtual {v0, v2, v4, v5}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lj90;J)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 67
    :cond_9
    iget-object v3, v7, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 68
    iget-boolean v3, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->s:Z

    .line 69
    iput-boolean v3, v2, Lj90;->e:Z

    .line 70
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->d()V

    .line 71
    :cond_a
    iget-object v2, v7, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 72
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/download/DownloadInfo;->s:Z

    if-eqz v2, :cond_b

    .line 73
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(LR80;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public c()V
    .locals 4

    .line 15
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->M:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->M:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR80;

    .line 21
    iget-boolean v3, v2, LR80;->f:Z

    if-eqz v3, :cond_1

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 24
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->M:Z

    return-void

    .line 25
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR80;

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(LR80;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_4
    new-instance v0, LG80;

    invoke-direct {v0, p0}, LG80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;)V

    .line 28
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->A:Landroid/os/Handler;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->z:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDownloadAutoResumptionEnabledInNative()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->D:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->L:LA81;

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1}, LA81;->b()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->L:LA81;

    :cond_2
    return-void
.end method

.method public c(Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 2
    iget-wide v1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->j:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadUtils;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    :goto_0
    invoke-static {p1}, Ln80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;

    move-result-object v2

    .line 7
    iput-object v0, v2, Ln80;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object v0

    .line 9
    new-instance v2, Lorg/chromium/chrome/browser/download/DownloadItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 10
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(Ljava/lang/String;)J

    move-result-wide v3

    .line 12
    invoke-virtual {v2, v3, v4}, Lorg/chromium/chrome/browser/download/DownloadItem;->a(J)V

    .line 13
    invoke-virtual {p0, v2, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    .line 14
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Lorg/chromium/chrome/browser/download/DownloadItem;)V

    return-void
.end method

.method public final d()V
    .locals 9

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->E:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj90;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, v3, Lj90;->c:Z

    const-string v6, "1"

    const-string v7, "0"

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_1

    :cond_0
    move-object v5, v7

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v3, Lj90;->e:Z

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move-object v6, v7

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lj90;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lj90;->d:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lj90;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lj90;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lj90;->g:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->w:Landroid/content/SharedPreferences;

    const-string v3, "DownloadUmaEntry"

    invoke-static {v2, v3, v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->Q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj90;

    .line 6
    iget-object v1, v1, Lj90;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->d()V

    :cond_2
    return-void
.end method

.method public onResumptionFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    new-instance v1, Ln80;

    invoke-direct {v1}, Ln80;-><init>()V

    .line 2
    iput-object p1, v1, Ln80;->m:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    iput v2, v1, Ln80;->E:I

    .line 4
    invoke-virtual {v1}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object v1

    .line 5
    check-cast v0, LG90;

    invoke-virtual {v0, v1}, LG90;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->c(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->Q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, LX80;->b(I)V

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ILjava/lang/String;J)V

    return-void
.end method
