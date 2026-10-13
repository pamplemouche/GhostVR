.class public final LKD;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LDE;

.field public final e:LJD;

.field public final f:LID;

.field public final g:Z

.field public final h:LHD;


# direct methods
.method public constructor <init>(LDE;LJD;LID;Ljava/lang/Boolean;LHD;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "version"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LKD;->d:LDE;

    .line 4
    iput-object p2, p0, LKD;->e:LJD;

    .line 5
    iput-object p3, p0, LKD;->f:LID;

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, LKD;->g:Z

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean p1, p0, LKD;->g:Z

    .line 8
    :goto_0
    iput-object p5, p0, LKD;->h:LHD;

    int-to-long p1, p1

    .line 9
    iput-wide p1, p0, LKD;->c:J

    .line 10
    iget-object p1, p0, LKD;->f:LID;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const-string p1, "network_status"

    goto :goto_1

    :cond_1
    move-object p1, p2

    .line 11
    :goto_1
    iget-object p3, p0, LKD;->e:LJD;

    const-string p4, "server_message"

    if-eqz p3, :cond_3

    if-nez p1, :cond_2

    move-object p1, p4

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {p0}, LKD;->c()Z

    move-result p3

    const-string p4, "network_addr_change"

    if-eqz p3, :cond_5

    if-nez p1, :cond_4

    move-object p1, p4

    goto :goto_3

    .line 14
    :cond_4
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_5
    :goto_3
    iget-object p3, p0, LKD;->h:LHD;

    const-string p4, "create_client"

    if-eqz p3, :cond_7

    if-nez p1, :cond_6

    move-object p1, p4

    goto :goto_4

    .line 16
    :cond_6
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    return-void

    .line 17
    :cond_8
    invoke-static {}, LZE;->b()V

    throw p2
.end method

.method public static a(LsH;)LKD;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    new-instance v6, LKD;

    iget-object v0, p0, LsH;->c:LqI;

    invoke-static {v0}, LDE;->a(LqI;)LDE;

    move-result-object v1

    iget-object v0, p0, LsH;->d:LrH;

    .line 32
    invoke-static {v0}, LJD;->a(LrH;)LJD;

    move-result-object v2

    iget-object v0, p0, LsH;->e:LqH;

    .line 33
    invoke-static {v0}, LID;->a(LqH;)LID;

    move-result-object v3

    iget-object v4, p0, LsH;->f:Ljava/lang/Boolean;

    iget-object p0, p0, LsH;->g:LpH;

    .line 34
    invoke-static {p0}, LHD;->a(LpH;)LHD;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LKD;-><init>(LDE;LJD;LID;Ljava/lang/Boolean;LHD;)V

    return-object v6
.end method

.method public static a([B)LKD;
    .locals 1

    .line 28
    :try_start_0
    new-instance v0, LsH;

    invoke-direct {v0}, LsH;-><init>()V

    invoke-static {v0, p0}, LZG;->a(LZG;[B)LZG;

    check-cast v0, LsH;

    invoke-static {v0}, LKD;->a(LsH;)LKD;

    move-result-object p0
    :try_end_0
    .catch LYG; {:try_start_0 .. :try_end_0} :catch_1
    .catch LXE; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 29
    new-instance v0, LYE;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    .line 30
    new-instance v0, LYE;

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 18
    iget-wide v0, p0, LKD;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-object v1, p0, LKD;->d:LDE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    iget-object v0, p0, LKD;->e:LJD;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 21
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 22
    :cond_0
    iget-object v0, p0, LKD;->f:LID;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 23
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 24
    :cond_1
    invoke-virtual {p0}, LKD;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 25
    iget-boolean v0, p0, LKD;->g:Z

    invoke-static {v0}, LZE;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 26
    :cond_2
    iget-object v0, p0, LKD;->h:LHD;

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 27
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<InternalDowncall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LKD;->d:LDE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    iget-object v0, p0, LKD;->e:LJD;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " server_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LKD;->e:LJD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 7
    :cond_0
    iget-object v0, p0, LKD;->f:LID;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " network_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, LKD;->f:LID;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 10
    :cond_1
    invoke-virtual {p0}, LKD;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " network_addr_change="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-boolean v0, p0, LKD;->g:Z

    .line 13
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    iget-object v0, p0, LKD;->h:LHD;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " create_client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p0, LKD;->h:LHD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_3
    const/16 v0, 0x3e

    .line 17
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LKD;->c:J

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

.method public d()[B
    .locals 4

    .line 1
    new-instance v0, LsH;

    invoke-direct {v0}, LsH;-><init>()V

    .line 2
    iget-object v1, p0, LKD;->d:LDE;

    invoke-virtual {v1}, LDE;->c()LqI;

    move-result-object v1

    iput-object v1, v0, LsH;->c:LqI;

    .line 3
    iget-object v1, p0, LKD;->e:LJD;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    new-instance v3, LrH;

    invoke-direct {v3}, LrH;-><init>()V

    .line 5
    iget-object v1, v1, LJD;->c:LPE;

    .line 6
    iget-object v1, v1, LPE;->w:[B

    .line 7
    iput-object v1, v3, LrH;->c:[B

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 8
    :goto_0
    iput-object v3, v0, LsH;->d:LrH;

    .line 9
    iget-object v1, p0, LKD;->f:LID;

    if-eqz v1, :cond_1

    .line 10
    new-instance v3, LqH;

    invoke-direct {v3}, LqH;-><init>()V

    .line 11
    iget-boolean v1, v1, LID;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, LqH;->c:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 12
    :goto_1
    iput-object v3, v0, LsH;->e:LqH;

    .line 13
    invoke-virtual {p0}, LKD;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LKD;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    iput-object v1, v0, LsH;->f:Ljava/lang/Boolean;

    .line 14
    iget-object v1, p0, LKD;->h:LHD;

    if-eqz v1, :cond_3

    .line 15
    new-instance v2, LpH;

    invoke-direct {v2}, LpH;-><init>()V

    .line 16
    iget v3, v1, LHD;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, LpH;->c:Ljava/lang/Integer;

    .line 17
    iget-object v3, v1, LHD;->d:LPE;

    .line 18
    iget-object v3, v3, LPE;->w:[B

    .line 19
    iput-object v3, v2, LpH;->d:[B

    .line 20
    iget-object v3, v1, LHD;->e:LbE;

    invoke-virtual {v3}, LbE;->n()LOH;

    move-result-object v3

    iput-object v3, v2, LpH;->e:LOH;

    .line 21
    iget-boolean v1, v1, LHD;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, LpH;->f:Ljava/lang/Boolean;

    .line 22
    :cond_3
    iput-object v2, v0, LsH;->g:LpH;

    .line 23
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
    instance-of v1, p1, LKD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LKD;

    .line 3
    iget-wide v3, p0, LKD;->c:J

    iget-wide v5, p1, LKD;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, LKD;->d:LDE;

    iget-object v3, p1, LKD;->d:LDE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LKD;->e:LJD;

    iget-object v3, p1, LKD;->e:LJD;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LKD;->f:LID;

    iget-object v3, p1, LKD;->f:LID;

    .line 6
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, LKD;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LKD;->g:Z

    iget-boolean v3, p1, LKD;->g:Z

    if-ne v1, v3, :cond_3

    :cond_2
    iget-object v1, p0, LKD;->h:LHD;

    iget-object p1, p1, LKD;->h:LHD;

    .line 8
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
