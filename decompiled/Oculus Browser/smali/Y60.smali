.class public final LY60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LR60;


# instance fields
.field public volatile a:LfS;

.field public volatile b:Lv20;

.field public volatile c:Ljava/lang/Object;

.field public volatile d:Ljava/lang/Object;

.field public volatile e:LfS;

.field public volatile f:Ljava/lang/Object;

.field public volatile g:Ljava/lang/Object;

.field public volatile h:Ljava/lang/Object;

.field public volatile i:Ljava/lang/Object;

.field public volatile j:Ljava/lang/Object;

.field public volatile k:LfS;

.field public volatile l:Ljava/lang/Object;

.field public volatile m:Ljava/lang/Object;

.field public volatile n:LfS;

.field public o:LS60;


# direct methods
.method public synthetic constructor <init>(LV60;LU60;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, LaS;

    invoke-direct {p2}, LaS;-><init>()V

    iput-object p2, p0, LY60;->c:Ljava/lang/Object;

    .line 3
    new-instance p2, LaS;

    invoke-direct {p2}, LaS;-><init>()V

    iput-object p2, p0, LY60;->d:Ljava/lang/Object;

    .line 4
    new-instance p2, LaS;

    invoke-direct {p2}, LaS;-><init>()V

    iput-object p2, p0, LY60;->f:Ljava/lang/Object;

    .line 5
    new-instance p2, LaS;

    invoke-direct {p2}, LaS;-><init>()V

    iput-object p2, p0, LY60;->g:Ljava/lang/Object;

    .line 6
    new-instance p2, LaS;

    invoke-direct {p2}, LaS;-><init>()V

    iput-object p2, p0, LY60;->h:Ljava/lang/Object;

    .line 7
    new-instance p2, LaS;

    invoke-direct {p2}, LaS;-><init>()V

    iput-object p2, p0, LY60;->i:Ljava/lang/Object;

    .line 8
    new-instance p2, LaS;

    invoke-direct {p2}, LaS;-><init>()V

    iput-object p2, p0, LY60;->j:Ljava/lang/Object;

    .line 9
    new-instance p2, LaS;

    invoke-direct {p2}, LaS;-><init>()V

    iput-object p2, p0, LY60;->l:Ljava/lang/Object;

    .line 10
    new-instance p2, LaS;

    invoke-direct {p2}, LaS;-><init>()V

    iput-object p2, p0, LY60;->m:Ljava/lang/Object;

    .line 11
    iget-object p2, p1, LV60;->a:LS60;

    .line 12
    iput-object p2, p0, LY60;->o:LS60;

    .line 13
    iget-object p1, p1, LV60;->b:LlY;

    return-void
.end method


# virtual methods
.method public final a()Lx20;
    .locals 4

    .line 1
    iget-object v0, p0, LY60;->f:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, LaS;

    if-eqz v1, :cond_2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY60;->f:Ljava/lang/Object;

    .line 5
    instance-of v2, v1, LaS;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, LY60;->c()LB20;

    move-result-object v1

    iget-object v2, p0, LY60;->o:LS60;

    if-eqz v2, :cond_0

    .line 7
    sget-object v2, Lzm0;->a:LAm0;

    const-string v3, "Cannot return null from a non-@Nullable @Provides method"

    .line 8
    invoke-static {v2, v3}, LbS;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v3, Lx20;

    invoke-direct {v3, v1, v2}, Lx20;-><init>(LB20;LAm0;)V

    .line 10
    iget-object v1, p0, LY60;->f:Ljava/lang/Object;

    .line 11
    invoke-static {v1, v3}, LYR;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, LY60;->f:Ljava/lang/Object;

    move-object v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    throw v1

    .line 13
    :cond_1
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 14
    :cond_2
    :goto_1
    check-cast v0, Lx20;

    return-object v0
.end method

.method public final b()LC20;
    .locals 3

    .line 1
    iget-object v0, p0, LY60;->l:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, LaS;

    if-eqz v1, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY60;->l:Ljava/lang/Object;

    .line 5
    instance-of v2, v1, LaS;

    if-eqz v2, :cond_0

    .line 6
    new-instance v1, LC20;

    invoke-direct {v1}, LC20;-><init>()V

    .line 7
    iget-object v2, p0, LY60;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, LYR;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, LY60;->l:Ljava/lang/Object;

    .line 8
    :cond_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    check-cast v0, LC20;

    return-object v0
.end method

.method public final c()LB20;
    .locals 3

    .line 1
    iget-object v0, p0, LY60;->d:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, LaS;

    if-eqz v1, :cond_2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY60;->d:Ljava/lang/Object;

    .line 5
    instance-of v2, v1, LaS;

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, LY60;->o:LS60;

    if-eqz v1, :cond_0

    .line 7
    sget-object v1, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    .line 8
    iget-object v1, v1, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->d:LB20;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 9
    invoke-static {v1, v2}, LbS;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, LY60;->d:Ljava/lang/Object;

    .line 11
    invoke-static {v2, v1}, LYR;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, LY60;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    throw v1

    .line 13
    :cond_1
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 14
    :cond_2
    :goto_1
    check-cast v0, LB20;

    return-object v0
.end method

.method public final d()LSi;
    .locals 3

    .line 1
    iget-object v0, p0, LY60;->i:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, LaS;

    if-eqz v1, :cond_2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY60;->i:Ljava/lang/Object;

    .line 5
    instance-of v2, v1, LaS;

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, LY60;->o:LS60;

    iget-object v2, p0, LY60;->o:LS60;

    .line 7
    invoke-static {v2}, LT60;->a(LS60;)Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, LSi;

    invoke-direct {v1, v2}, LSi;-><init>(Landroid/content/Context;)V

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 9
    invoke-static {v1, v2}, LbS;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, LY60;->i:Ljava/lang/Object;

    .line 11
    invoke-static {v2, v1}, LYR;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, LY60;->i:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    throw v1

    .line 13
    :cond_1
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 14
    :cond_2
    :goto_1
    check-cast v0, LSi;

    return-object v0
.end method

.method public final e()Lv20;
    .locals 3

    .line 1
    iget-object v0, p0, LY60;->b:Lv20;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lv20;

    iget-object v1, p0, LY60;->o:LS60;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v1, v2}, LbS;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-direct {v0, v1}, Lv20;-><init>(LUg0;)V

    .line 6
    iput-object v0, p0, LY60;->b:Lv20;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public f()Lv60;
    .locals 5

    .line 1
    iget-object v0, p0, LY60;->j:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, LaS;

    if-eqz v1, :cond_2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY60;->j:Ljava/lang/Object;

    .line 5
    instance-of v2, v1, LaS;

    if-eqz v2, :cond_1

    .line 6
    new-instance v1, Lv60;

    iget-object v2, p0, LY60;->o:LS60;

    .line 7
    invoke-static {v2}, LT60;->a(LS60;)Landroid/content/Context;

    move-result-object v2

    .line 8
    iget-object v3, p0, LY60;->k:LfS;

    if-nez v3, :cond_0

    .line 9
    new-instance v3, LX60;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, LX60;-><init>(LY60;I)V

    .line 10
    iput-object v3, p0, LY60;->k:LfS;

    .line 11
    :cond_0
    invoke-static {v3}, LYR;->a(LfS;)LXR;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lv60;-><init>(Landroid/content/Context;LXR;)V

    .line 12
    iget-object v2, p0, LY60;->j:Ljava/lang/Object;

    .line 13
    invoke-static {v2, v1}, LYR;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, LY60;->j:Ljava/lang/Object;

    .line 14
    :cond_1
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 15
    :cond_2
    :goto_0
    check-cast v0, Lv60;

    return-object v0
