.class public final LGE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LYD;

.field public final e:LPE;

.field public final f:LPE;

.field public final g:Z

.field public final h:J

.field public final i:Z

.field public final j:LHE;

.field public final k:LJE;

.field public final l:LIE;

.field public final m:LIE;

.field public final n:LIE;

.field public final o:LIE;

.field public final p:LIE;

.field public final q:LXD;

.field public final r:LKE;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, LGE;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v15}, LGE;-><init>(LYD;LPE;LPE;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;LHE;LJE;LIE;LIE;LIE;LIE;LIE;LXD;LKE;)V

    return-void
.end method

.method public constructor <init>(LYD;LPE;LPE;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;LHE;LJE;LIE;LIE;LIE;LIE;LIE;LXD;LKE;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    const/4 v14, 0x1

    .line 2
    iput-object v1, v0, LGE;->d:LYD;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, LYD;->e:LYD;

    iput-object v1, v0, LGE;->d:LYD;

    const/4 v14, 0x0

    :goto_0
    if-eqz v2, :cond_1

    or-int/lit8 v14, v14, 0x2

    .line 4
    iput-object v2, v0, LGE;->e:LPE;

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, LPE;->y:LPE;

    iput-object v1, v0, LGE;->e:LPE;

    :goto_1
    if-eqz v3, :cond_2

    or-int/lit8 v14, v14, 0x4

    .line 6
    iput-object v3, v0, LGE;->f:LPE;

    goto :goto_2

    .line 7
    :cond_2
    sget-object v1, LPE;->y:LPE;

    iput-object v1, v0, LGE;->f:LPE;

    :goto_2
    if-eqz p4, :cond_3

    or-int/lit8 v14, v14, 0x8

    .line 8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, LGE;->g:Z

    goto :goto_3

    .line 9
    :cond_3
    iput-boolean v13, v0, LGE;->g:Z

    :goto_3
    if-eqz p5, :cond_4

    or-int/lit8 v14, v14, 0x10

    .line 10
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, LGE;->h:J

    goto :goto_4

    :cond_4
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, v0, LGE;->h:J

    :goto_4
    if-eqz p6, :cond_5

    or-int/lit8 v14, v14, 0x20

    .line 12
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, LGE;->i:Z

    goto :goto_5

    .line 13
    :cond_5
    iput-boolean v13, v0, LGE;->i:Z

    :goto_5
    if-eqz v4, :cond_6

    or-int/lit8 v14, v14, 0x40

    .line 14
    iput-object v4, v0, LGE;->j:LHE;

    goto :goto_6

    .line 15
    :cond_6
    sget-object v1, LHE;->h:LHE;

    iput-object v1, v0, LGE;->j:LHE;

    :goto_6
    if-eqz v5, :cond_7

    or-int/lit16 v14, v14, 0x80

    .line 16
    iput-object v5, v0, LGE;->k:LJE;

    goto :goto_7

    .line 17
    :cond_7
    sget-object v1, LJE;->f:LJE;

    iput-object v1, v0, LGE;->k:LJE;

    :goto_7
    if-eqz v6, :cond_8

    or-int/lit16 v14, v14, 0x100

    .line 18
    iput-object v6, v0, LGE;->l:LIE;

    goto :goto_8

    .line 19
    :cond_8
    sget-object v1, LIE;->h:LIE;

    iput-object v1, v0, LGE;->l:LIE;

    :goto_8
    if-eqz v7, :cond_9

    or-int/lit16 v14, v14, 0x200

    .line 20
    iput-object v7, v0, LGE;->m:LIE;

    goto :goto_9

    .line 21
    :cond_9
    sget-object v1, LIE;->h:LIE;

    iput-object v1, v0, LGE;->m:LIE;

    :goto_9
    if-eqz v8, :cond_a

    or-int/lit16 v14, v14, 0x400

    .line 22
    iput-object v8, v0, LGE;->n:LIE;

    goto :goto_a

    .line 23
    :cond_a
    sget-object v1, LIE;->h:LIE;

    iput-object v1, v0, LGE;->n:LIE;

    :goto_a
    if-eqz v9, :cond_b

    or-int/lit16 v14, v14, 0x800

    .line 24
    iput-object v9, v0, LGE;->o:LIE;

    goto :goto_b

    .line 25
    :cond_b
    sget-object v1, LIE;->h:LIE;

    iput-object v1, v0, LGE;->o:LIE;

    :goto_b
    if-eqz v10, :cond_c

    or-int/lit16 v14, v14, 0x1000

    .line 26
    iput-object v10, v0, LGE;->p:LIE;

    goto :goto_c

    .line 27
    :cond_c
    sget-object v1, LIE;->h:LIE;

    iput-object v1, v0, LGE;->p:LIE;

    :goto_c
    if-eqz v11, :cond_d

    or-int/lit16 v14, v14, 0x2000

    .line 28
    iput-object v11, v0, LGE;->q:LXD;

    goto :goto_d

    .line 29
    :cond_d
    sget-object v1, LXD;->f:LXD;

    iput-object v1, v0, LGE;->q:LXD;

    :goto_d
    if-eqz v12, :cond_e

    or-int/lit16 v14, v14, 0x4000

    .line 30
    iput-object v12, v0, LGE;->r:LKE;

    goto :goto_e

    .line 31
    :cond_e
    sget-object v1, LKE;->d:LKE;

    iput-object v1, v0, LGE;->r:LKE;

    :goto_e
    int-to-long v1, v14

    .line 32
    iput-wide v1, v0, LGE;->c:J

    return-void
.end method

.method public static a(LCH;)LGE;
    .locals 18

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    new-instance v17, LGE;

    iget-object v1, v0, LCH;->c:LMH;

    invoke-static {v1}, LYD;->a(LMH;)LYD;

    move-result-object v2

    iget-object v1, v0, LCH;->d:[B

    .line 83
    invoke-static {v1}, LPE;->a([B)LPE;

    move-result-object v3

    iget-object v1, v0, LCH;->e:[B

    .line 84
    invoke-static {v1}, LPE;->a([B)LPE;

    move-result-object v4

    iget-object v5, v0, LCH;->f:Ljava/lang/Boolean;

    iget-object v6, v0, LCH;->g:Ljava/lang/Long;

    iget-object v7, v0, LCH;->h:Ljava/lang/Boolean;

    iget-object v1, v0, LCH;->i:LDH;

    .line 85
    invoke-static {v1}, LHE;->a(LDH;)LHE;

    move-result-object v8

    iget-object v1, v0, LCH;->j:LFH;

    .line 86
    invoke-static {v1}, LJE;->a(LFH;)LJE;

    move-result-object v9

    iget-object v1, v0, LCH;->k:LEH;

    .line 87
    invoke-static {v1}, LIE;->a(LEH;)LIE;

    move-result-object v10

    iget-object v1, v0, LCH;->l:LEH;

    .line 88
    invoke-static {v1}, LIE;->a(LEH;)LIE;

    move-result-object v11

    iget-object v1, v0, LCH;->m:LEH;

    .line 89
    invoke-static {v1}, LIE;->a(LEH;)LIE;

    move-result-object v12

    iget-object v1, v0, LCH;->n:LEH;

    .line 90
    invoke-static {v1}, LIE;->a(LEH;)LIE;

    move-result-object v13

    iget-object v1, v0, LCH;->o:LEH;

    .line 91
    invoke-static {v1}, LIE;->a(LEH;)LIE;

    move-result-object v14

    iget-object v1, v0, LCH;->p:LLH;

    .line 92
    invoke-static {v1}, LXD;->a(LLH;)LXD;

    move-result-object v15

    iget-object v0, v0, LCH;->q:LGH;

    .line 93
    invoke-static {v0}, LKE;->a(LGH;)LKE;

    move-result-object v16

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, LGE;-><init>(LYD;LPE;LPE;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;LHE;LJE;LIE;LIE;LIE;LIE;LIE;LXD;LKE;)V

    return-object v17
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 51
    iget-wide v0, p0, LGE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 52
    invoke-virtual {p0}, LGE;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, LGE;->d:LYD;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_0
    invoke-virtual {p0}, LGE;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 55
    iget-object v1, p0, LGE;->e:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_1
    invoke-virtual {p0}, LGE;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, LGE;->f:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_2
    invoke-virtual {p0}, LGE;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-boolean v1, p0, LGE;->g:Z

    invoke-static {v1}, LZE;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_3
    invoke-virtual {p0}, LGE;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-wide v1, p0, LGE;->h:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_4
    invoke-virtual {p0}, LGE;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-boolean v1, p0, LGE;->i:Z

    invoke-static {v1}, LZE;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_5
    invoke-virtual {p0}, LGE;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-object v1, p0, LGE;->j:LHE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_6
    invoke-virtual {p0}, LGE;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, LGE;->k:LJE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_7
    invoke-virtual {p0}, LGE;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, LGE;->l:LIE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_8
    invoke-virtual {p0}, LGE;->m()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, LGE;->m:LIE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_9
    invoke-virtual {p0}, LGE;->k()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v1, p0, LGE;->n:LIE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_a
    invoke-virtual {p0}, LGE;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v1, p0, LGE;->o:LIE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_b
    invoke-virtual {p0}, LGE;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v1, p0, LGE;->p:LIE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_c
    invoke-virtual {p0}, LGE;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v1, p0, LGE;->q:LXD;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_d
    invoke-virtual {p0}, LGE;->q()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-object v1, p0, LGE;->r:LKE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    return v0
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<InvalidationClientState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LGE;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " run_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, LGE;->d:LYD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 5
    :cond_0
    invoke-virtual {p0}, LGE;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LGE;->e:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 8
    :cond_1
    invoke-virtual {p0}, LGE;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, LGE;->f:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 11
    :cond_2
    invoke-virtual {p0}, LGE;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " should_send_registrations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-boolean v0, p0, LGE;->g:Z

    .line 14
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    invoke-virtual {p0}, LGE;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " last_message_send_time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v0, p0, LGE;->h:J

    .line 18
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    :cond_4
    invoke-virtual {p0}, LGE;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " is_online="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v0, p0, LGE;->i:Z

    .line 22
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    :cond_5
    invoke-virtual {p0}, LGE;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " protocol_handler_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v0, p0, LGE;->j:LHE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 26
    :cond_6
    invoke-virtual {p0}, LGE;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration_manager_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v0, p0, LGE;->k:LJE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 29
    :cond_7
    invoke-virtual {p0}, LGE;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " acquire_token_task_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v0, p0, LGE;->l:LIE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 32
    :cond_8
    invoke-virtual {p0}, LGE;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " reg_sync_heartbeat_task_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v0, p0, LGE;->m:LIE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 35
    :cond_9
    invoke-virtual {p0}, LGE;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 36
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " persistent_write_task_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, LGE;->n:LIE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 38
    :cond_a
    invoke-virtual {p0}, LGE;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 39
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " heartbeat_task_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v0, p0, LGE;->o:LIE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 41
    :cond_b
    invoke-virtual {p0}, LGE;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " batching_task_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v0, p0, LGE;->p:LIE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 44
    :cond_c
    invoke-virtual {p0}, LGE;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " last_written_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v0, p0, LGE;->q:LXD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 47
    :cond_d
    invoke-virtual {p0}, LGE;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 48
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " statistics_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, LGE;->r:LKE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_e
    const/16 v0, 0x3e

    .line 50
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LGE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LGE;

    .line 3
    iget-wide v3, p0, LGE;->c:J

    iget-wide v5, p1, LGE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_10

    .line 4
    invoke-virtual {p0}, LGE;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LGE;->d:LYD;

    iget-object v3, p1, LGE;->d:LYD;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5
    :cond_2
    invoke-virtual {p0}, LGE;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LGE;->e:LPE;

    iget-object v3, p1, LGE;->e:LPE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6
    :cond_3
    invoke-virtual {p0}, LGE;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LGE;->f:LPE;

    iget-object v3, p1, LGE;->f:LPE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7
    :cond_4
    invoke-virtual {p0}, LGE;->p()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, LGE;->g:Z

    iget-boolean v3, p1, LGE;->g:Z

    if-ne v1, v3, :cond_10

    .line 8
    :cond_5
    invoke-virtual {p0}, LGE;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, LGE;->h:J

    iget-wide v5, p1, LGE;->h:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_10

    .line 9
    :cond_6
    invoke-virtual {p0}, LGE;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, LGE;->i:Z

    iget-boolean v3, p1, LGE;->i:Z

    if-ne v1, v3, :cond_10

    .line 10
    :cond_7
    invoke-virtual {p0}, LGE;->l()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, LGE;->j:LHE;

    iget-object v3, p1, LGE;->j:LHE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 11
    :cond_8
    invoke-virtual {p0}, LGE;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, LGE;->k:LJE;

    iget-object v3, p1, LGE;->k:LJE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 12
    :cond_9
    invoke-virtual {p0}, LGE;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, LGE;->l:LIE;

    iget-object v3, p1, LGE;->l:LIE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 13
    :cond_a
    invoke-virtual {p0}, LGE;->m()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, LGE;->m:LIE;

    iget-object v3, p1, LGE;->m:LIE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 14
    :cond_b
    invoke-virtual {p0}, LGE;->k()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, LGE;->n:LIE;

    iget-object v3, p1, LGE;->n:LIE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 15
    :cond_c
    invoke-virtual {p0}, LGE;->f()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, LGE;->o:LIE;

    iget-object v3, p1, LGE;->o:LIE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 16
    :cond_d
    invoke-virtual {p0}, LGE;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, LGE;->p:LIE;

    iget-object v3, p1, LGE;->p:LIE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 17
    :cond_e
    invoke-virtual {p0}, LGE;->i()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, LGE;->q:LXD;

    iget-object v3, p1, LGE;->q:LXD;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 18
    :cond_f
    invoke-virtual {p0}, LGE;->q()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, LGE;->r:LKE;

    iget-object p1, p1, LGE;->r:LKE;

    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v0, 0x0

    :cond_11
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGE;->c:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
