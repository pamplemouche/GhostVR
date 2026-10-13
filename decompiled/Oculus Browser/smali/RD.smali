.class public final LRD;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:J

.field public final e:LDE;

.field public final f:LND;

.field public final g:LMD;

.field public final h:LPD;

.field public final i:LOD;

.field public final j:LQD;

.field public final k:LLD;


# direct methods
.method public constructor <init>(Ljava/lang/Long;LDE;LND;LMD;LPD;LOD;LQD;LLD;)V
    .locals 3

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, LRD;->d:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, LRD;->d:J

    const/4 v0, 0x0

    :goto_0
    const-string p1, "version"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, LRD;->e:LDE;

    if-eqz p3, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 6
    iput-object p3, p0, LRD;->f:LND;

    goto :goto_1

    .line 7
    :cond_1
    sget-object p1, LND;->c:LND;

    iput-object p1, p0, LRD;->f:LND;

    .line 8
    :goto_1
    iput-object p4, p0, LRD;->g:LMD;

    .line 9
    iput-object p5, p0, LRD;->h:LPD;

    .line 10
    iput-object p6, p0, LRD;->i:LOD;

    .line 11
    iput-object p7, p0, LRD;->j:LQD;

    .line 12
    iput-object p8, p0, LRD;->k:LLD;

    int-to-long p1, v0

    .line 13
    iput-wide p1, p0, LRD;->c:J

    .line 14
    invoke-virtual {p0}, LRD;->d()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-string p1, "serial"

    goto :goto_2

    :cond_2
    move-object p1, p2

    .line 15
    :goto_2
    iget-object p3, p0, LRD;->k:LLD;

    const-string p4, "error"

    if-eqz p3, :cond_4

    if-nez p1, :cond_3

    move-object p1, p4

    goto :goto_3

    .line 16
    :cond_3
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_4
    :goto_3
    iget-object p3, p0, LRD;->g:LMD;

    const-string p4, "invalidate"

    if-eqz p3, :cond_6

    if-nez p1, :cond_5

    move-object p1, p4

    goto :goto_4

    .line 18
    :cond_5
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_6
    :goto_4
    invoke-virtual {p0}, LRD;->c()Z

    move-result p3

    const-string p4, "ready"

    if-eqz p3, :cond_8

    if-nez p1, :cond_7

    move-object p1, p4

    goto :goto_5

    .line 20
    :cond_7
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_8
    :goto_5
    iget-object p3, p0, LRD;->i:LOD;

    const-string p4, "registration_failure"

    if-eqz p3, :cond_a

    if-nez p1, :cond_9

    move-object p1, p4

    goto :goto_6

    .line 22
    :cond_9
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_a
    :goto_6
    iget-object p3, p0, LRD;->h:LPD;

    const-string p4, "registration_status"

    if-eqz p3, :cond_c

    if-nez p1, :cond_b

    move-object p1, p4

    goto :goto_7

    .line 24
    :cond_b
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_c
    :goto_7
    iget-object p3, p0, LRD;->j:LQD;

    const-string p4, "reissue_registrations"

    if-eqz p3, :cond_e

    if-nez p1, :cond_d

    move-object p1, p4

    goto :goto_8

    .line 26
    :cond_d
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_e
    :goto_8
    if-eqz p1, :cond_f

    return-void

    .line 27
    :cond_f
    invoke-static {}, LZE;->b()V

    throw p2
.end method

.method public static a(LDE;LMD;)LRD;
    .locals 10

    .line 27
    new-instance v9, LRD;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, LRD;-><init>(Ljava/lang/Long;LDE;LND;LMD;LPD;LOD;LQD;LLD;)V

    return-object v9
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 28
    iget-wide v0, p0, LRD;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 29
    invoke-virtual {p0}, LRD;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-wide v1, p0, LRD;->d:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v1, p0, LRD;->e:LDE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 32
    invoke-virtual {p0}, LRD;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 33
    iget-object v0, p0, LRD;->f:LND;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 34
    :cond_1
    iget-object v0, p0, LRD;->g:LMD;

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 35
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 36
    :cond_2
    iget-object v0, p0, LRD;->h:LPD;

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 37
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 38
    :cond_3
    iget-object v0, p0, LRD;->i:LOD;

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 39
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 40
    :cond_4
    iget-object v0, p0, LRD;->j:LQD;

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 41
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 42
    :cond_5
    iget-object v0, p0, LRD;->k:LLD;

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 43
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    return v1
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ListenerUpcall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LRD;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-wide v0, p0, LRD;->d:J

    .line 5
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LRD;->e:LDE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 8
    invoke-virtual {p0}, LRD;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " ready="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, LRD;->f:LND;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 11
    :cond_1
    iget-object v0, p0, LRD;->g:LMD;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " invalidate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v0, p0, LRD;->g:LMD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 14
    :cond_2
    iget-object v0, p0, LRD;->h:LPD;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p0, LRD;->h:LPD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 17
    :cond_3
    iget-object v0, p0, LRD;->i:LOD;

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration_failure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v0, p0, LRD;->i:LOD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 20
    :cond_4
    iget-object v0, p0, LRD;->j:LQD;

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " reissue_registrations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v0, p0, LRD;->j:LQD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 23
    :cond_5
    iget-object v0, p0, LRD;->k:LLD;

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v0, p0, LRD;->k:LLD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_6
    const/16 v0, 0x3e

    .line 26
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LRD;->c:J

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

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LRD;->c:J

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