.end method

.method public g()Lp20;
    .locals 4

    .line 1
    iget-object v0, p0, LY60;->m:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, LaS;

    if-eqz v1, :cond_2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY60;->m:Ljava/lang/Object;

    .line 5
    instance-of v2, v1, LaS;

    if-eqz v2, :cond_1

    .line 6
    new-instance v1, Lp20;

    .line 7
    iget-object v2, p0, LY60;->n:LfS;

    if-nez v2, :cond_0

    .line 8
    new-instance v2, LX60;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, LX60;-><init>(LY60;I)V

    .line 9
    iput-object v2, p0, LY60;->n:LfS;

    .line 10
    :cond_0
    invoke-static {v2}, LYR;->a(LfS;)LXR;

    move-result-object v2

    invoke-direct {v1, v2}, Lp20;-><init>(LXR;)V

    .line 11
    iget-object v2, p0, LY60;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, LYR;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, LY60;->m:Ljava/lang/Object;

    .line 12
    :cond_1
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 13
    :cond_2
    :goto_0
    check-cast v0, Lp20;

    return-object v0
.end method

.method public h()Ls20;
    .locals 4

    .line 1
    iget-object v0, p0, LY60;->h:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, LaS;

    if-eqz v1, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY60;->h:Ljava/lang/Object;

    .line 5
    instance-of v2, v1, LaS;

    if-eqz v2, :cond_0

    .line 6
    new-instance v1, Ls20;

    .line 7
    invoke-virtual {p0}, LY60;->d()LSi;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, LY60;->e()Lv20;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ls20;-><init>(LSi;Lv20;)V

    .line 9
    iget-object v2, p0, LY60;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, LYR;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, LY60;->h:Ljava/lang/Object;

    .line 10
    :cond_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_1
    :goto_0
    check-cast v0, Ls20;

    return-object v0
