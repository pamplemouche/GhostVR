.class public final synthetic LIy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LKy;

.field public final x:[B

.field public final y:Ljava/util/Set;

.field public final z:LJx;


# direct methods
.method public constructor <init>(LKy;[BLjava/util/Set;LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIy;->w:LKy;

    iput-object p2, p0, LIy;->x:[B

    iput-object p3, p0, LIy;->y:Ljava/util/Set;

    iput-object p4, p0, LIy;->z:LJx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, LIy;->w:LKy;

    iget-object v1, p0, LIy;->x:[B

    iget-object v2, p0, LIy;->y:Ljava/util/Set;

    iget-object v3, p0, LIy;->z:LJx;

    .line 1
    iget-object v4, v0, LKy;->a:Lpw;

    const/4 v5, 0x1

    const-string v6, "feed_action_server_response_length_prefixed"

    .line 2
    invoke-virtual {v4, v6, v5}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "ActionUploadRequest"

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 3
    :try_start_0
    invoke-static {v1}, LTy;->a([B)[B

    move-result-object v1

    .line 4
    :cond_0
    iget-object v4, v0, LKy;->d:Ljy;

    .line 5
    invoke-virtual {v4}, Ljy;->a()LBF;

    move-result-object v4

    .line 6
    sget-object v8, LGR;->D:LGR;

    .line 7
    invoke-static {v8, v1, v4}, LTF;->a(LTF;[BLBF;)LTF;

    move-result-object v1

    invoke-static {v1}, LTF;->a(LTF;)LTF;

    .line 8
    check-cast v1, LGR;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    sget-object v4, LXQ;->D:LOF;

    .line 10
    invoke-virtual {v1, v4}, LLF;->a(LyF;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXQ;

    .line 11
    iget v4, v1, LXQ;->z:I

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {v1}, LXQ;->j()LfQ;

    move-result-object v1

    invoke-static {v1}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v1

    .line 13
    iget-object v0, v0, LKy;->g:Lpx;

    invoke-interface {v0}, Lpx;->h()Lrx;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LhJ;

    .line 15
    iget-object v5, v4, LhJ;->A:Ljava/lang/String;

    .line 16
    move-object v8, v0

    check-cast v8, LYz;

    invoke-virtual {v8, v4, v5}, LYz;->a(LhJ;Ljava/lang/String;)Lrx;

    goto :goto_1

    .line 17
    :cond_2
    check-cast v0, LYz;

    .line 18
    iget-object v2, v0, LYz;->b:LIx;

    iget-object v0, v0, LYz;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, LIx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw;

    .line 19
    sget-object v2, Lxw;->b:Lxw;

    if-eq v0, v2, :cond_4

    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "Removing actions on success failed"

    .line 20
    invoke-static {v6, v2, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 21
    :cond_3
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v2}, LKy;->a(Ljava/util/Set;)V

    .line 23
    :cond_4
    :goto_2
    invoke-interface {v3, v1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v1

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Response parse failed"

    .line 24
    invoke-static {v6, v1, v5, v4}, Lhy;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0, v2}, LKy;->a(Ljava/util/Set;)V

    .line 26
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    invoke-interface {v3, v0}, LJx;->a(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
