.class public final LbE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LDE;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:I

.field public final m:LoE;

.field public final n:Z

.field public final o:I

.field public final p:Z


# direct methods
.method public constructor <init>(LDE;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;LoE;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "version"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LbE;->d:LDE;

    const/4 p1, 0x1

    const v0, 0xea60

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, LbE;->e:I

    const/4 p2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, LbE;->e:I

    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_1

    or-int/lit8 p2, p2, 0x2

    .line 6
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, LbE;->f:I

    goto :goto_1

    :cond_1
    const/16 p3, 0x2710

    .line 7
    iput p3, p0, LbE;->f:I

    :goto_1
    if-eqz p4, :cond_2

    or-int/lit8 p2, p2, 0x4

    .line 8
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, LbE;->g:I

    goto :goto_2

    :cond_2
    const p3, 0x124f80

    .line 9
    iput p3, p0, LbE;->g:I

    :goto_2
    if-eqz p5, :cond_3

    or-int/lit8 p2, p2, 0x8

    .line 10
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, LbE;->h:I

    goto :goto_3

    :cond_3
    const p3, 0x1499700

    .line 11
    iput p3, p0, LbE;->h:I

    :goto_3
    if-eqz p6, :cond_4

    or-int/lit8 p2, p2, 0x10

    .line 12
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, LbE;->i:I

    goto :goto_4

    :cond_4
    const/16 p3, 0x1f4

    .line 13
    iput p3, p0, LbE;->i:I

    :goto_4
    if-eqz p7, :cond_5

    or-int/lit8 p2, p2, 0x20

    .line 14
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, LbE;->j:I

    goto :goto_5

    :cond_5
    const/16 p3, 0x14

    .line 15
    iput p3, p0, LbE;->j:I

    :goto_5
    if-eqz p8, :cond_6

    or-int/lit8 p2, p2, 0x40

    .line 16
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, LbE;->k:Z

    goto :goto_6

    .line 17
    :cond_6
    iput-boolean v1, p0, LbE;->k:Z

    :goto_6
    if-eqz p9, :cond_7

    or-int/lit16 p2, p2, 0x80

    .line 18
    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, LbE;->l:I

    goto :goto_7

    :cond_7
    const/16 p3, 0x7d0

    .line 19
    iput p3, p0, LbE;->l:I

    :goto_7
    const-string p3, "protocol_handler_config"

    .line 20
    invoke-static {p3, p10}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iput-object p10, p0, LbE;->m:LoE;

    if-eqz p11, :cond_8

    or-int/lit16 p2, p2, 0x100

    .line 22
    invoke-virtual {p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, LbE;->n:Z

    goto :goto_8

    .line 23
    :cond_8
    iput-boolean v1, p0, LbE;->n:Z

    :goto_8
    if-eqz p12, :cond_9

    or-int/lit16 p2, p2, 0x200

    .line 24
    invoke-virtual {p12}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, LbE;->o:I

    goto :goto_9

    .line 25
    :cond_9
    iput v0, p0, LbE;->o:I

    :goto_9
    if-eqz p13, :cond_a

    or-int/lit16 p2, p2, 0x400

    .line 26
    invoke-virtual {p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, LbE;->p:Z

    goto :goto_a

    .line 27
    :cond_a
    iput-boolean p1, p0, LbE;->p:Z

    :goto_a
    int-to-long p1, p2

    .line 28
    iput-wide p1, p0, LbE;->c:J

    return-void
.end method

.method public static a(LOH;)LbE;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    new-instance v14, LbE;

    iget-object v0, p0, LOH;->c:LqI;

    invoke-static {v0}, LDE;->a(LqI;)LDE;

    move-result-object v1

    iget-object v2, p0, LOH;->d:Ljava/lang/Integer;

    iget-object v3, p0, LOH;->e:Ljava/lang/Integer;

    iget-object v4, p0, LOH;->f:Ljava/lang/Integer;

    iget-object v5, p0, LOH;->g:Ljava/lang/Integer;

    iget-object v6, p0, LOH;->h:Ljava/lang/Integer;

    iget-object v7, p0, LOH;->i:Ljava/lang/Integer;

    iget-object v8, p0, LOH;->j:Ljava/lang/Boolean;

    iget-object v9, p0, LOH;->k:Ljava/lang/Integer;

    iget-object v0, p0, LOH;->l:LbI;

    .line 77
    invoke-static {v0}, LoE;->a(LbI;)LoE;

    move-result-object v10

    iget-object v11, p0, LOH;->m:Ljava/lang/Boolean;

    iget-object v12, p0, LOH;->n:Ljava/lang/Integer;

    iget-object v13, p0, LOH;->o:Ljava/lang/Boolean;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, LbE;-><init>(LDE;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;LoE;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-object v14
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 51
    iget-wide v0, p0, LbE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, LbE;->d:LDE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 53
    invoke-virtual {p0}, LbE;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 54
    iget v0, p0, LbE;->e:I

    add-int/2addr v1, v0

    .line 55
    :cond_0
    invoke-virtual {p0}, LbE;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 56
    iget v0, p0, LbE;->f:I

    add-int/2addr v1, v0

    .line 57
    :cond_1
    invoke-virtual {p0}, LbE;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 58
    iget v0, p0, LbE;->g:I

    add-int/2addr v1, v0

    .line 59
    :cond_2
    invoke-virtual {p0}, LbE;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 60
    iget v0, p0, LbE;->h:I

    add-int/2addr v1, v0

    .line 61
    :cond_3
    invoke-virtual {p0}, LbE;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 62
    iget v0, p0, LbE;->i:I

    add-int/2addr v1, v0

    .line 63
    :cond_4
    invoke-virtual {p0}, LbE;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 64
    iget v0, p0, LbE;->j:I

    add-int/2addr v1, v0

    .line 65
    :cond_5
    invoke-virtual {p0}, LbE;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 66
    iget-boolean v0, p0, LbE;->k:Z

    invoke-static {v0}, LZE;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 67
    :cond_6
    invoke-virtual {p0}, LbE;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    .line 68
    iget v0, p0, LbE;->l:I

    add-int/2addr v1, v0

    :cond_7
    mul-int/lit8 v1, v1, 0x1f

    .line 69
    iget-object v0, p0, LbE;->m:LoE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 70
    invoke-virtual {p0}, LbE;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-boolean v1, p0, LbE;->n:Z

    invoke-static {v1}, LZE;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_8
    invoke-virtual {p0}, LbE;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget v1, p0, LbE;->o:I

    add-int/2addr v0, v1

    .line 74
    :cond_9
    invoke-virtual {p0}, LbE;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-boolean v1, p0, LbE;->p:Z

    invoke-static {v1}, LZE;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ClientConfigP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LbE;->d:LDE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    invoke-virtual {p0}, LbE;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " network_timeout_delay_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v0, p0, LbE;->e:I

    .line 7
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {p0}, LbE;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " write_retry_delay_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v0, p0, LbE;->f:I

    .line 11
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    :cond_1
    invoke-virtual {p0}, LbE;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " heartbeat_interval_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v0, p0, LbE;->g:I

    .line 15
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    :cond_2
    invoke-virtual {p0}, LbE;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " perf_counter_delay_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v0, p0, LbE;->h:I

    .line 19
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    :cond_3
    invoke-virtual {p0}, LbE;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " max_exponential_backoff_factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v0, p0, LbE;->i:I

    .line 23
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    :cond_4
    invoke-virtual {p0}, LbE;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " smear_percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v0, p0, LbE;->j:I

    .line 27
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    :cond_5
    invoke-virtual {p0}, LbE;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " is_transient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean v0, p0, LbE;->k:Z

    .line 31
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    :cond_6
    invoke-virtual {p0}, LbE;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " initial_persistent_heartbeat_delay_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v0, p0, LbE;->l:I

    .line 35
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    :cond_7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " protocol_handler_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, LbE;->m:LoE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 38
    invoke-virtual {p0}, LbE;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 39
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " channel_supports_offline_delivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v0, p0, LbE;->n:Z

    .line 41
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    :cond_8
    invoke-virtual {p0}, LbE;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " offline_heartbeat_threshold_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v0, p0, LbE;->o:I

    .line 45
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    :cond_9
    invoke-virtual {p0}, LbE;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 47
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " allow_suppression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean v0, p0, LbE;->p:Z

    .line 49
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_a
    const/16 v0, 0x3e

    .line 50
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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

.method public e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LbE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LbE;

    .line 3
    iget-wide v3, p0, LbE;->c:J

    iget-wide v5, p1, LbE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_c

    iget-object v1, p0, LbE;->d:LDE;

    iget-object v3, p1, LbE;->d:LDE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5
    invoke-virtual {p0}, LbE;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LbE;->e:I

    iget v3, p1, LbE;->e:I

    if-ne v1, v3, :cond_c

    .line 6
    :cond_2
    invoke-virtual {p0}, LbE;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, LbE;->f:I

    iget v3, p1, LbE;->f:I

    if-ne v1, v3, :cond_c

    .line 7
    :cond_3
    invoke-virtual {p0}, LbE;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, LbE;->g:I

    iget v3, p1, LbE;->g:I

    if-ne v1, v3, :cond_c

    .line 8
    :cond_4
    invoke-virtual {p0}, LbE;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, LbE;->h:I

    iget v3, p1, LbE;->h:I

    if-ne v1, v3, :cond_c

    .line 9
    :cond_5
    invoke-virtual {p0}, LbE;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, LbE;->i:I

    iget v3, p1, LbE;->i:I

    if-ne v1, v3, :cond_c

    .line 10
    :cond_6
    invoke-virtual {p0}, LbE;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, LbE;->j:I

    iget v3, p1, LbE;->j:I

    if-ne v1, v3, :cond_c

    .line 11
    :cond_7
    invoke-virtual {p0}, LbE;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, LbE;->k:Z

    iget-boolean v3, p1, LbE;->k:Z

    if-ne v1, v3, :cond_c

    .line 12
    :cond_8
    invoke-virtual {p0}, LbE;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, LbE;->l:I

    iget v3, p1, LbE;->l:I

    if-ne v1, v3, :cond_c

    :cond_9
    iget-object v1, p0, LbE;->m:LoE;

    iget-object v3, p1, LbE;->m:LoE;

    .line 13
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 14
    invoke-virtual {p0}, LbE;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, LbE;->n:Z

    iget-boolean v3, p1, LbE;->n:Z

    if-ne v1, v3, :cond_c

    .line 15
    :cond_a
    invoke-virtual {p0}, LbE;->j()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, LbE;->o:I

    iget v3, p1, LbE;->o:I

    if-ne v1, v3, :cond_c

    .line 16
    :cond_b
    invoke-virtual {p0}, LbE;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, LbE;->p:Z

    iget-boolean p1, p1, LbE;->p:Z

    if-ne v1, p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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

.method public g()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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

.method public h()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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
    iget-wide v0, p0, LbE;->c:J

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

.method public j()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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

.method public k()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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

.method public l()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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

.method public m()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LbE;->c:J

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

.method public n()LOH;
    .locals 9

    .line 1
    new-instance v0, LOH;

    invoke-direct {v0}, LOH;-><init>()V

    .line 2
    iget-object v1, p0, LbE;->d:LDE;

    invoke-virtual {v1}, LDE;->c()LqI;

    move-result-object v1

    iput-object v1, v0, LOH;->c:LqI;

    .line 3
    invoke-virtual {p0}, LbE;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, LbE;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, LOH;->d:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p0}, LbE;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, LbE;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iput-object v1, v0, LOH;->e:Ljava/lang/Integer;

    .line 5
    invoke-virtual {p0}, LbE;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LbE;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    iput-object v1, v0, LOH;->f:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, LbE;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, LbE;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    iput-object v1, v0, LOH;->g:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p0}, LbE;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, LbE;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    iput-object v1, v0, LOH;->h:Ljava/lang/Integer;

    .line 8
    invoke-virtual {p0}, LbE;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, LbE;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    iput-object v1, v0, LOH;->i:Ljava/lang/Integer;

    .line 9
    invoke-virtual {p0}, LbE;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, LbE;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    iput-object v1, v0, LOH;->j:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p0}, LbE;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, LbE;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :cond_7
    move-object v1, v2

    :goto_7
    iput-object v1, v0, LOH;->k:Ljava/lang/Integer;

    .line 11
    iget-object v1, p0, LbE;->m:LoE;

    if-eqz v1, :cond_e

    .line 12
    new-instance v3, LbI;

    invoke-direct {v3}, LbI;-><init>()V

    .line 13
    invoke-virtual {v1}, LoE;->c()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v1, LoE;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_8

    :cond_8
    move-object v4, v2

    :goto_8
    iput-object v4, v3, LbI;->c:Ljava/lang/Integer;

    .line 14
    iget-object v4, v1, LoE;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [LdI;

    iput-object v4, v3, LbI;->d:[LdI;

    const/4 v4, 0x0

    .line 15
    :goto_9
    iget-object v5, v3, LbI;->d:[LdI;

    array-length v6, v5

    if-ge v4, v6, :cond_a

    .line 16
    iget-object v6, v1, LoE;->e:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LqE;

    if-eqz v6, :cond_9

    .line 17
    new-instance v7, LdI;

    invoke-direct {v7}, LdI;-><init>()V

    .line 18
    iget v8, v6, LqE;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, LdI;->c:Ljava/lang/Integer;

    .line 19
    iget v6, v6, LqE;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v7, LdI;->d:Ljava/lang/Integer;

    .line 20
    aput-object v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 21
    :cond_9
    throw v2

    .line 22
    :cond_a
    iput-object v3, v0, LOH;->l:LbI;

    .line 23
    invoke-virtual {p0}, LbE;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, LbE;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    iput-object v1, v0, LOH;->m:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p0}, LbE;->j()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, LbE;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    :cond_c
    move-object v1, v2

    :goto_b
    iput-object v1, v0, LOH;->n:Ljava/lang/Integer;

    .line 25
    invoke-virtual {p0}, LbE;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, LbE;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_d
    iput-object v2, v0, LOH;->o:Ljava/lang/Boolean;

    return-object v0

    .line 26
    :cond_e
    throw v2
.end method
