.class public LyC;
.super LDC;
.source "PG"


# instance fields
.field public j:J

.field public final synthetic k:LEC;


# direct methods
.method public constructor <init>(LEC;)V
    .locals 7

    .line 1
    iput-object p1, p0, LyC;->k:LEC;

    .line 2
    iget-object v0, p1, LEC;->B:LbE;

    .line 3
    iget v4, v0, LbE;->g:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Heartbeat"

    move-object v1, p0

    move-object v2, p1

    .line 4
    invoke-direct/range {v1 .. v6}, LDC;-><init>(LEC;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(LEC;LIE;)V
    .locals 2

    .line 5
    iput-object p1, p0, LyC;->k:LEC;

    const-string v0, "Heartbeat"

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2, v1}, LDC;-><init>(LEC;Ljava/lang/String;LIE;LuC;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 8

    .line 1
    iget-object v0, p0, LyC;->k:LEC;

    .line 2
    iget-object v0, v0, LEC;->y:LZB;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 3
    check-cast v0, LgC;

    const-string v4, "Sending heartbeat to server: %s"

    invoke-virtual {v0, v4, v2}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-wide v4, p0, LyC;->j:J

    iget-object v0, p0, LyC;->k:LEC;

    .line 5
    iget-object v0, v0, LEC;->x:LdC;

    .line 6
    invoke-interface {v0}, LdC;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 7
    iget-object v0, p0, LyC;->k:LEC;

    .line 8
    iget-object v0, v0, LEC;->x:LdC;

    .line 9
    invoke-interface {v0}, LdC;->a()J

    move-result-wide v4

    .line 10
    iget-object v0, p0, LNC;->f:LaF;

    .line 11
    iget-object v2, p0, LyC;->k:LEC;

    .line 12
    iget-object v2, v2, LEC;->B:LbE;

    .line 13
    iget v2, v2, LbE;->h:I

    .line 14
    invoke-virtual {v0, v2}, LaF;->a(I)I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, LyC;->j:J

    .line 15
    :cond_1
    iget-object v0, p0, LyC;->k:LEC;

    .line 16
    iget-object v2, v0, LEC;->D:LOC;

    .line 17
    invoke-virtual {v2}, LOC;->b()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 18
    invoke-virtual {v0, v3, v2}, LEC;->a(ZZ)V

    return v1
.end method
