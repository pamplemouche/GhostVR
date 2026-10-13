.class public Lorg/chromium/chrome/browser/download/DownloadManagerBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 4

    .line 46
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 47
    :try_start_0
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v1, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v0}, LqU;->close()V

    return-wide v1

    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 50
    :try_start_2
    invoke-virtual {v0}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 51
    sget-object v2, LRB;->a:LLB;

    invoke-virtual {v2, p0, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 52
    :goto_0
    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 18

    const-string v0, "DownloadDelegate"

    .line 2
    const-class v1, Ljava/lang/String;

    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v3, "download"

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/DownloadManager;

    .line 4
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 5
    new-instance v4, LK3;

    invoke-direct {v4, v2}, LK3;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v4}, LK3;->a()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/lit8 v11, v2, 0x1

    .line 7
    invoke-static/range {p8 .. p8}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    return-wide v5

    .line 8
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-le v2, v7, :cond_2

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v7, 0x9

    const/4 v8, 0x0

    :try_start_0
    new-array v9, v7, [Ljava/lang/Class;

    aput-object v1, v9, v8

    aput-object v1, v9, v4

    .line 10
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v10, v9, v12

    const/4 v10, 0x3

    aput-object v1, v9, v10

    const/4 v13, 0x4

    aput-object v1, v9, v13

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x5

    aput-object v1, v9, v14

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x6

    aput-object v1, v9, v15

    const-class v1, Landroid/net/Uri;

    const/16 v16, 0x7

    aput-object v1, v9, v16

    const-class v1, Landroid/net/Uri;

    const/16 v17, 0x8

    aput-object v1, v9, v17

    const-string v1, "addCompletedDownload"

    .line 11
    invoke-virtual {v2, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 12
    invoke-static/range {p6 .. p6}, Lorg/chromium/chrome/browser/download/DownloadUtils;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 13
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    invoke-static/range {p7 .. p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    :goto_0
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v8

    aput-object p1, v7, v4

    .line 14
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v12

    aput-object p2, v7, v10

    aput-object p3, v7, v13

    .line 15
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v14

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v15

    aput-object v2, v7, v16

    aput-object v9, v7, v17

    .line 16
    invoke-virtual {v1, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Error accessing the needed method."

    .line 17
    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Error calling the needed method."

    .line 18
    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Cannot find the needed method."

    .line 19
    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_3
    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Cannot access the needed method."

    .line 20
    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    .line 21
    invoke-virtual/range {v3 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide v5

    :goto_1
    move-object/from16 v0, p8

    .line 22
    invoke-static {v5, v6, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(JLjava/lang/String;)V

    return-wide v5
.end method

.method public static a(J)LA80;
    .locals 7

    .line 27
    new-instance v0, LA80;

    invoke-direct {v0, p0, p1}, LA80;-><init>(J)V

    .line 28
    sget-object v1, LzT;->a:Landroid/content/Context;

    const-string v2, "download"

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 30
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [J

    const/4 v5, 0x0

    aput-wide p0, v4, v5

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v4, 0x3

    if-nez v2, :cond_0

    .line 31
    iput v4, v0, LA80;->a:I

    return-object v0

    .line 32
    :cond_0
    iput v5, v0, LA80;->a:I

    .line 33
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v4, "status"

    .line 34
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_2

    const/16 v3, 0x10

    if-eq v4, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    .line 35
    :cond_2
    :goto_0
    iput v3, v0, LA80;->a:I

    const-string v3, "title"

    .line 36
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, LA80;->b:Ljava/lang/String;

    const-string v3, "reason"

    .line 37
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, LA80;->h:I

    const-string v3, "last_modified_timestamp"

    .line 38
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, LA80;->e:J

    const-string v3, "bytes_so_far"

    .line 39
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, LA80;->f:J

    const-string v3, "total_size"

    .line 40
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, LA80;->g:J

    goto :goto_1

    .line 41
    :cond_3
    iput v4, v0, LA80;->a:I

    .line 42
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 43
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, LA80;->d:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "DownloadDelegate"

    const-string v4, "unable to get content URI from DownloadManager"

    .line 44
    invoke-static {v3, v4, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :goto_2
    invoke-virtual {v1, p0, p1}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, LA80;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(JLjava/lang/String;)V
    .locals 2

    .line 53
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 56
    invoke-interface {v1, p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(JLorg/chromium/base/Callback;)V
    .locals 1

    .line 25
    new-instance v0, LB80;

    invoke-direct {v0, p0, p1, p2}, LB80;-><init>(JLorg/chromium/base/Callback;)V

    .line 26
    sget-object p0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method

.method public static a(Ly80;Lorg/chromium/base/Callback;)V
    .locals 1

    .line 23
    new-instance v0, LC80;

    invoke-direct {v0, p0, p1}, LC80;-><init>(Ly80;Lorg/chromium/base/Callback;)V

    sget-object p0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 24
    invoke-virtual {v0, p0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method

.method public static addCompletedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13

    move-object v2, p0

    move-object v0, p2

    move-object/from16 v7, p6

    .line 1
    invoke-static {p2, v7, p0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v12, Lx80;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object v3, p1

    move-wide/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lx80;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3
    :try_start_0
    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v12, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DownloadDelegate"

    const-string v3, "Thread limit reached, reschedule notification update later."

    .line 4
    invoke-static {v2, v3, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, -0x1

    move-wide/from16 v3, p9

    .line 5
    invoke-static {v3, v4, v1, v2, v0}, LJ/N;->Mct0JWyi(JJZ)V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)J
    .locals 7

    .line 3
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 5
    invoke-interface {v1, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 7
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_0
    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "download_id_mappings"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static removeCompletedDownload(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, LFW;->j:LFW;

    new-instance v1, Lw80;

    invoke-direct {v1, p0, p1}, Lw80;-><init>(Ljava/lang/String;Z)V

    const-wide/16 p0, 0x0

    .line 2
    invoke-static {v0, v1, p0, p1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
