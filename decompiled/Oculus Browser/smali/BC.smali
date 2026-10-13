.class public LBC;
.super LDC;
.source "PG"


# instance fields
.field public final j:LLE;

.field public final synthetic k:LEC;


# direct methods
.method public constructor <init>(LEC;)V
    .locals 7

    .line 1
    iput-object p1, p0, LBC;->k:LEC;

    .line 2
    iget-object v0, p1, LEC;->B:LbE;

    .line 3
    iget v5, v0, LbE;->f:I

    const-string v3, "PersistentWrite"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 4
    invoke-direct/range {v1 .. v6}, LDC;-><init>(LEC;Ljava/lang/String;IIZ)V

    .line 5
    sget-object p1, LXD;->f:LXD;

    .line 6
    new-instance v0, LLE;

    invoke-direct {v0, p1}, LLE;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, LBC;->j:LLE;

    return-void
.end method

.method public constructor <init>(LEC;LIE;)V
    .locals 7

    .line 8
    iput-object p1, p0, LBC;->k:LEC;

    .line 9
    iget-object v0, p1, LEC;->B:LbE;

    .line 10
    iget v4, v0, LbE;->f:I

    const/4 v6, 0x0

    const-string v3, "PersistentWrite"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 11
    invoke-direct/range {v1 .. v6}, LDC;-><init>(LEC;Ljava/lang/String;ILIE;LuC;)V

    .line 12
    sget-object p1, LXD;->f:LXD;

    .line 13
    new-instance p2, LLE;

    invoke-direct {p2, p1}, LLE;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, LBC;->j:LLE;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 5

    .line 1
    iget-object v0, p0, LBC;->k:LEC;

    .line 2
    iget-object v1, v0, LEC;->J:LPE;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-wide v3, v0, LEC;->O:J

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5
    new-instance v3, LXD;

    invoke-direct {v3, v1, v0}, LXD;-><init>(LPE;Ljava/lang/Long;)V

    .line 6
    iget-object v0, p0, LBC;->k:LEC;

    .line 7
    iget-object v0, v0, LEC;->F:LTB;

    .line 8
    invoke-static {v3, v0}, LFC;->b(LXD;LTB;)[B

    move-result-object v0

    .line 9
    iget-object v1, p0, LBC;->k:LEC;

    .line 10
    iget-object v1, v1, LEC;->B:LbE;

    .line 11
    iget-boolean v1, v1, LbE;->n:Z

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, LBC;->j:LLE;

    .line 13
    iget-object v1, v1, LLE;->a:Ljava/lang/Object;

    .line 14
    invoke-virtual {v3, v1}, LXD;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 15
    :cond_1
    iget-object v1, v3, LXD;->d:LPE;

    .line 16
    iget-object v4, p0, LBC;->j:LLE;

    .line 17
    iget-object v4, v4, LLE;->a:Ljava/lang/Object;

    .line 18
    check-cast v4, LXD;

    .line 19
    iget-object v4, v4, LXD;->d:LPE;

    .line 20
    invoke-static {v1, v4}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 21
    :cond_2
    iget-object v1, p0, LBC;->k:LEC;

    iget-object v1, v1, LEC;->z:LeC;

    new-instance v2, LAC;

    invoke-direct {v2, p0, v3}, LAC;-><init>(LBC;LXD;)V

    check-cast v1, LfD;

    const-string v3, "ClientToken"

    invoke-virtual {v1, v3, v0, v2}, LfD;->a(Ljava/lang/String;[BLlC;)V

    const/4 v0, 0x1

    return v0
.end method
