.class public final synthetic LOy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LSy;

.field public final x:[B

.field public final y:LJx;


# direct methods
.method public constructor <init>(LSy;[BLJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOy;->w:LSy;

    iput-object p2, p0, LOy;->x:[B

    iput-object p3, p0, LOy;->y:LJx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LOy;->w:LSy;

    iget-object v1, p0, LOy;->x:[B

    iget-object v2, p0, LOy;->y:LJx;

    .line 1
    iget-object v3, v0, LSy;->a:Lpw;

    const-string v4, "feed_server_response_length_prefixed"

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v3, v4, v5}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    :try_start_0
    invoke-static {v1}, LTy;->a([B)[B

    move-result-object v1

    .line 4
    :cond_0
    iget-object v3, v0, LSy;->d:Ljy;

    .line 5
    invoke-virtual {v3}, Ljy;->a()LBF;

    move-result-object v3

    .line 6
    sget-object v4, LGR;->D:LGR;

    .line 7
    invoke-static {v4, v1, v3}, LTF;->a(LTF;[BLBF;)LTF;

    move-result-object v1

    invoke-static {v1}, LTF;->a(LTF;)LTF;

    .line 8
    check-cast v1, LGR;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v3, v0, LSy;->j:Lxx;

    new-instance v4, LPy;

    invoke-direct {v4, v0, v2, v1}, LPy;-><init>(LSy;LJx;LGR;)V

    const-string v0, "FeedRequestManagerImpl consumer"

    invoke-virtual {v3, v0, v4}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "FeedRequestManagerImpl"

    const-string v4, "Response parse failed"

    .line 10
    invoke-static {v3, v0, v4, v1}, Lhy;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    invoke-interface {v2, v0}, LJx;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
