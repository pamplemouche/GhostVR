.class public Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final h:Ljava/util/Set;

.field public static i:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;


# instance fields
.field public final a:LK60;

.field public final b:Lp20;

.field public final c:Lo60;

.field public final d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Lorg/chromium/base/Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "/apps/bg_non_interactive"

    const-string v2, "/background"

    const-string v3, "/bg_non_interactive"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->h:Ljava/util/Set;

    .line 3
    new-instance v0, LaV;

    const-string v1, "CustomTabs.ParallelRequestStatusOnStart"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LK60;

    invoke-direct {v0}, LK60;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a:LK60;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lo60;

    invoke-direct {v0}, Lo60;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    .line 6
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "custom-tabs-log-service-requests"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d:Z

    .line 7
    invoke-static {}, LKY;->c()LR60;

    move-result-object v0

    check-cast v0, LY60;

    invoke-virtual {v0}, LY60;->g()Lp20;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->b:Lp20;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 5

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    :try_start_0
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 10
    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 11
    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 12
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 14
    :cond_4
    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static synthetic a(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;LqU;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 18
    :try_start_0
    invoke-virtual {p1}, LqU;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, LqU;->close()V

    :goto_0
    return-void
.end method

.method public static c()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Li00;->a()Li00;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    sget-object v2, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 5
    iget-boolean v2, v2, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, v0, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v0, Li00;->h:Z

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    .line 9
    invoke-static {v3, v4, v2, v2}, LJ/N;->MDMZjIJS(Ljava/lang/Object;ZZZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content_public/browser/WebContents;

    .line 10
    iput-object v2, v0, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    .line 11
    new-instance v2, Lh00;

    invoke-direct {v2, v0, v1}, Lh00;-><init>(Li00;Lg00;)V

    iput-object v2, v0, Li00;->g:Lh00;

    .line 12
    iget-object v1, v0, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1, v2}, Lorg/chromium/content_public/browser/WebContents;->a(Lg11;)V

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Li00;->f:J

    .line 14
    invoke-virtual {v0, v4}, Li00;->a(I)V

    :cond_2
    :goto_0
    return-void

    .line 15
    :cond_3
    throw v1
.end method

.method public static d()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->i:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;-><init>()V

    .line 4
    sput-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->i:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->i:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    return-object v0
.end method

.method public static final synthetic e()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    .line 2
    invoke-interface {v0}, LF01;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CreateSpareWebContents"

    .line 3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_2
    throw v2
.end method

.method public static final synthetic f()V
    .locals 5

    const-string v0, "InitializeViewHierarchy"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Li00;->a()Li00;

    move-result-object v1

    .line 3
    sget-object v2, LzT;->a:Landroid/content/Context;

    const v3, 0x7f0e0074

    const v4, 0x7f0e0075

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Li00;->a(Landroid/content/Context;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    throw v2
.end method

.method public static final synthetic g()V
    .locals 3

    const-string v0, "WarmupInternalFinishInitialization"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    invoke-static {v1}, LJ/N;->MejOrYY2(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, LN60;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    throw v2
.end method

.method public static notifyClientOfDetachedRequestCompletion(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "CCTReportParallelRequestStatus"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "net_error"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object p1

    const-string p2, "onDetachedRequestCompleted"

    .line 6
    invoke-virtual {p1, p0, p2, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 7
    iget-boolean p0, p1, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d:Z

    if-eqz p0, :cond_2

    .line 8
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p0, p1, p2

    const-string p0, "ChromeConnection"

    const-string p2, "%s args = %s"

    .line 10
    invoke-static {p0, p2, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 1

    .line 145
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a:LK60;

    invoke-virtual {v0, p1}, LK60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    return-void
.end method

.method public final a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    .line 37
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 38
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual/range {p0 .. p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    return-void

    .line 40
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v3

    .line 41
    iget-wide v4, v3, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    move-object/from16 v6, p3

    .line 42
    invoke-static {v4, v5, v3, v6}, LJ/N;->MB7bnmWo(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-static {}, LZ60;->b()LZ60;

    move-result-object v3

    iget-boolean v3, v3, LZ60;->d:Z

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 45
    invoke-static {v3}, LJ/N;->M5m45FqE(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x6

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {v3}, LJ/N;->MLuVS6E8(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x7

    goto :goto_0

    .line 47
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c()Z

    move-result v3

    const-string v7, "PredictivePrefetchingAllowedOnAllConnectionTypes"

    if-eqz v3, :cond_4

    .line 48
    invoke-static {v7}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x8

    goto :goto_0

    .line 49
    :cond_4
    sget-object v3, LzT;->a:Landroid/content/Context;

    const-string v9, "connectivity"

    .line 50
    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 51
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 52
    iget-object v3, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v3, v2}, Lo60;->h(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 53
    invoke-static {v7}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x9

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    const/16 v7, 0xa

    const-string v9, "CustomTabs.SpeculationStatusOnStart"

    .line 54
    invoke-static {v9, v3, v7}, LfV;->a(Ljava/lang/String;II)V

    const/4 v10, 0x1

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_10

    .line 55
    iget-object v3, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v3, v2}, Lo60;->e(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    move-result v3

    .line 56
    invoke-static {}, Li00;->a()Li00;

    move-result-object v11

    .line 57
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v12

    .line 58
    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    if-eqz v3, :cond_f

    const/4 v3, 0x3

    .line 59
    invoke-static {v9, v3, v7}, LfV;->a(Ljava/lang/String;II)V

    .line 60
    iget-object v9, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a:LK60;

    iget-object v3, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    if-eqz v9, :cond_e

    .line 61
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    if-eqz v1, :cond_7

    .line 62
    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    :cond_7
    invoke-static {v7, v6}, LqZ;->a(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    goto/16 :goto_3

    .line 64
    :cond_8
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 65
    new-instance v13, LhH0;

    invoke-direct {v13}, LhH0;-><init>()V

    new-instance v14, Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {v14, v1}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object v14, v13, LhH0;->d:Lorg/chromium/ui/base/WindowAndroid;

    .line 67
    invoke-virtual {v13, v5}, LhH0;->b(I)LhH0;

    .line 68
    new-instance v5, Lt60;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v5

    invoke-direct/range {v15 .. v23}, Lt60;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;ZZZZLQG0;Lja0;Lpl0;)V

    .line 69
    iput-object v5, v13, LhH0;->k:LlH0;

    .line 70
    iput-boolean v10, v13, LhH0;->l:Z

    .line 71
    invoke-virtual {v13}, LhH0;->a()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    .line 72
    invoke-static {v1, v6}, LQC0;->a(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 73
    iget v13, v1, Landroid/graphics/Rect;->right:I

    iget v14, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    .line 74
    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v1

    .line 75
    iget-object v1, v5, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 76
    invoke-interface {v1, v13, v14}, Lorg/chromium/content_public/browser/WebContents;->a(II)V

    .line 77
    iget-object v1, v5, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_9

    .line 78
    invoke-interface {v1, v4}, Lorg/chromium/content_public/browser/WebContents;->b(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 79
    :cond_9
    iget-object v1, v5, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LpH0;

    .line 80
    invoke-interface {v13, v5, v6}, LpH0;->onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_2

    .line 81
    :cond_a
    new-instance v13, LI60;

    invoke-direct {v13, v9, v4}, LI60;-><init>(LK60;LH60;)V

    .line 82
    iget-object v1, v5, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1, v13}, LWT;->a(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, v5, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 84
    invoke-virtual {v3, v2, v1}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;Lorg/chromium/content_public/browser/WebContents;)V

    .line 85
    new-instance v14, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 86
    invoke-direct {v14, v8, v6}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 87
    invoke-static {v7}, LqZ;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 88
    invoke-virtual {v3, v2}, Lo60;->g(Landroidx/browser/customtabs/CustomTabsSessionToken;)Lh11;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 89
    invoke-virtual {v3, v2}, Lo60;->g(Landroidx/browser/customtabs/CustomTabsSessionToken;)Lh11;

    move-result-object v1

    .line 90
    iget-object v1, v1, Lh11;->a:Ljava/lang/String;

    :cond_b
    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    move-object v6, v1

    .line 91
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 92
    new-instance v1, Lh11;

    invoke-direct {v1, v6, v10}, Lh11;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object v1, v14, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 94
    :cond_d
    new-instance v10, LJ60;

    const/4 v7, 0x0

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v5

    move-object v5, v13

    invoke-direct/range {v1 .. v7}, LJ60;-><init>(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;LpH0;Ljava/lang/String;LH60;)V

    iput-object v10, v9, LK60;->a:LJ60;

    .line 95
    iget-object v1, v10, LJ60;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1, v14}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_3

    .line 96
    :cond_e
    throw v4

    .line 97
    :cond_f
    invoke-static {}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c()V

    .line 98
    :goto_3
    invoke-virtual {v11, v12, v8}, Li00;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    :cond_10
    move-object/from16 v1, p5

    .line 99
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/util/List;)Z

    return-void

    .line 100
    :cond_11
    throw v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "ChromeConnection"

    const-string p2, "%s = %b, Calling UID = %d"

    invoke-static {p1, p2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(ZLandroidx/browser/customtabs/CustomTabsSessionToken;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .locals 12

    .line 107
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string v0, "CustomTabsConnection.mayLaunchUrlOnUiThread"

    .line 108
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    const/4 v0, 0x1

    .line 109
    :try_start_0
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    .line 110
    invoke-interface {v0}, LF01;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p7, :cond_0

    .line 111
    sget-object v0, LZ01;->a:LFW;

    new-instance v11, LD60;

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, LD60;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;ZLandroidx/browser/customtabs/CustomTabsSessionToken;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    const-wide/16 v3, 0x0

    .line 112
    invoke-static {v0, v11, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    if-eqz v1, :cond_1

    .line 113
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 114
    :try_start_1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, p0

    move-object/from16 v0, p6

    .line 115
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v9, p0

    move-object/from16 v0, p6

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 117
    invoke-virtual/range {v3 .. v8}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v1, :cond_5

    .line 118
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_1
    move-object v9, p0

    :goto_2
    move-object v2, v0

    .line 119
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_6

    .line 120
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_6
    throw v3
.end method

.method public final a()Z
    .locals 9

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 126
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_6

    .line 127
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v3, "/proc/"

    .line 128
    invoke-static {v3, v1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 129
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->canExecute()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    return v2

    .line 131
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->h:Ljava/util/Set;

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cgroup"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3

    const-string v3, "cpuset"

    goto :goto_0

    :cond_3
    const-string v3, "cpu"

    :goto_0
    const/4 v4, 0x0

    .line 134
    :try_start_0
    invoke-static {}, LqU;->a()LqU;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 136
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    array-length v7, v1

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    aget-object v7, v1, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x2

    aget-object v1, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    invoke-static {v4, v6}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v4, v5}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;LqU;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_5
    :try_start_5
    invoke-static {v4, v6}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v4, v5}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;LqU;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 140
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    .line 141
    :try_start_8
    invoke-static {v1, v6}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v1

    .line 142
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v2

    .line 143
    :try_start_a
    invoke-static {v1, v5}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;LqU;)V

    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    :goto_1
    move-object v1, v4

    .line 144
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_6
    return v0
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "http"

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public a(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v0, p1}, Lo60;->d(Landroidx/browser/customtabs/CustomTabsSessionToken;)LBi;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 122
    :cond_0
    :try_start_0
    check-cast p1, LHi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :try_start_1
    iget-object p1, p1, LHi;->a:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsSessionToken;->a:LA;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast p1, Ly;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p1, p2, p3}, Ly;->f(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    :try_start_4
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 124
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_1
    return v0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 101
    :cond_0
    invoke-static {}, Li00;->a()Li00;

    move-result-object v1

    .line 102
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :try_start_0
    const-string v4, "android.support.customtabs.otherurls.URL"

    .line 104
    invoke-static {v3, v4}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Li00;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final a(Z)Z
    .locals 7

    .line 21
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 23
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v2, v0}, Lo60;->a(I)V

    .line 24
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 25
    new-instance v4, LFg0;

    invoke-direct {v4}, LFg0;-><init>()V

    if-nez v2, :cond_1

    .line 26
    sget-object v5, LZ01;->e:LFW;

    new-instance v6, Lw60;

    invoke-direct {v6, p0}, Lw60;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V

    invoke-virtual {v4, v5, v6}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a:LK60;

    .line 28
    iget-object p1, p1, LK60;->a:LJ60;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 29
    sget-object p1, LZ01;->e:LFW;

    sget-object v5, Ly60;->w:Ljava/lang/Runnable;

    invoke-virtual {v4, p1, v5}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 30
    :cond_3
    sget-object p1, LZ01;->e:LFW;

    sget-object v5, Lz60;->w:Ljava/lang/Runnable;

    invoke-virtual {v4, p1, v5}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    if-nez v2, :cond_4

    .line 31
    sget-object p1, LZ01;->e:LFW;

    sget-object v2, LA60;->w:Ljava/lang/Runnable;

    invoke-virtual {v4, p1, v2}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 32
    :cond_4
    sget-object p1, LZ01;->e:LFW;

    new-instance v2, LB60;

    invoke-direct {v2, p0, v0}, LB60;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;I)V

    invoke-virtual {v4, p1, v2}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v4, v1}, LFg0;->a(Z)V

    return v3
.end method

.method public b()Z
    .locals 4

    const-string v0, "CustomTabsConnection.warmup"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Z)Z

    move-result v1

    const-string v2, "warmup()"

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    throw v2
.end method
