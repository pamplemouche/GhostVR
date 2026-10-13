.class public abstract LvJ0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a()LtJ0;
    .locals 6

    .line 1
    sget-object v0, LuJ0;->a:LUT0;

    invoke-virtual {v0}, LUT0;->c()Z

    move-result v0

    const-string v1, "TabGroupsAndroidSyntheticTrial"

    const-string v2, "TabGridLayoutAndroidSyntheticTrial"

    if-nez v0, :cond_2

    .line 2
    sget-object v0, LuJ0;->a:LUT0;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3
    new-instance v4, LaU0;

    invoke-direct {v4}, LaU0;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {v0}, LUT0;->b()LYT0;

    move-result-object v5

    iget-object v0, v0, LUT0;->a:Ljava/lang/String;

    invoke-interface {v5, v0}, LYT0;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v3, v4}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DownloadAttempted"

    .line 7
    invoke-static {v2, v0}, LJ/N;->MT4iKtWs(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v1, v0}, LJ/N;->MT4iKtWs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v3

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 10
    invoke-static {v0, v4}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    throw v1

    .line 11
    :cond_1
    throw v3

    .line 12
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "TabGridLayoutAndroid"

    .line 13
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "Downloaded_Control"

    if-nez v0, :cond_3

    .line 14
    invoke-static {v2, v3}, LJ/N;->MT4iKtWs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "TabGroupsAndroid"

    .line 15
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    invoke-static {v1, v3}, LJ/N;->MT4iKtWs(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    sget-object v0, LuJ0;->a:LUT0;

    invoke-virtual {v0}, LUT0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtJ0;

    return-object v0
.end method
