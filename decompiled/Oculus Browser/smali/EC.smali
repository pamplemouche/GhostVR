.class public abstract LEC;
.super LSE;
.source "PG"

# interfaces
.implements LJC;
.implements LXC;


# instance fields
.field public final A:LYB;

.field public B:LbE;

.field public final C:LaE;

.field public final D:LOC;

.field public final E:LLC;

.field public final F:LTB;

.field public final G:LPC;

.field public final H:LWC;

.field public final I:LaF;

.field public J:LPE;

.field public K:LPE;

.field public L:Z

.field public M:Z

.field public final N:Ljava/util/Random;

.field public O:J

.field public P:LwC;

.field public Q:LCC;

.field public R:LBC;

.field public S:LyC;

.field public T:LxC;

.field public U:LzC;

.field public final V:LrC;

.field public final w:LfC;

.field public final x:LdC;

.field public final y:LZB;

.field public z:LeC;


# direct methods
.method public constructor <init>(LfC;Ljava/util/Random;I[BLbE;Ljava/lang/String;LYD;LJE;LHE;LKE;LYB;)V
    .locals 13

    move-object v7, p0

    move-object v1, p1

    move-object v0, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    .line 1
    invoke-direct {p0}, LSE;-><init>()V

    .line 2
    new-instance v5, LUB;

    invoke-direct {v5}, LUB;-><init>()V

    iput-object v5, v7, LEC;->F:LTB;

    const/4 v5, 0x0

    .line 3
    iput-object v5, v7, LEC;->J:LPE;

    .line 4
    iput-object v5, v7, LEC;->K:LPE;

    const/4 v6, 0x1

    .line 5
    iput-boolean v6, v7, LEC;->M:Z

    const-wide/16 v8, 0x0

    .line 6
    iput-wide v8, v7, LEC;->O:J

    .line 7
    new-instance v8, LrC;

    invoke-direct {v8}, LrC;-><init>()V

    iput-object v8, v7, LEC;->V:LrC;

    if-eqz v1, :cond_9

    .line 8
    iput-object v1, v7, LEC;->w:LfC;

    .line 9
    iput-object v0, v7, LEC;->N:Ljava/util/Random;

    .line 10
    move-object v5, v1

    check-cast v5, LsC;

    .line 11
    iget-object v8, v5, LsC;->b:LZB;

    .line 12
    invoke-static {v8}, LWE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v8, v7, LEC;->y:LZB;

    .line 13
    iget-object v8, v5, LsC;->a:LdC;

    .line 14
    iput-object v8, v7, LEC;->x:LdC;

    .line 15
    iget-object v8, v5, LsC;->d:LeC;

    .line 16
    iput-object v8, v7, LEC;->z:LeC;

    .line 17
    iput-object v2, v7, LEC;->B:LbE;

    if-nez v3, :cond_0

    .line 18
    new-instance v3, LPC;

    invoke-direct {v3}, LPC;-><init>()V

    move-object v8, v3

    goto :goto_0

    :cond_0
    new-instance v8, LPC;

    invoke-direct {v8, v3}, LPC;-><init>(LYD;)V

    :goto_0
    iput-object v8, v7, LEC;->G:LPC;

    .line 19
    new-instance v3, LaF;

    iget-object v8, v7, LEC;->B:LbE;

    .line 20
    iget v8, v8, LbE;->j:I

    .line 21
    invoke-direct {v3, p2, v8}, LaF;-><init>(Ljava/util/Random;I)V

    iput-object v3, v7, LEC;->I:LaF;

    .line 22
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, LPE;

    move-object/from16 v8, p4

    invoke-direct {v3, v8}, LPE;-><init>([B)V

    .line 23
    new-instance v8, LaE;

    invoke-direct {v8, v0, v3}, LaE;-><init>(Ljava/lang/Integer;LPE;)V

    .line 24
    iput-object v8, v7, LEC;->C:LaE;

    move-object/from16 v0, p11

    .line 25
    iput-object v0, v7, LEC;->A:LYB;

    if-eqz v4, :cond_7

    .line 26
    iget-object v0, v5, LsC;->b:LZB;

    .line 27
    iget-object v3, v4, LKE;->c:Ljava/util/List;

    .line 28
    new-instance v4, LWC;

    invoke-direct {v4}, LWC;-><init>()V

    .line 29
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LnE;

    .line 30
    iget-object v8, v5, LnE;->d:Ljava/lang/String;

    const-string v9, "\\."

    .line 31
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 32
    array-length v10, v9

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eq v10, v11, :cond_1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v8, v5, v12

    .line 33
    move-object v8, v0

    check-cast v8, LgC;

    const-string v9, "Perf counter name must of form: class.value, skipping: %s"

    invoke-virtual {v8, v9, v5}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 34
    :cond_1
    aget-object v8, v9, v12

    .line 35
    aget-object v9, v9, v6

    .line 36
    iget v5, v5, LnE;->e:I

    const-string v10, "SentMessageType"

    .line 37
    invoke-static {v8, v10}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 38
    sget-object v8, LWC;->f:Ljava/util/Map;

    iget-object v10, v4, LWC;->a:Ljava/util/Map;

    invoke-static {v0, v8, v10, v9, v5}, LWC;->a(LZB;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string v10, "IncomingOperationType"

    .line 39
    invoke-static {v8, v10}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 40
    sget-object v8, LWC;->g:Ljava/util/Map;

    iget-object v10, v4, LWC;->c:Ljava/util/Map;

    invoke-static {v0, v8, v10, v9, v5}, LWC;->a(LZB;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const-string v10, "ReceivedMessageType"

    .line 41
    invoke-static {v8, v10}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 42
    sget-object v8, LWC;->h:Ljava/util/Map;

    iget-object v10, v4, LWC;->b:Ljava/util/Map;

    invoke-static {v0, v8, v10, v9, v5}, LWC;->a(LZB;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string v10, "ListenerEventType"

    .line 43
    invoke-static {v8, v10}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 44
    sget-object v8, LWC;->i:Ljava/util/Map;

    iget-object v10, v4, LWC;->d:Ljava/util/Map;

    invoke-static {v0, v8, v10, v9, v5}, LWC;->a(LZB;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const-string v10, "ClientErrorType"

    .line 45
    invoke-static {v8, v10}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 46
    sget-object v8, LWC;->j:Ljava/util/Map;

    iget-object v10, v4, LWC;->e:Ljava/util/Map;

    invoke-static {v0, v8, v10, v9, v5}, LWC;->a(LZB;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v8, v5, v12

    .line 47
    move-object v8, v0

    check-cast v8, LgC;

    const-string v9, "Skipping unknown enum class name %s"

    invoke-virtual {v8, v9, v5}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 48
    :cond_7
    new-instance v4, LWC;

    invoke-direct {v4}, LWC;-><init>()V

    :cond_8
    iput-object v4, v7, LEC;->H:LWC;

    .line 49
    new-instance v0, LOC;

    iget-object v3, v7, LEC;->y:LZB;

    iget-object v5, v7, LEC;->F:LTB;

    move-object/from16 v6, p8

    invoke-direct {v0, v3, v4, v5, v6}, LOC;-><init>(LZB;LWC;LTB;LJE;)V

    iput-object v0, v7, LEC;->D:LOC;

    .line 50
    new-instance v8, LLC;

    .line 51
    iget-object v0, v2, LbE;->m:LoE;

    .line 52
    iget-object v2, v7, LEC;->H:LWC;

    move-object v0, v8

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object v5, p0

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, LLC;-><init>(LfC;LWC;ILjava/lang/String;LJC;LHE;)V

    iput-object v8, v7, LEC;->E:LLC;

    return-void

    .line 53
    :cond_9
    throw v5
.end method

.method public static synthetic a(LEC;ILVD;)LZC;
    .locals 2

    if-eqz p2, :cond_0

    .line 186
    new-instance v0, LZC;

    iget-object v1, p0, LEC;->N:Ljava/util/Random;

    iget-object p0, p0, LEC;->B:LbE;

    .line 187
    iget p0, p0, LbE;->i:I

    .line 188
    invoke-direct {v0, v1, p1, p0, p2}, LZC;-><init>(Ljava/util/Random;IILVD;)V

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, LZC;

    iget-object p2, p0, LEC;->N:Ljava/util/Random;

    iget-object p0, p0, LEC;->B:LbE;

    .line 190
    iget p0, p0, LbE;->i:I

    .line 191
    invoke-direct {v0, p2, p1, p0}, LZC;-><init>(Ljava/util/Random;II)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()LPE;
    .locals 1

    .line 134
    iget-object v0, p0, LEC;->J:LPE;

    if-eqz v0, :cond_1

    iget-object v0, p0, LEC;->K:LPE;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, LWE;->b(Z)V

    .line 135
    iget-object v0, p0, LEC;->J:LPE;

    return-object v0
.end method

.method public final a(LGE;)V
    .locals 5

    if-nez p1, :cond_0

    .line 15
    new-instance p1, LwC;

    invoke-direct {p1, p0}, LwC;-><init>(LEC;)V

    iput-object p1, p0, LEC;->P:LwC;

    .line 16
    new-instance p1, LyC;

    invoke-direct {p1, p0}, LyC;-><init>(LEC;)V

    iput-object p1, p0, LEC;->S:LyC;

    .line 17
    new-instance p1, LCC;

    invoke-direct {p1, p0}, LCC;-><init>(LEC;)V

    iput-object p1, p0, LEC;->Q:LCC;

    .line 18
    new-instance p1, LBC;

    invoke-direct {p1, p0}, LBC;-><init>(LEC;)V

    iput-object p1, p0, LEC;->R:LBC;

    .line 19
    new-instance p1, LxC;

    iget-object v0, p0, LEC;->E:LLC;

    iget-object v1, p0, LEC;->w:LfC;

    iget-object v2, p0, LEC;->I:LaF;

    iget-object v3, p0, LEC;->B:LbE;

    .line 20
    iget-object v3, v3, LbE;->m:LoE;

    .line 21
    iget v3, v3, LoE;->d:I

    .line 22
    invoke-direct {p1, v0, v1, v2, v3}, LxC;-><init>(LLC;LfC;LaF;I)V

    iput-object p1, p0, LEC;->T:LxC;

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, LwC;

    .line 24
    iget-object v1, p1, LGE;->l:LIE;

    .line 25
    invoke-direct {v0, p0, v1}, LwC;-><init>(LEC;LIE;)V

    iput-object v0, p0, LEC;->P:LwC;

    .line 26
    new-instance v0, LyC;

    .line 27
    iget-object v1, p1, LGE;->o:LIE;

    .line 28
    invoke-direct {v0, p0, v1}, LyC;-><init>(LEC;LIE;)V

    iput-object v0, p0, LEC;->S:LyC;

    .line 29
    new-instance v0, LCC;

    .line 30
    iget-object v1, p1, LGE;->m:LIE;

    .line 31
    invoke-direct {v0, p0, v1}, LCC;-><init>(LEC;LIE;)V

    iput-object v0, p0, LEC;->Q:LCC;

    .line 32
    new-instance v0, LBC;

    .line 33
    iget-object v1, p1, LGE;->n:LIE;

    .line 34
    invoke-direct {v0, p0, v1}, LBC;-><init>(LEC;LIE;)V

    iput-object v0, p0, LEC;->R:LBC;

    .line 35
    new-instance v0, LxC;

    iget-object v1, p0, LEC;->E:LLC;

    iget-object v2, p0, LEC;->w:LfC;

    iget-object v3, p0, LEC;->I:LaF;

    .line 36
    iget-object v4, p1, LGE;->p:LIE;

    .line 37
    invoke-direct {v0, v1, v2, v3, v4}, LxC;-><init>(LLC;LfC;LaF;LIE;)V

    iput-object v0, p0, LEC;->T:LxC;

    .line 38
    invoke-virtual {p1}, LGE;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, LEC;->R:LBC;

    .line 40
    iget-object v0, v0, LBC;->j:LLE;

    .line 41
    iget-object p1, p1, LGE;->q:LXD;

    .line 42
    iput-object p1, v0, LLE;->a:Ljava/lang/Object;

    .line 43
    :cond_1
    :goto_0
    new-instance p1, LzC;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LzC;-><init>(LEC;I)V

    iput-object p1, p0, LEC;->U:LzC;

    return-void
.end method

.method public final a(LPE;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1

    .line 161
    iget-object v2, v0, LEC;->K:LPE;

    if-nez v2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to set token with existing nonce "

    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, LEC;->K:LPE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1
    :goto_0
    iget-object v2, v0, LEC;->G:LPC;

    invoke-virtual {v2}, LPC;->a()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, LEC;->J:LPE;

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 164
    :goto_1
    iput-object v1, v0, LEC;->J:LPE;

    if-eqz v2, :cond_3

    .line 165
    iget-object v1, v0, LEC;->G:LPC;

    invoke-virtual {v1}, LPC;->a()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v1}, LWE;->b(Z)V

    .line 166
    iget-object v1, v0, LEC;->G:LPC;

    invoke-virtual {v1}, LPC;->c()V

    .line 167
    iget-object v1, v0, LEC;->A:LYB;

    check-cast v1, LdD;

    .line 168
    iget-object v1, v1, LdD;->a:Landroid/content/Context;

    .line 169
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 170
    sget-object v7, LjD;->a:LDE;

    sget-object v8, LND;->c:LND;

    .line 171
    new-instance v14, LRD;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    move-object v5, v14

    move-object/from16 v9, v16

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    invoke-direct/range {v5 .. v13}, LRD;-><init>(Ljava/lang/Long;LDE;LND;LMD;LPD;LOD;LQD;LLD;)V

    .line 172
    invoke-virtual {v14}, LRD;->e()[B

    move-result-object v5

    const-string v6, "ipcinv-upcall"

    .line 173
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 174
    invoke-static {v1, v2}, LdD;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 175
    iget-object v1, v0, LEC;->A:LYB;

    sget-object v2, LOC;->f:[B

    check-cast v1, LdD;

    .line 176
    iget-object v1, v1, LdD;->a:Landroid/content/Context;

    .line 177
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 178
    new-instance v7, LPE;

    invoke-direct {v7, v2}, LPE;-><init>([B)V

    .line 179
    new-instance v2, LQD;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8}, LQD;-><init>(LPE;Ljava/lang/Integer;)V

    .line 180
    sget-object v17, LjD;->a:LDE;

    .line 181
    new-instance v7, LRD;

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v15, v7

    move-object/from16 v22, v2

    invoke-direct/range {v15 .. v23}, LRD;-><init>(Ljava/lang/Long;LDE;LND;LMD;LPD;LOD;LQD;LLD;)V

    .line 182
    invoke-virtual {v7}, LRD;->e()[B

    move-result-object v2

    .line 183
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 184
    invoke-static {v1, v5}, LdD;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 185
    iget-object v1, v0, LEC;->y:LZB;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    check-cast v1, LgC;

    const-string v3, "Ticl started: %s"

    invoke-virtual {v1, v3, v2}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "Client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, LEC;->C:LaE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, LEC;->J:LPE;

    .line 5
    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 6
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LEC;->G:LPC;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Object;)LbF;

    return-void
.end method

.method public final a(LfC;)V
    .locals 3

    .line 8
    check-cast p1, LsC;

    .line 9
    iget-object p1, p1, LsC;->c:LbC;

    .line 10
    new-instance v0, LuC;

    invoke-direct {v0, p0}, LuC;-><init>(LEC;)V

    check-cast p1, LtD;

    .line 11
    iget-object p1, p1, LtD;->b:LlD;

    .line 12
    iget-object v1, p1, LlD;->g:LaC;

    if-nez v1, :cond_0

    .line 13
    iput-object v0, p1, LlD;->g:LaC;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener already set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(LjC;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 90
    iget-object v1, p0, LEC;->x:LdC;

    invoke-interface {v1}, LdC;->b()Z

    move-result v1

    const-string v2, "Not running on internal thread"

    invoke-static {v1, v2}, LWE;->a(ZLjava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 91
    :try_start_0
    iget-object v3, p1, LjC;->a:[B

    .line 92
    invoke-static {v3}, LUD;->a([B)LUD;

    move-result-object v3
    :try_end_0
    .catch LYE; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object v3, v3, LUD;->c:LlE;

    if-nez v3, :cond_0

    .line 94
    iget-object v0, p0, LEC;->y:LZB;

    new-array v2, v2, [Ljava/lang/Object;

    .line 95
    iget-object p1, p1, LjC;->a:[B

    .line 96
    invoke-static {p1}, LPE;->b([B)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    .line 97
    check-cast v0, LgC;

    const-string p1, "Ack handle without invalidation : %s"

    invoke-virtual {v0, p1, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, LEC;->H:LWC;

    sget-object v0, LRC;->w:LRC;

    .line 99
    iget-object p1, p1, LWC;->e:Ljava/util/Map;

    invoke-static {p1, v0}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void

    .line 100
    :cond_0
    invoke-virtual {v3}, LlE;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 101
    iget-object v5, v3, LlE;->d:LmE;

    iget-boolean p1, v3, LlE;->e:Z

    iget-wide v6, v3, LlE;->f:J

    .line 102
    invoke-virtual {v3}, LlE;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, v3, LlE;->g:LPE;

    .line 104
    :cond_1
    invoke-virtual {v3}, LlE;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    iget-boolean v3, v3, LlE;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v9, v3

    goto :goto_0

    :cond_2
    move-object v9, v0

    :goto_0
    const/4 v8, 0x0

    .line 106
    new-instance v3, LlE;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v4, v3

    move-object v6, p1

    .line 107
    invoke-direct/range {v4 .. v9}, LlE;-><init>(LmE;Ljava/lang/Boolean;Ljava/lang/Long;LPE;Ljava/lang/Boolean;)V

    .line 108
    :cond_3
    iget-object p1, p0, LEC;->H:LWC;

    sget-object v4, LSC;->w:LSC;

    .line 109
    iget-object p1, p1, LWC;->c:Ljava/util/Map;

    invoke-static {p1, v4}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, LEC;->E:LLC;

    iget-object v4, p0, LEC;->T:LxC;

    .line 111
    iget-object v5, p1, LLC;->c:LdC;

    invoke-interface {v5}, LdC;->b()Z

    move-result v5

    const-string v6, "Not on internal thread"

    invoke-static {v5, v6}, LWE;->a(ZLjava/lang/Object;)V

    .line 112
    iget-object v5, p1, LLC;->b:LZB;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    check-cast v5, LgC;

    const-string v6, "Sending ack for invalidation %s"

    invoke-virtual {v5, v6, v2}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object p1, p1, LLC;->f:LHC;

    .line 114
    iget-object p1, p1, LHC;->d:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p1, "Send-Ack"

    .line 115
    invoke-virtual {v4, v1, p1}, LNC;->a(ZLjava/lang/String;)V

    .line 116
    iget-object p1, p0, LEC;->V:LrC;

    if-eqz p1, :cond_7

    .line 117
    iget-boolean v0, v3, LlE;->h:Z

    if-eqz v0, :cond_6

    .line 118
    iget-boolean v0, v3, LlE;->e:Z

    if-nez v0, :cond_4

    goto :goto_2

    .line 119
    :cond_4
    iget-object v0, v3, LlE;->d:LmE;

    .line 120
    iget-wide v1, v3, LlE;->f:J

    .line 121
    iget-object v3, p1, LrC;->a:Ljava/util/Map;

    .line 122
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 123
    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 124
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :cond_5
    const-wide/16 v3, -0x1

    :goto_1
    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    .line 125
    iget-object p1, p1, LrC;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-void

    .line 126
    :cond_7
    throw v0

    .line 127
    :catch_0
    iget-object v0, p0, LEC;->y:LZB;

    new-array v2, v2, [Ljava/lang/Object;

    .line 128
    iget-object p1, p1, LjC;->a:[B

    .line 129
    invoke-static {p1}, LPE;->b([B)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    .line 130
    check-cast v0, LgC;

    const-string p1, "Bad ack handle : %s"

    invoke-virtual {v0, p1, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, LEC;->H:LWC;

    sget-object v0, LRC;->w:LRC;

    .line 132
    iget-object p1, p1, LWC;->e:Ljava/util/Map;

    invoke-static {p1, v0}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_8
    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 136
    iget-object v0, p0, LEC;->x:LdC;

    invoke-interface {v0}, LdC;->b()Z

    move-result v0

    const-string v1, "Not on internal thread"

    invoke-static {v0, v1}, LWE;->a(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, LEC;->a(LPE;)V

    .line 138
    iget-object v0, p0, LEC;->P:LwC;

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1, p1}, LNC;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;I)V
    .locals 8

    .line 44
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Must specify some object id"

    invoke-static {v0, v2}, LWE;->a(ZLjava/lang/Object;)V

    .line 45
    iget-object v0, p0, LEC;->x:LdC;

    invoke-interface {v0}, LdC;->b()Z

    move-result v0

    const-string v2, "Not running on internal thread"

    invoke-static {v0, v2}, LWE;->a(ZLjava/lang/Object;)V

    .line 46
    iget-object v0, p0, LEC;->G:LPC;

    invoke-virtual {v0}, LPC;->b()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, LEC;->y:LZB;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    aput-object p1, v2, v1

    check-cast v0, LgC;

    const-string p1, "Ticl stopped: register (%s) of %s ignored."

    invoke-virtual {v0, p1, v2}, LgC;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, LEC;->G:LPC;

    invoke-virtual {v0}, LPC;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, LEC;->y:LZB;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v1

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    .line 51
    check-cast v0, LgC;

    const-string p2, "Ticl is not yet started; failing registration call; client = %s, objects = %s, op = %s"

    invoke-virtual {v0, p2, v4}, LgC;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LnC;

    .line 53
    iget-object v0, p0, LEC;->A:LYB;

    check-cast v0, LdD;

    const-string v2, "Client not yet ready"

    invoke-virtual {v0, p0, p2, v1, v2}, LdD;->a(LWB;LnC;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    .line 54
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LnC;

    const-string v5, "Must specify object id"

    .line 56
    invoke-static {v4, v5}, LWE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v4}, LGC;->a(LnC;)LmE;

    move-result-object v4

    if-ne p2, v1, :cond_3

    .line 58
    sget-object v5, LSC;->x:LSC;

    goto :goto_2

    :cond_3
    sget-object v5, LSC;->y:LSC;

    .line 59
    :goto_2
    iget-object v6, p0, LEC;->H:LWC;

    .line 60
    iget-object v6, v6, LWC;->c:Ljava/util/Map;

    invoke-static {v6, v5}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 61
    iget-object v5, p0, LEC;->y:LZB;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    check-cast v5, LgC;

    const-string v7, "Register %s, %s"

    invoke-virtual {v5, v7, v6}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_4
    iget-object p1, p0, LEC;->D:LOC;

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LmE;

    .line 65
    iget-object v6, p1, LOC;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    if-ne p2, v1, :cond_6

    .line 66
    iget-object p1, p1, LOC;->a:LtC;

    check-cast p1, LQC;

    invoke-virtual {p1, v0}, LQC;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_5

    .line 67
    :cond_6
    iget-object p1, p1, LOC;->a:LtC;

    check-cast p1, LQC;

    if-eqz p1, :cond_c

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LmE;

    .line 70
    iget-object v4, p1, LQC;->w:Ljava/util/SortedMap;

    .line 71
    iget v5, v2, LmE;->c:I

    .line 72
    iget-object v6, v2, LmE;->d:LPE;

    .line 73
    iget-object v6, v6, LPE;->w:[B

    .line 74
    iget-object v7, p1, LQC;->x:LTB;

    .line 75
    invoke-static {v5, v6, v7}, LVB;->a(I[BLTB;)LPE;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 77
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 78
    invoke-virtual {p1}, LQC;->a()V

    :cond_9
    move-object p1, v1

    .line 79
    :goto_5
    iget-boolean v0, p0, LEC;->L:Z

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 80
    iget-object v0, p0, LEC;->E:LLC;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, LEC;->T:LxC;

    .line 81
    iget-object v2, v0, LLC;->c:LdC;

    invoke-interface {v2}, LdC;->b()Z

    move-result v2

    const-string v4, "Not on internal thread"

    invoke-static {v2, v4}, LWE;->a(ZLjava/lang/Object;)V

    .line 82
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LmE;

    .line 83
    iget-object v4, v0, LLC;->f:LHC;

    .line 84
    iget-object v4, v4, LHC;->c:Ljava/util/Map;

    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    const-string p1, "Send-registrations"

    .line 85
    invoke-virtual {v1, v3, p1}, LNC;->a(ZLjava/lang/String;)V

    .line 86
    :cond_b
    iget-object p1, p0, LEC;->Q:LCC;

    const-string p2, "performRegister"

    .line 87
    invoke-virtual {p1, v3, p2}, LNC;->a(ZLjava/lang/String;)V

    return-void

    .line 88
    :cond_c
    throw v2

    .line 89
    :cond_d
    throw v2
.end method

.method public final a(ZZ)V
    .locals 10

    .line 140
    iget-object v0, p0, LEC;->y:LZB;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 142
    check-cast v0, LgC;

    const-string v2, "Sending info message to server; request server summary = %s"

    invoke-virtual {v0, v2, v1}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, LEC;->x:LdC;

    invoke-interface {v0}, LdC;->b()Z

    move-result v0

    const-string v1, "Not on internal thread"

    invoke-static {v0, v1}, LWE;->a(ZLjava/lang/Object;)V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, LEC;->H:LWC;

    invoke-virtual {p1, v0}, LWC;->a(Ljava/util/List;)V

    .line 146
    iget-object p1, p0, LEC;->B:LbE;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v9, p1

    .line 147
    iget-object p1, p0, LEC;->E:LLC;

    iget-object v2, p0, LEC;->T:LxC;

    .line 148
    iget-object v4, p1, LLC;->c:LdC;

    invoke-interface {v4}, LdC;->b()Z

    move-result v4

    invoke-static {v4, v1}, LWE;->a(ZLjava/lang/Object;)V

    .line 149
    new-instance v7, Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LoC;

    .line 152
    iget-object v4, v1, LoC;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v1, v1, LoC;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 153
    new-instance v5, LnE;

    invoke-direct {v5, v4, v1}, LnE;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_1
    iget-object v5, p1, LLC;->a:LeE;

    const/4 v6, 0x0

    .line 156
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 157
    new-instance p2, LhE;

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, LhE;-><init>(LeE;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;LbE;)V

    .line 158
    iget-object p1, p1, LLC;->f:LHC;

    .line 159
    iput-object p2, p1, LHC;->g:LhE;

    const-string p1, "Send-info"

    .line 160
    invoke-virtual {v2, v3, p1}, LNC;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, LEC;->w:LfC;

    check-cast v0, LsC;

    .line 2
    iget-object v0, v0, LsC;->e:LPC;

    invoke-virtual {v0}, LPC;->a()Z

    move-result v0

    const-string v1, "Resources must be started before starting the Ticl"

    .line 3
    invoke-static {v0, v1}, LWE;->a(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, LEC;->G:LPC;

    invoke-virtual {v0}, LPC;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, LEC;->y:LZB;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    check-cast v0, LgC;

    const-string v1, "Ignoring start call since already started: client = %s"

    invoke-virtual {v0, v1, v2}, LgC;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LEC;->N:Ljava/util/Random;

    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 8
    new-instance v0, LPE;

    invoke-direct {v0, v3}, LPE;-><init>([B)V

    .line 9
    invoke-virtual {p0, v0}, LEC;->b(LPE;)V

    .line 10
    iget-object v0, p0, LEC;->y:LZB;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, LEC;->B:LbE;

    aput-object v3, v2, v1

    check-cast v0, LgC;

    const-string v1, "Starting with Java config: %s"

    invoke-virtual {v0, v1, v2}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, LEC;->z:LeC;

    new-instance v1, LvC;

    invoke-direct {v1, p0}, LvC;-><init>(LEC;)V

    check-cast v0, LfD;

    const-string v2, "ClientToken"

    invoke-virtual {v0, v2, v1}, LfD;->a(Ljava/lang/String;LlC;)V

    return-void
.end method

.method public final b(LPE;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 12
    iget-object v0, p0, LEC;->J:LPE;

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to set nonce with existing token "

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LEC;->J:LPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    :goto_0
    iput-object p1, p0, LEC;->K:LPE;

    return-void
.end method