.method public e()[B
    .locals 5

    .line 1
    new-instance v0, LzH;

    invoke-direct {v0}, LzH;-><init>()V

    .line 2
    invoke-virtual {p0}, LRD;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-wide v3, p0, LRD;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, LzH;->c:Ljava/lang/Long;

    .line 3
    iget-object v1, p0, LRD;->e:LDE;

    invoke-virtual {v1}, LDE;->c()LqI;

    move-result-object v1

    iput-object v1, v0, LzH;->d:LqI;

    .line 4
    invoke-virtual {p0}, LRD;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LRD;->f:LND;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, LvH;

    invoke-direct {v1}, LvH;-><init>()V

    goto :goto_1

    :cond_1
    throw v2

    :cond_2
    move-object v1, v2

    .line 6
    :goto_1
    iput-object v1, v0, LzH;->e:LvH;

    .line 7
    iget-object v1, p0, LRD;->g:LMD;

    if-eqz v1, :cond_6

    .line 8
    new-instance v3, LuH;

    invoke-direct {v3}, LuH;-><init>()V

    .line 9
    iget-object v4, v1, LMD;->d:LPE;

    .line 10
    iget-object v4, v4, LPE;->w:[B

    .line 11
    iput-object v4, v3, LuH;->c:[B

    .line 12
    iget-object v4, v1, LMD;->e:LlE;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, LlE;->e()LYH;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    iput-object v4, v3, LuH;->d:LYH;

    .line 13
    iget-object v4, v1, LMD;->f:LmE;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, LmE;->c()LZH;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    iput-object v4, v3, LuH;->e:LZH;

    .line 14
    invoke-virtual {v1}, LMD;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v1, v1, LMD;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    iput-object v1, v3, LuH;->f:Ljava/lang/Boolean;

    goto :goto_5

    :cond_6
    move-object v3, v2

    .line 15
    :goto_5
    iput-object v3, v0, LzH;->f:LuH;

    .line 16
    iget-object v1, p0, LRD;->h:LPD;

    if-eqz v1, :cond_7

    .line 17
    new-instance v3, LxH;

    invoke-direct {v3}, LxH;-><init>()V

    .line 18
    iget-object v4, v1, LPD;->c:LmE;

    invoke-virtual {v4}, LmE;->c()LZH;

    move-result-object v4

    iput-object v4, v3, LxH;->c:LZH;

    .line 19
    iget-boolean v1, v1, LPD;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, LxH;->d:Ljava/lang/Boolean;

    goto :goto_6

    :cond_7
    move-object v3, v2

    .line 20
    :goto_6
    iput-object v3, v0, LzH;->g:LxH;

    .line 21
    iget-object v1, p0, LRD;->i:LOD;

    if-eqz v1, :cond_8

    .line 22
    new-instance v3, LwH;

    invoke-direct {v3}, LwH;-><init>()V

    .line 23
    iget-object v4, v1, LOD;->c:LmE;

    invoke-virtual {v4}, LmE;->c()LZH;

    move-result-object v4

    iput-object v4, v3, LwH;->c:LZH;

    .line 24
    iget-boolean v4, v1, LOD;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, LwH;->d:Ljava/lang/Boolean;

    .line 25
    iget-object v1, v1, LOD;->e:Ljava/lang/String;

    iput-object v1, v3, LwH;->e:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object v3, v2

    .line 26
    :goto_7
    iput-object v3, v0, LzH;->h:LwH;

    .line 27
    iget-object v1, p0, LRD;->j:LQD;

    if-eqz v1, :cond_9

    .line 28
    new-instance v3, LyH;

    invoke-direct {v3}, LyH;-><init>()V

    .line 29
    iget-object v4, v1, LQD;->c:LPE;

    .line 30
    iget-object v4, v4, LPE;->w:[B

    .line 31
    iput-object v4, v3, LyH;->c:[B

    .line 32
    iget v1, v1, LQD;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, LyH;->d:Ljava/lang/Integer;

    goto :goto_8

    :cond_9
    move-object v3, v2

    .line 33
    :goto_8
    iput-object v3, v0, LzH;->i:LyH;

    .line 34
    iget-object v1, p0, LRD;->k:LLD;

    if-eqz v1, :cond_a

    .line 35
    new-instance v2, LtH;

    invoke-direct {v2}, LtH;-><init>()V

    .line 36
    iget v3, v1, LLD;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, LtH;->c:Ljava/lang/Integer;

    .line 37
    iget-object v3, v1, LLD;->d:Ljava/lang/String;

    iput-object v3, v2, LtH;->d:Ljava/lang/String;

    .line 38
    iget-boolean v1, v1, LLD;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, LtH;->e:Ljava/lang/Boolean;

    .line 39
    :cond_a
    iput-object v2, v0, LzH;->j:LtH;

    .line 40
    invoke-static {v0}, LZG;->a(LZG;)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LRD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LRD;

    .line 3
    iget-wide v3, p0, LRD;->c:J

    iget-wide v5, p1, LRD;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 4
    invoke-virtual {p0}, LRD;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, LRD;->d:J

    iget-wide v5, p1, LRD;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, LRD;->e:LDE;

    iget-object v3, p1, LRD;->e:LDE;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p0}, LRD;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LRD;->f:LND;

    iget-object v3, p1, LRD;->f:LND;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, LRD;->g:LMD;

    iget-object v3, p1, LRD;->g:LMD;

    .line 7
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LRD;->h:LPD;

    iget-object v3, p1, LRD;->h:LPD;

    .line 8
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LRD;->i:LOD;

    iget-object v3, p1, LRD;->i:LOD;

    .line 9
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LRD;->j:LQD;

    iget-object v3, p1, LRD;->j:LQD;

    .line 10
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LRD;->k:LLD;

    iget-object p1, p1, LRD;->k:LLD;

    .line 11
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
