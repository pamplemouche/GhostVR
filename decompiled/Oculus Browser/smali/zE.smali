.class public final LzE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LpE;

.field public final e:LPE;

.field public final f:LwE;

.field public final g:J

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(LpE;LPE;LwE;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "protocol_version"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LzE;->d:LpE;

    const-string p1, "client_token"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;LPE;)V

    .line 6
    iput-object p2, p0, LzE;->e:LPE;

    .line 7
    iput-object p3, p0, LzE;->f:LwE;

    const-string p1, "server_time_ms"

    .line 8
    invoke-static {p1, p4}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, LZE;->a(Ljava/lang/String;J)V

    .line 10
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, LzE;->g:J

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    const-string p2, "message_id"

    .line 11
    invoke-static {p2, p5}, LZE;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object p5, p0, LzE;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 13
    iput-object p1, p0, LzE;->h:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    int-to-long p1, p1

    .line 14
    iput-wide p1, p0, LzE;->c:J

    return-void
.end method

.method public static a(LmI;)LzE;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    new-instance v6, LzE;

    iget-object v0, p0, LmI;->c:LcI;

    invoke-static {v0}, LpE;->a(LcI;)LpE;

    move-result-object v1

    iget-object v0, p0, LmI;->d:[B

    .line 26
    invoke-static {v0}, LPE;->a([B)LPE;

    move-result-object v2

    iget-object v0, p0, LmI;->e:LjI;

    .line 27
    invoke-static {v0}, LwE;->a(LjI;)LwE;

    move-result-object v3

    iget-object v4, p0, LmI;->f:Ljava/lang/Long;

    iget-object v5, p0, LmI;->g:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LzE;-><init>(LpE;LPE;LwE;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 17
    iget-wide v0, p0, LzE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, LzE;->d:LpE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 19
    iget-object v0, p0, LzE;->e:LPE;

    invoke-virtual {v0}, LPE;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 20
    iget-object v1, p0, LzE;->f:LwE;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-wide v1, p0, LzE;->g:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    .line 23
    invoke-virtual {p0}, LzE;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 24
    iget-object v0, p0, LzE;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ServerHeader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " protocol_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LzE;->d:LpE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, LzE;->e:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 6
    iget-object v0, p0, LzE;->f:LwE;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration_summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v0, p0, LzE;->f:LwE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 9
    :cond_0
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " server_time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-wide v0, p0, LzE;->g:J

    .line 11
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, LzE;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " message_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v0, p0, LzE;->h:Ljava/lang/String;

    .line 15
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x3e

    .line 16
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LzE;->c:J

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LzE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LzE;

    .line 3
    iget-wide v3, p0, LzE;->c:J

    iget-wide v5, p1, LzE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, LzE;->d:LpE;

    iget-object v3, p1, LzE;->d:LpE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LzE;->e:LPE;

    iget-object v3, p1, LzE;->e:LPE;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LzE;->f:LwE;

    iget-object v3, p1, LzE;->f:LwE;

    .line 6
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, LzE;->g:J

    iget-wide v5, p1, LzE;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p0}, LzE;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LzE;->h:Ljava/lang/String;

    iget-object p1, p1, LzE;->h:Ljava/lang/String;

    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method
