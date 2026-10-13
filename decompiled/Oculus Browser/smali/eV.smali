.class public abstract LeV;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a()V
    .locals 3

    .line 1
    sget-object v0, LWU;->c:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LWU;->c:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LWU;

    .line 5
    invoke-virtual {v2}, LWU;->b()V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