.end method

.method public i()Le20;
    .locals 4

    .line 1
    new-instance v0, Le20;

    .line 2
    iget-object v1, p0, LY60;->a:LfS;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LX60;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LX60;-><init>(LY60;I)V

    .line 4
    iput-object v1, p0, LY60;->a:LfS;

    .line 5
    :cond_0
    invoke-static {v1}, LYR;->a(LfS;)LXR;

    move-result-object v1

    iget-object v2, p0, LY60;->o:LS60;

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {v2, v3}, LbS;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, LY60;->e()Lv20;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Le20;-><init>(LXR;LUg0;Lv20;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public j()LA20;
    .locals 5

    .line 1
    iget-object v0, p0, LY60;->c:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, LaS;

    if-eqz v1, :cond_2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY60;->c:Ljava/lang/Object;

    .line 5
    instance-of v2, v1, LaS;

    if-eqz v2, :cond_1

    .line 6
    new-instance v1, LA20;

    .line 7
    invoke-virtual {p0}, LY60;->c()LB20;

    move-result-object v2

    .line 8
    iget-object v3, p0, LY60;->e:LfS;

    if-nez v3, :cond_0

    .line 9
    new-instance v3, LX60;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, LX60;-><init>(LY60;I)V

    .line 10
    iput-object v3, p0, LY60;->e:LfS;

    .line 11
    :cond_0
    invoke-static {v3}, LYR;->a(LfS;)LXR;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LA20;-><init>(LB20;LXR;)V

    .line 12
    iget-object v2, p0, LY60;->c:Ljava/lang/Object;

    .line 13
    invoke-static {v2, v1}, LYR;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, LY60;->c:Ljava/lang/Object;

    .line 14
    :cond_1
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 15
    :cond_2
    :goto_0
    check-cast v0, LA20;

    return-object v0
.end method

.method public k()Lz20;
    .locals 4

    .line 1
    iget-object v0, p0, LY60;->g:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, LaS;

    if-eqz v1, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY60;->g:Ljava/lang/Object;

    .line 5
    instance-of v2, v1, LaS;

    if-eqz v2, :cond_0

    .line 6
    new-instance v1, Lz20;

    iget-object v2, p0, LY60;->o:LS60;

    .line 7
    invoke-static {v2}, LT60;->a(LS60;)Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, LY60;->j()LA20;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, LY60;->h()Ls20;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lz20;-><init>(LA20;Ls20;)V

    .line 10
    iget-object v2, p0, LY60;->g:Ljava/lang/Object;

    .line 11
    invoke-static {v2, v1}, LYR;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, LY60;->g:Ljava/lang/Object;

    .line 12
    :cond_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 13
    :cond_1
    :goto_0
    check-cast v0, Lz20;

    return-object v0
.end method
