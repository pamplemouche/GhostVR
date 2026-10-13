.class public final synthetic Ldz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Liz;

.field public final x:Ljava/lang/String;

.field public final y:I

.field public final z:LkJ;


# direct methods
.method public constructor <init>(Liz;Ljava/lang/String;ILkJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldz;->w:Liz;

    iput-object p2, p0, Ldz;->x:Ljava/lang/String;

    iput p3, p0, Ldz;->y:I

    iput-object p4, p0, Ldz;->z:LkJ;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Ldz;->w:Liz;

    iget-object v1, p0, Ldz;->x:Ljava/lang/String;

    iget v2, p0, Ldz;->y:I

    iget-object v3, p0, Ldz;->z:LkJ;

    .line 1
    iget-object v4, v0, Liz;->j:LYw;

    invoke-virtual {v4}, LYw;->b()V

    .line 2
    invoke-virtual {v0}, Liz;->a()LfQ;

    move-result-object v4

    new-instance v5, LYy;

    invoke-direct {v5, v0, v2, v3}, LYy;-><init>(Liz;ILkJ;)V

    .line 3
    iget-boolean v2, v0, Liz;->o:Z

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 4
    invoke-static {v4}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v2

    invoke-virtual {v5, v2}, LYy;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, v0, Liz;->i:Lpx;

    invoke-interface {v2}, Lpx;->k()Lsx;

    move-result-object v2

    .line 6
    iget-boolean v7, v2, Lsx;->b:Z

    if-eqz v7, :cond_3

    .line 7
    iget-object v7, v0, Liz;->m:Lfx;

    invoke-virtual {v2}, Lsx;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    check-cast v7, LKy;

    .line 8
    iget-wide v8, v7, LKy;->i:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    iget-wide v8, v7, LKy;->k:J

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    iget-wide v8, v7, LKy;->j:J

    cmp-long v12, v8, v10

    if-nez v12, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v7, v2, v4, v5, v6}, LKy;->a(Ljava/util/Set;LfQ;LJx;I)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-static {v4}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v2

    invoke-virtual {v5, v2}, LYy;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    const-string v2, "FeedSessionManagerImpl"

    if-eqz v1, :cond_6

    .line 11
    iget-object v4, v0, Liz;->c:Lrz;

    invoke-virtual {v4, v1}, Lrz;->a(Ljava/lang/String;)Loz;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 12
    invoke-interface {v4}, Loz;->c()Lcx;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 13
    iget-object v0, v0, Liz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    new-array v0, v5, [Ljava/lang/Object;

    .line 14
    invoke-interface {v4}, Loz;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Invalidate session %s"

    invoke-static {v2, v1, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-interface {v7, v3}, Lcx;->a(LkJ;)V

    goto :goto_2

    :cond_4
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v1, "Session didn\'t have a ModelProvider %s"

    .line 16
    invoke-static {v2, v1, v0}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v1, "TriggerRefresh didn\'t find session %s"

    .line 17
    invoke-static {v2, v1, v0}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "triggerRefreshTask no StreamSession provided"

    .line 18
    invoke-static {v2, v1, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
