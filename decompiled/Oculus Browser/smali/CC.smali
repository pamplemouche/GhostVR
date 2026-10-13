.class public LCC;
.super LDC;
.source "PG"


# instance fields
.field public final synthetic j:LEC;


# direct methods
.method public constructor <init>(LEC;)V
    .locals 7

    .line 1
    iput-object p1, p0, LCC;->j:LEC;

    .line 2
    iget-object v0, p1, LEC;->B:LbE;

    .line 3
    iget v5, v0, LbE;->e:I

    const/4 v6, 0x1

    const-string v3, "RegSyncHeartbeat"

    move-object v1, p0

    move-object v2, p1

    move v4, v5

    .line 4
    invoke-direct/range {v1 .. v6}, LDC;-><init>(LEC;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(LEC;LIE;)V
    .locals 7

    .line 5
    iput-object p1, p0, LCC;->j:LEC;

    .line 6
    iget-object v0, p1, LEC;->B:LbE;

    .line 7
    iget v4, v0, LbE;->e:I

    const/4 v6, 0x0

    const-string v3, "RegSyncHeartbeat"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 8
    invoke-direct/range {v1 .. v6}, LDC;-><init>(LEC;Ljava/lang/String;ILIE;LuC;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 5

    .line 1
    iget-object v0, p0, LCC;->j:LEC;

    .line 2
    iget-object v0, v0, LEC;->D:LOC;

    .line 3
    invoke-virtual {v0}, LOC;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, LCC;->j:LEC;

    .line 5
    iget-object v2, v0, LEC;->y:LZB;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 6
    iget-object v0, v0, LEC;->D:LOC;

    aput-object v0, v4, v1

    .line 7
    check-cast v2, LgC;

    const-string v0, "Registration state not in sync with server: %s"

    invoke-virtual {v2, v0, v4}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, LCC;->j:LEC;

    .line 9
    invoke-virtual {v0, v1, v3}, LEC;->a(ZZ)V

    return v3

    .line 10
    :cond_0
    iget-object v0, p0, LCC;->j:LEC;

    .line 11
    iget-object v0, v0, LEC;->y:LZB;

    new-array v2, v1, [Ljava/lang/Object;

    .line 12
    check-cast v0, LgC;

    const-string v3, "Not sending message since state is now in sync"

    invoke-virtual {v0, v3, v2}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
