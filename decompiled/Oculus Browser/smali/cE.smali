.class public final LcE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LpE;

.field public final e:LPE;

.field public final f:LwE;

.field public final g:J

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:I


# direct methods
.method public constructor <init>(LpE;LPE;LwE;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "protocol_version"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LcE;->d:LpE;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const-string v1, "client_token"

    .line 4
    invoke-static {v1, p2}, LZE;->a(Ljava/lang/String;LPE;)V

    .line 5
    iput-object p2, p0, LcE;->e:LPE;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, LPE;->y:LPE;

    iput-object p2, p0, LcE;->e:LPE;

    const/4 v0, 0x0

    .line 7
    :goto_0
    iput-object p3, p0, LcE;->f:LwE;

    const-string p2, "client_time_ms"

    .line 8
    invoke-static {p2, p4}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, LZE;->a(Ljava/lang/String;J)V

    .line 10
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, LcE;->g:J

    const-string p2, "max_known_server_time_ms"

    .line 11
    invoke-static {p2, p5}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-static {p2, p3, p4}, LZE;->a(Ljava/lang/String;J)V

    .line 13
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, LcE;->h:J

    if-eqz p6, :cond_1

    or-int/lit8 v0, v0, 0x2

    const-string p2, "message_id"

    .line 14
    invoke-static {p2, p6}, LZE;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p6, p0, LcE;->i:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 16
    iput-object p2, p0, LcE;->i:Ljava/lang/String;

    :goto_1
    if-eqz p7, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 17
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LcE;->j:I

    goto :goto_2

    .line 18
    :cond_2
    iput p1, p0, LcE;->j:I

    :goto_2
    int-to-long p1, v0

    .line 19
    iput-wide p1, p0, LcE;->c:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 25
    iget-wide v0, p0, LcE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v1, p0, LcE;->d:LpE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 27
    invoke-virtual {p0}, LcE;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 28
    iget-object v0, p0, LcE;->e:LPE;

    invoke-virtual {v0}, LPE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 29
    :cond_0
    iget-object v0, p0, LcE;->f:LwE;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 30
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    iget-wide v2, p0, LcE;->g:J

    invoke-static {v2, v3}, LZE;->a(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    iget-wide v1, p0, LcE;->h:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    .line 33
    invoke-virtual {p0}, LcE;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 34
    iget-object v0, p0, LcE;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 35
    :cond_2
    invoke-virtual {p0}, LcE;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 36
    iget v0, p0, LcE;->j:I

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ClientHeader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " protocol_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LcE;->d:LpE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    invoke-virtual {p0}, LcE;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LcE;->e:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 7
    :cond_0
    iget-object v0, p0, LcE;->f:LwE;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration_summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, LcE;->f:LwE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 10
    :cond_1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v0, p0, LcE;->g:J

    .line 12
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " max_known_server_time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-wide v0, p0, LcE;->h:J

    .line 15
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, LcE;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " message_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v0, p0, LcE;->i:Ljava/lang/String;

    .line 19
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_2
    invoke-virtual {p0}, LcE;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v0, p0, LcE;->j:I

    .line 23
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v0, 0x3e

    .line 24
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LcE;->c:J

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

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LcE;->c:J

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

.method public e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LcE;->c:J

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
    instance-of v1, p1, LcE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LcE;

    .line 3
    iget-wide v3, p0, LcE;->c:J

    iget-wide v5, p1, LcE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, LcE;->d:LpE;

    iget-object v3, p1, LcE;->d:LpE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p0}, LcE;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LcE;->e:LPE;

    iget-object v3, p1, LcE;->e:LPE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, LcE;->f:LwE;

    iget-object v3, p1, LcE;->f:LwE;

    .line 6
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, p0, LcE;->g:J

    iget-wide v5, p1, LcE;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, LcE;->h:J

    iget-wide v5, p1, LcE;->h:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p0}, LcE;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LcE;->i:Ljava/lang/String;

    iget-object v3, p1, LcE;->i:Ljava/lang/String;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    :cond_3
    invoke-virtual {p0}, LcE;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, LcE;->j:I

    iget p1, p1, LcE;->j:I

    if-ne v1, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method
