.class public final LMD;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LPE;

.field public final e:LlE;

.field public final f:LmE;

.field public final g:Z


# direct methods
.method public constructor <init>(LPE;LlE;LmE;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "ack_handle"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LMD;->d:LPE;

    .line 4
    iput-object p2, p0, LMD;->e:LlE;

    .line 5
    iput-object p3, p0, LMD;->f:LmE;

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, LMD;->g:Z

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean p1, p0, LMD;->g:Z

    :goto_0
    int-to-long p1, p1

    .line 8
    iput-wide p1, p0, LMD;->c:J

    .line 9
    invoke-virtual {p0}, LMD;->c()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const-string p1, "invalidate_all"

    goto :goto_1

    :cond_1
    move-object p1, p2

    .line 10
    :goto_1
    iget-object p3, p0, LMD;->f:LmE;

    const-string p4, "invalidate_unknown"

    if-eqz p3, :cond_3

    if-nez p1, :cond_2

    move-object p1, p4

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_3
    :goto_2
    iget-object p3, p0, LMD;->e:LlE;

    const-string p4, "invalidation"

    if-eqz p3, :cond_5

    if-nez p1, :cond_4

    move-object p1, p4

    goto :goto_3

    .line 13
    :cond_4
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    return-void

    .line 14
    :cond_6
    invoke-static {}, LZE;->b()V

    throw p2
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 15
    iget-wide v0, p0, LMD;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-object v1, p0, LMD;->d:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    iget-object v0, p0, LMD;->e:LlE;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 18
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 19
    :cond_0
    iget-object v0, p0, LMD;->f:LmE;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 20
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 21
    :cond_1
    invoke-virtual {p0}, LMD;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 22
    iget-boolean v0, p0, LMD;->g:Z

    invoke-static {v0}, LZE;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<InvalidateUpcall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " ack_handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LMD;->d:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    iget-object v0, p0, LMD;->e:LlE;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " invalidation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LMD;->e:LlE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 7
    :cond_0
    iget-object v0, p0, LMD;->f:LmE;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " invalidate_unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, LMD;->f:LmE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 10
    :cond_1
    invoke-virtual {p0}, LMD;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " invalidate_all="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-boolean v0, p0, LMD;->g:Z

    .line 13
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v0, 0x3e

    .line 14
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LMD;->c:J

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
    instance-of v1, p1, LMD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LMD;

    .line 3
    iget-wide v3, p0, LMD;->c:J

    iget-wide v5, p1, LMD;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, LMD;->d:LPE;

    iget-object v3, p1, LMD;->d:LPE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LMD;->e:LlE;

    iget-object v3, p1, LMD;->e:LlE;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LMD;->f:LmE;

    iget-object v3, p1, LMD;->f:LmE;

    .line 6
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, LMD;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, LMD;->g:Z

    iget-boolean p1, p1, LMD;->g:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method
