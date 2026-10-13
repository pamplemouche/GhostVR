.class public Lo60;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo60;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lo60;->b:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-static {}, LN60;->b()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x3

    if-nez p1, :cond_0

    .line 14
    monitor-exit p0

    return v0

    .line 15
    :cond_0
    :try_start_1
    iget-object p1, p1, Ln60;->d:Ln20;

    .line 16
    iget-object v1, p1, Ln20;->d:[Lorg/chromium/content_public/browser/MessagePort;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/chromium/content_public/browser/MessagePort;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p1, Ln20;->c:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, Lm20;

    invoke-direct {v1, p1, p2}, Lm20;-><init>(Ln20;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 19
    invoke-static {v0, v1, p1, p2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 20
    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 87
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 89
    iget-object v2, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln60;

    .line 90
    iget-object v2, v2, Ln60;->b:LBi;

    if-nez v2, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lo60;->c(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lo60;->b:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 51
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    :try_start_1
    iget-object p1, p1, Ln60;->d:Ln20;

    .line 53
    iput-object p2, p1, Ln20;->e:Landroid/net/Uri;

    .line 54
    iget-object p2, p1, Ln20;->c:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result p2

    if-nez p2, :cond_1

    .line 55
    iget-object p2, p1, Ln20;->c:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p1, p2}, Ln20;->a(Lorg/chromium/content_public/browser/WebContents;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroidx/browser/customtabs/CustomTabsSessionToken;Lh20;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 58
    :try_start_0
    invoke-virtual {p0, p1, p3, p2, v0}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILh20;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroidx/browser/customtabs/CustomTabsSessionToken;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 77
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object p1, p1, Ln60;->d:Ln20;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 79
    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p1, Ln20;->c:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    iput-object p2, p1, Ln20;->c:Lorg/chromium/content_public/browser/WebContents;

    .line 82
    iget-object v0, p1, Ln20;->e:Landroid/net/Uri;

    if-nez v0, :cond_3

    goto :goto_1

    .line 83
    :cond_3
    new-instance v0, Ll20;

    invoke-direct {v0, p1, p2, p2}, Ll20;-><init>(Ln20;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_1

    .line 84
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ln20;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 86
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z
    .locals 4

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 41
    monitor-exit p0

    return p1

    .line 42
    :cond_0
    :try_start_1
    iget-object p1, p1, Ln60;->e:LKi;

    .line 43
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 44
    iget-object v1, p1, LKi;->d:Ljava/lang/String;

    .line 45
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 46
    const-class v3, Landroidx/browser/customtabs/PostMessageService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v2, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string v0, "PostMessageServConn"

    const-string v1, "Could not bind to PostMessageService in client."

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILh20;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILh20;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILh20;Z)Z
    .locals 9

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln60;

    if-eqz v0, :cond_2

    .line 61
    iget-object v1, v0, Ln60;->j:Ljava/lang/String;

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v8, Lk60;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move v6, p4

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lk60;-><init>(Lo60;Lh20;Landroidx/browser/customtabs/CustomTabsSessionToken;IZLn60;)V

    .line 64
    new-instance p1, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;

    .line 65
    iget-object p4, v0, Ln60;->j:Ljava/lang/String;

    const/4 v1, 0x0

    .line 66
    invoke-direct {p1, p4, p2, v1}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;-><init>(Ljava/lang/String;ILorg/chromium/content_public/browser/WebContents;)V

    iput-object p1, v0, Ln60;->g:Lorg/chromium/chrome/browser/browserservices/OriginVerifier;

    .line 67
    sget-object p1, LZ01;->a:LFW;

    new-instance p4, Ll60;

    invoke-direct {p4, v0, v8, p3}, Ll60;-><init>(Ln60;Li20;Lh20;)V

    invoke-static {p1, p4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 68
    iget-object p1, v0, Ln60;->j:Ljava/lang/String;

    .line 69
    invoke-virtual {p3}, Lh20;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 70
    sget-object p4, LzT;->a:Landroid/content/Context;

    .line 71
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    .line 72
    invoke-static {p1, p2, p4}, LPh0;->a(Ljava/lang/String;Ljava/net/URI;Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, v0, Ln60;->f:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x1

    .line 74
    monitor-exit p0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 75
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILjava/lang/String;Z)Z
    .locals 7

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 24
    iget v1, p1, Ln60;->a:I

    if-eq v1, p2, :cond_0

    goto :goto_3

    .line 25
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    iget-boolean v1, p1, Ln60;->h:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    iget-boolean v3, p1, Ln60;->i:Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p3, v2

    or-int/2addr p3, v3

    iput-boolean p3, p1, Ln60;->i:Z

    .line 28
    iget-boolean p3, p1, Ln60;->h:Z

    or-int/2addr p3, p4

    iput-boolean p3, p1, Ln60;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 29
    monitor-exit p0

    return v2

    .line 30
    :cond_2
    :try_start_1
    invoke-static {p2}, LN60;->a(I)LN60;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 32
    iget-wide v3, p1, LN60;->a:J

    sub-long v3, p2, v3

    .line 33
    iget-wide v5, p1, LN60;->b:J

    cmp-long p4, v3, v5

    if-gez p4, :cond_3

    goto :goto_2

    .line 34
    :cond_3
    iput-wide p2, p1, LN60;->a:J

    const-wide/16 p2, 0x2

    mul-long v5, v5, p2

    cmp-long p2, v3, v5

    if-gez p2, :cond_4

    const-wide/16 p2, 0x2710

    .line 35
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iput-wide p2, p1, LN60;->b:J

    goto :goto_1

    :cond_4
    const-wide/16 p2, 0x64

    .line 36
    iput-wide p2, p1, LN60;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x1

    .line 37
    :goto_2
    monitor-exit p0

    return v0

    :cond_5
    const/4 p1, 0x0

    .line 38
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :cond_6
    :goto_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILm60;Ln20;LKi;)Z
    .locals 8

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsSessionToken;->c:LBi;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln60;

    .line 4
    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsSessionToken;->c:LBi;

    .line 5
    iput-object p1, p2, Ln60;->b:LBi;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v7, Ln60;

    .line 7
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 8
    iget-object v3, p1, Landroidx/browser/customtabs/CustomTabsSessionToken;->c:LBi;

    move-object v0, v7

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Ln60;-><init>(Landroid/content/Context;ILBi;Lm60;Ln20;LKi;)V

    .line 10
    iget-object p2, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 11
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 12
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized b(I)Ljava/util/List;
    .locals 4

    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln60;

    iget v3, v3, Ln60;->a:I

    if-ne v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsSessionToken;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Ln60;->b:LBi;

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lo60;->c(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v1, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Ln60;->e:LKi;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, v0, Ln60;->e:LKi;

    .line 6
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, LKi;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1}, LKi;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v2, 0x0

    .line 10
    iput-object v2, v1, LKi;->c:LF;

    .line 11
    :cond_1
    iget-object v1, v0, Ln60;->g:Lorg/chromium/chrome/browser/browserservices/OriginVerifier;

    if-eqz v1, :cond_2

    iget-object v1, v0, Ln60;->g:Lorg/chromium/chrome/browser/browserservices/OriginVerifier;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a()V

    .line 12
    :cond_2
    iget-object v1, v0, Ln60;->c:Lm60;

    if-eqz v1, :cond_3

    iget-object v1, v0, Ln60;->c:Lm60;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v1, LF60;

    :try_start_2
    invoke-virtual {v1, p1}, LF60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lo60;->b:Landroid/util/SparseBooleanArray;

    iget v0, v0, Ln60;->a:I

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Landroidx/browser/customtabs/CustomTabsSessionToken;)LBi;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;

    .line 3
    iget-object p1, p1, Ln60;->b:LBi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized e(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p1, Ln60;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Landroidx/browser/customtabs/CustomTabsSessionToken;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Ln60;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Landroidx/browser/customtabs/CustomTabsSessionToken;)Lh11;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lo60;->f(Landroidx/browser/customtabs/CustomTabsSessionToken;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, LqZ;->a(Ljava/lang/String;)Lh11;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo60;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln60;

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p1, Ln60;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
