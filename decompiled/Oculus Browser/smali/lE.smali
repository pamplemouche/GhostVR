.class public final LlE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LmE;

.field public final e:Z

.field public final f:J

.field public final g:LPE;

.field public final h:Z


# direct methods
.method public constructor <init>(LmE;Ljava/lang/Boolean;Ljava/lang/Long;LPE;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "object_id"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LlE;->d:LmE;

    const-string p1, "is_known_version"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, LlE;->e:Z

    const-string p1, "version"

    .line 6
    invoke-static {p1, p3}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, LZE;->a(Ljava/lang/String;J)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, LlE;->f:J

    const/4 p1, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_0

    .line 9
    iput-object p4, p0, LlE;->g:LPE;

    const/4 p4, 0x1

    goto :goto_0

    .line 10
    :cond_0
    sget-object p4, LPE;->y:LPE;

    iput-object p4, p0, LlE;->g:LPE;

    const/4 p4, 0x0

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit8 p4, p4, 0x2

    .line 11
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, LlE;->h:Z

    goto :goto_1

    .line 12
    :cond_1
    iput-boolean p3, p0, LlE;->h:Z

    :goto_1
    int-to-long v0, p4

    .line 13
    iput-wide v0, p0, LlE;->c:J

    .line 14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p1, 0x1

    :cond_3
    const-string p2, "is_trickle_restart required if not is_known_version"

    invoke-virtual {p0, p1, p2}, LZE;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static a(LYH;)LlE;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    new-instance v6, LlE;

    iget-object v0, p0, LYH;->c:LZH;

    invoke-static {v0}, LmE;->a(LZH;)LmE;

    move-result-object v1

    iget-object v2, p0, LYH;->d:Ljava/lang/Boolean;

    iget-object v3, p0, LYH;->e:Ljava/lang/Long;

    iget-object v0, p0, LYH;->g:[B

    .line 27
    invoke-static {v0}, LPE;->a([B)LPE;

    move-result-object v4

    iget-object v5, p0, LYH;->f:Ljava/lang/Boolean;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LlE;-><init>(LmE;Ljava/lang/Boolean;Ljava/lang/Long;LPE;Ljava/lang/Boolean;)V

    return-object v6
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 18
    iget-wide v0, p0, LlE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-object v1, p0, LlE;->d:LmE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 20
    iget-boolean v0, p0, LlE;->e:Z

    invoke-static {v0}, LZE;->a(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-wide v1, p0, LlE;->f:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    .line 22
    invoke-virtual {p0}, LlE;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 23
    iget-object v0, p0, LlE;->g:LPE;

    invoke-virtual {v0}, LPE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 24
    :cond_0
    invoke-virtual {p0}, LlE;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 25
    iget-boolean v0, p0, LlE;->h:Z

    invoke-static {v0}, LZE;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<InvalidationP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " object_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LlE;->d:LmE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " is_known_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v0, p0, LlE;->e:Z

    .line 6
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-wide v0, p0, LlE;->f:J

    .line 9
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, LlE;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v0, p0, LlE;->g:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 13
    :cond_0
    invoke-virtual {p0}, LlE;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " is_trickle_restart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-boolean v0, p0, LlE;->h:Z

    .line 16
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x3e

    .line 17
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LlE;->c:J

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
    iget-wide v0, p0, LlE;->c:J

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

.method public e()LYH;
    .locals 3

    .line 1
    new-instance v0, LYH;

    invoke-direct {v0}, LYH;-><init>()V

    .line 2
    iget-object v1, p0, LlE;->d:LmE;

    invoke-virtual {v1}, LmE;->c()LZH;

    move-result-object v1

    iput-object v1, v0, LYH;->c:LZH;

    .line 3
    iget-boolean v1, p0, LlE;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, LYH;->d:Ljava/lang/Boolean;

    .line 4
    iget-wide v1, p0, LlE;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LYH;->e:Ljava/lang/Long;

    .line 5
    invoke-virtual {p0}, LlE;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, LlE;->g:LPE;

    .line 6
    iget-object v1, v1, LPE;->w:[B

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 7
    :goto_0
    iput-object v1, v0, LYH;->g:[B

    .line 8
    invoke-virtual {p0}, LlE;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, LlE;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    iput-object v2, v0, LYH;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LlE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LlE;

    .line 3
    iget-wide v3, p0, LlE;->c:J

    iget-wide v5, p1, LlE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, LlE;->d:LmE;

    iget-object v3, p1, LlE;->d:LmE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, LlE;->e:Z

    iget-boolean v3, p1, LlE;->e:Z

    if-ne v1, v3, :cond_3

    iget-wide v3, p0, LlE;->f:J

    iget-wide v5, p1, LlE;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p0}, LlE;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LlE;->g:LPE;

    iget-object v3, p1, LlE;->g:LPE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p0}, LlE;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, LlE;->h:Z

    iget-boolean p1, p1, LlE;->h:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method
