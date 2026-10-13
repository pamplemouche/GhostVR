.class public final LMk;
.super Ljava/util/TimerTask;
.source "PG"


# instance fields
.field public final synthetic w:Lek;


# direct methods
.method public constructor <init>(Lek;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMk;->w:Lek;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, LMk;->w:Lek;

    .line 2
    iget-object v1, v0, Lek;->i:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, v0, Lek;->l:LJm;

    if-nez v1, :cond_4

    .line 4
    iget-boolean v1, v0, Lek;->d:Z

    if-eqz v1, :cond_4

    iget-wide v1, v0, Lek;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v0, Lek;->c:Lok;

    iget-object v2, v0, Lek;->i:Ljava/util/Deque;

    .line 6
    invoke-static {v2}, Lzs;->a(Ljava/util/Collection;)[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string v4, "Must be called from the main thread."

    .line 7
    invoke-static {v4}, Lxp;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lok;->s()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v1, 0x11

    .line 9
    invoke-static {v1, v3}, Lok;->a(ILjava/lang/String;)LJm;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    new-instance v3, Luk;

    iget-object v4, v1, Lok;->f:LHm;

    invoke-direct {v3, v1, v4, v2}, Luk;-><init>(Lok;LHm;[I)V

    invoke-virtual {v1, v3}, Lok;->a(Llk;)Llk;

    move-object v1, v3

    .line 11
    :goto_0
    iput-object v1, v0, Lek;->l:LJm;

    .line 12
    iget-object v2, v0, Lek;->n:LMm;

    invoke-virtual {v1, v2}, LJm;->a(LMm;)V

    .line 13
    iget-object v0, v0, Lek;->i:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    goto :goto_1

    .line 14
    :cond_3
    throw v3

    :cond_4
    :goto_1
    return-void
.end method
