.class public final Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(ZILFb0;)V
    .locals 6

    if-eqz p0, :cond_0

    const-string p0, "https://clients4.google.com/generate_204"

    goto :goto_0

    :cond_0
    const-string p0, "http://clients4.google.com/generate_204"

    .line 1
    :goto_0
    invoke-static {p0}, LJ/N;->MGhgrVHC(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v5, "feedback"

    if-nez v0, :cond_1

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "Predefined URL invalid."

    .line 2
    invoke-static {v5, p1, p0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object p0, LZ01;->a:LFW;

    new-instance p1, LDb0;

    invoke-direct {p1, p2, v3}, LDb0;-><init>(LFb0;I)V

    .line 4
    invoke-static {p0, p1, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    new-instance p0, LEb0;

    invoke-direct {p0, v0, p1, p2}, LEb0;-><init>(Ljava/net/URL;ILFb0;)V

    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {p0, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse predefined URL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    sget-object p0, LZ01;->a:LFW;

    new-instance p1, LDb0;

    invoke-direct {p1, p2, v3}, LDb0;-><init>(LFb0;I)V

    .line 10
    invoke-static {p0, p1, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method

.method public static executeCallback(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p0, LFb0;

    check-cast p0, LKb0;

    invoke-virtual {p0, p1}, LKb0;->a(I)V

    return-void
.end method
