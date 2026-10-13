.class public Lorg/chromium/chrome/browser/feed/FeedDebuggingBridge;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static getFeedFetchUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "InterestFeedContentSuggestions"

    const-string v1, "feed_server_endpoint"

    .line 1
    invoke-static {v0, v1}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https://www.google.com/httpservice/noretry/DiscoverClankService/FeedQuery"

    :cond_0
    return-object v0
.end method

.method public static getProcessScopeDump()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lsb0;->d:Liw;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lsb0;->a()V

    .line 3
    :cond_0
    sget-object v0, Lsb0;->d:Liw;

    .line 4
    new-instance v7, Lfy;

    new-instance v4, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lfy;-><init>(ILfy;Ljava/lang/ref/WeakReference;Ljava/util/List;Z)V

    .line 5
    invoke-virtual {v7, v0}, Lfy;->a(Ldy;)V

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 7
    invoke-virtual {v7, v0}, Lfy;->a(Ljava/lang/Appendable;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Unable to dump ProcessScope"

    return-object v0
.end method

.method public static triggerRefresh()V
    .locals 1

    .line 1
    sget-object v0, Lsb0;->d:Liw;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lsb0;->a()V

    .line 3
    :cond_0
    sget-object v0, Lsb0;->d:Liw;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    check-cast v0, Lkx;

    .line 5
    iget-object v0, v0, Lkx;->c:Lhw;

    .line 6
    check-cast v0, LUy;

    invoke-virtual {v0}, LUy;->a()V

    return-void
.end method
