.class public abstract LlW0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a()V
    .locals 4

    .line 1
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, LwT;->c()LwT;

    move-result-object v1

    const-string v2, "use-mobile-user-agent"

    invoke-virtual {v1, v2}, LwT;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-virtual {v0}, LqU;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 6
    :try_start_2
    invoke-virtual {v0}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 7
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    throw v2
.end method
