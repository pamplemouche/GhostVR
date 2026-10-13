.class public LqS;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LuS;


# direct methods
.method public synthetic constructor <init>(LuS;LpS;)V
    .locals 0

    .line 1
    iput-object p1, p0, LqS;->w:LuS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, LqS;->w:LuS;

    .line 2
    iget-object v0, v0, LuS;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    :goto_0
    iget-object v0, p0, LqS;->w:LuS;

    .line 5
    iget-object v0, v0, LuS;->l:Ljava/util/Queue;

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, LqS;->w:LuS;

    .line 8
    iget-object v0, v0, LuS;->l:Ljava/util/Queue;

    .line 9
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, LqS;->w:LuS;

    .line 11
    iget-object v0, v0, LuS;->j:LkS;

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, LqS;->w:LuS;

    .line 13
    iget-object v2, v2, LuS;->j:LkS;

    .line 14
    iget-wide v2, v2, LkS;->i:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-string v0, "DefaultAnalyticsLogger"

    const-string v1, "Sending low-latency session"

    .line 15
    invoke-static {v0, v1}, LgS;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 16
    :try_start_0
    iget-object v2, p0, LqS;->w:LuS;

    .line 17
    iget-object v2, v2, LuS;->p:LlS;

    .line 18
    iget-object v3, p0, LqS;->w:LuS;

    .line 19
    iget-object v3, v3, LuS;->j:LkS;

    .line 20
    invoke-virtual {v2, v3}, LlS;->a(LkS;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :try_start_1
    iget-object v3, p0, LqS;->w:LuS;

    .line 22
    iput-object v1, v3, LuS;->j:LkS;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    const-string v3, "Unable to store batch"

    .line 23
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v2, :cond_1

    .line 24
    iget-object v0, p0, LqS;->w:LuS;

    .line 25
    iget-object v1, v0, LuS;->a:Landroid/content/Context;

    .line 26
    iget-object v0, v0, LuS;->q:LnS;

    .line 27
    invoke-virtual {v0, v2}, LnS;->b(Ljava/io/File;)Z

    move-result v0

    .line 28
    iget-object v1, p0, LqS;->w:LuS;

    .line 29
    iget-object v2, v1, LuS;->a:Landroid/content/Context;

    .line 30
    invoke-virtual {v1, v0}, LuS;->a(Z)V

    :cond_1
    return-void
.end method
