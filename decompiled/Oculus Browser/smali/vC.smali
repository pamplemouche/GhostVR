.class public LvC;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlC;


# instance fields
.field public final synthetic a:LEC;


# direct methods
.method public constructor <init>(LEC;)V
    .locals 0

    .line 1
    iput-object p1, p0, LvC;->a:LEC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, LoC;

    .line 2
    iget-object v0, p0, LvC;->a:LEC;

    .line 3
    iget-object v0, v0, LEC;->x:LdC;

    .line 4
    invoke-interface {v0}, LdC;->b()Z

    move-result v0

    const-string v1, "Not on internal thread"

    invoke-static {v0, v1}, LWE;->a(ZLjava/lang/Object;)V

    .line 5
    iget-object v0, p1, LoC;->a:Ljava/lang/Object;

    .line 6
    check-cast v0, LqC;

    invoke-virtual {v0}, LqC;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, LoC;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, [B

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 9
    :goto_0
    iget-object v3, p1, LoC;->a:Ljava/lang/Object;

    .line 10
    check-cast v3, LqC;

    invoke-virtual {v3}, LqC;->a()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 11
    iget-object v3, p0, LvC;->a:LEC;

    iget-object v3, v3, LEC;->H:LWC;

    sget-object v6, LRC;->A:LRC;

    .line 12
    iget-object v3, v3, LWC;->e:Ljava/util/Map;

    invoke-static {v3, v6}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 13
    iget-object v3, p0, LvC;->a:LEC;

    .line 14
    iget-object v3, v3, LEC;->y:LZB;

    new-array v6, v5, [Ljava/lang/Object;

    .line 15
    iget-object p1, p1, LoC;->a:Ljava/lang/Object;

    .line 16
    check-cast p1, LqC;

    .line 17
    iget-object p1, p1, LqC;->b:Ljava/lang/String;

    aput-object p1, v6, v4

    .line 18
    check-cast v3, LgC;

    const-string p1, "Could not read state blob: %s"

    invoke-virtual {v3, p1, v6}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_1
    iget-object p1, p0, LvC;->a:LEC;

    .line 20
    iget-object v3, p1, LEC;->x:LdC;

    invoke-interface {v3}, LdC;->b()Z

    move-result v3

    invoke-static {v3, v1}, LWE;->a(ZLjava/lang/Object;)V

    if-nez v0, :cond_2

    move-object v1, v2

    goto :goto_1

    .line 21
    :cond_2
    iget-object v1, p1, LEC;->y:LZB;

    iget-object v3, p1, LEC;->F:LTB;

    invoke-static {v1, v0, v3}, LFC;->a(LZB;[BLTB;)LXD;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 22
    iget-object v3, p1, LEC;->H:LWC;

    sget-object v6, LRC;->z:LRC;

    .line 23
    iget-object v3, v3, LWC;->e:Ljava/util/Map;

    invoke-static {v3, v6}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 24
    iget-object v3, p1, LEC;->y:LZB;

    new-array v6, v5, [Ljava/lang/Object;

    .line 25
    invoke-static {v0}, LPE;->b([B)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v4

    .line 26
    check-cast v3, LgC;

    const-string v0, "Failed deserializing persistent state: %s"

    invoke-virtual {v3, v0, v6}, LgC;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_7

    .line 27
    iget-object v0, p1, LEC;->y:LZB;

    new-array v3, v5, [Ljava/lang/Object;

    .line 28
    iget-object v6, v1, LXD;->d:LPE;

    aput-object v6, v3, v4

    .line 29
    check-cast v0, LgC;

    const-string v6, "Restarting from persistent state: %s"

    invoke-virtual {v0, v6, v3}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1, v2}, LEC;->b(LPE;)V

    .line 31
    iget-object v0, v1, LXD;->d:LPE;

    .line 32
    invoke-virtual {p1, v0}, LEC;->a(LPE;)V

    .line 33
    iput-boolean v4, p1, LEC;->L:Z

    .line 34
    iget-object v0, p1, LEC;->B:LbE;

    iget-object v2, p1, LEC;->w:LfC;

    .line 35
    iget-wide v6, v1, LXD;->e:J

    .line 36
    check-cast v2, LsC;

    .line 37
    iget-object v1, v2, LsC;->a:LdC;

    .line 38
    invoke-interface {v1}, LdC;->a()J

    move-result-wide v8

    .line 39
    iget-boolean v1, v0, LbE;->n:Z

    if-nez v1, :cond_4

    .line 40
    iget v1, v0, LbE;->l:I

    goto :goto_3

    :cond_4
    cmp-long v1, v6, v8

    if-gtz v1, :cond_6

    .line 41
    iget v1, v0, LbE;->g:I

    int-to-long v10, v1

    add-long v12, v10, v6

    cmp-long v1, v12, v8

    if-gez v1, :cond_5

    goto :goto_2

    :cond_5
    sub-long v6, v8, v6

    sub-long/2addr v10, v6

    long-to-int v1, v10

    .line 42
    iget v3, v0, LbE;->l:I

    .line 43
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    .line 44
    :cond_6
    :goto_2
    iget v1, v0, LbE;->l:I

    .line 45
    :goto_3
    iget-object v2, v2, LsC;->b:LZB;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 47
    iget-boolean v6, v0, LbE;->n:Z

    .line 48
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    .line 49
    iget v6, v0, LbE;->l:I

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    .line 51
    iget v0, v0, LbE;->g:I

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x4

    .line 53
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v0

    .line 54
    check-cast v2, LgC;

    const-string v0, "Computed heartbeat delay %s from: offline-delivery = %s, initial-persistent-delay = %s, heartbeat-interval = %s, nowMs = %s"

    invoke-virtual {v2, v0, v3}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, LzC;

    invoke-direct {v0, p1, v1}, LzC;-><init>(LEC;I)V

    iput-object v0, p1, LEC;->U:LzC;

    const-string v1, ""

    .line 56
    invoke-virtual {v0, v4, v1}, LNC;->a(ZLjava/lang/String;)V

    .line 57
    iget-object p1, p1, LEC;->S:LyC;

    const-string v0, "Startup-after-persistence"

    .line 58
    invoke-virtual {p1, v4, v0}, LNC;->a(ZLjava/lang/String;)V

    goto :goto_4

    .line 59
    :cond_7
    iget-object v0, p1, LEC;->y:LZB;

    new-array v1, v4, [Ljava/lang/Object;

    check-cast v0, LgC;

    const-string v2, "Starting with no previous state"

    invoke-virtual {v0, v2, v1}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iput-boolean v5, p1, LEC;->L:Z

    const-string v0, "Startup"

    .line 61
    invoke-virtual {p1, v0}, LEC;->a(Ljava/lang/String;)V

    :goto_4
    return-void
.end method
