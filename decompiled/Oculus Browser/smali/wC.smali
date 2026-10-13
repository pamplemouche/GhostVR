.class public LwC;
.super LDC;
.source "PG"


# instance fields
.field public final synthetic j:LEC;


# direct methods
.method public constructor <init>(LEC;)V
    .locals 7

    .line 1
    iput-object p1, p0, LwC;->j:LEC;

    .line 2
    iget-object v0, p1, LEC;->B:LbE;

    .line 3
    iget v5, v0, LbE;->e:I

    const/4 v6, 0x1

    const-string v3, "AcquireToken"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 4
    invoke-direct/range {v1 .. v6}, LDC;-><init>(LEC;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(LEC;LIE;)V
    .locals 7

    .line 5
    iput-object p1, p0, LwC;->j:LEC;

    .line 6
    iget-object v0, p1, LEC;->B:LbE;

    .line 7
    iget v4, v0, LbE;->e:I

    const/4 v6, 0x0

    const-string v3, "AcquireToken"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 8
    invoke-direct/range {v1 .. v6}, LDC;-><init>(LEC;Ljava/lang/String;ILIE;LuC;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 11

    .line 1
    iget-object v0, p0, LwC;->j:LEC;

    .line 2
    iget-object v1, v0, LEC;->J:LPE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, LEC;->N:Ljava/util/Random;

    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 5
    new-instance v1, LPE;

    invoke-direct {v1, v3}, LPE;-><init>([B)V

    .line 6
    invoke-virtual {v0, v1}, LEC;->b(LPE;)V

    .line 7
    iget-object v0, p0, LwC;->j:LEC;

    .line 8
    iget-object v1, v0, LEC;->E:LLC;

    .line 9
    iget-object v3, v0, LEC;->C:LaE;

    .line 10
    iget-object v4, v0, LEC;->K:LPE;

    .line 11
    iget-object v0, v0, LEC;->T:LxC;

    const-string v5, "AcquireToken"

    .line 12
    iget-object v6, v1, LLC;->c:LdC;

    invoke-interface {v6}, LdC;->b()Z

    move-result v6

    const-string v7, "Not on internal thread"

    invoke-static {v6, v7}, LWE;->a(ZLjava/lang/Object;)V

    .line 13
    iget v6, v3, LaE;->d:I

    .line 14
    iget v7, v1, LLC;->k:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v7, :cond_0

    .line 15
    iget-object v6, v1, LLC;->b:LZB;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v3, v10, v2

    .line 16
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v9

    .line 17
    check-cast v6, LgC;

    const-string v7, "Client type in application id does not match constructor-provided type: %s vs %s"

    invoke-virtual {v6, v7, v10}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_0
    iget v6, v1, LLC;->k:I

    .line 19
    new-instance v7, LjE;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v7, v6, v4, v3, v10}, LjE;-><init>(Ljava/lang/Integer;LPE;LaE;Ljava/lang/Integer;)V

    .line 20
    iget-object v3, v1, LLC;->f:LHC;

    .line 21
    iput-object v7, v3, LHC;->f:LjE;

    .line 22
    iget-object v1, v1, LLC;->b:LZB;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v5, v3, v2

    aput-object v7, v3, v9

    check-cast v1, LgC;

    const-string v4, "Batching initialize message for client: %s, %s"

    invoke-virtual {v1, v4, v3}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v0, v2, v5}, LNC;->a(ZLjava/lang/String;)V

    return v9

    :cond_1
    return v2
.end method
