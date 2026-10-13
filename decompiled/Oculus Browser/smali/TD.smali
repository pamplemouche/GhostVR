.class public final LTD;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:I

.field public final e:LPE;

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LTD;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, LTD;-><init>(Ljava/lang/Integer;LPE;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;LPE;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LTD;->d:I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, LTD;->d:I

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 4
    iput-object p2, p0, LTD;->e:LPE;

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, LPE;->y:LPE;

    iput-object p1, p0, LTD;->e:LPE;

    :goto_1
    if-eqz p3, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 6
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, LTD;->f:Z

    goto :goto_2

    .line 7
    :cond_2
    iput-boolean v1, p0, LTD;->f:Z

    :goto_2
    int-to-long p1, v0

    .line 8
    iput-wide p1, p0, LTD;->c:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-wide v0, p0, LTD;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 2
    invoke-virtual {p0}, LTD;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, LTD;->d:I

    add-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-virtual {p0}, LTD;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, LTD;->e:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, LTD;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, LTD;->f:Z

    invoke-static {v1}, LZE;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 8
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<NetworkEndpointId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, LTD;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " network_address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v0, p0, LTD;->d:I

    .line 12
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    :cond_0
    invoke-virtual {p0}, LTD;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v0, p0, LTD;->e:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 16
    :cond_1
    invoke-virtual {p0}, LTD;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " is_offline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean v0, p0, LTD;->f:Z

    .line 19
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v0, 0x3e

    .line 20
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LTD;->c:J

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
    iget-wide v0, p0, LTD;->c:J

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
    iget-wide v0, p0, LTD;->c:J

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
    instance-of v1, p1, LTD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LTD;

    .line 3
    iget-wide v3, p0, LTD;->c:J

    iget-wide v5, p1, LTD;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 4
    invoke-virtual {p0}, LTD;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LTD;->d:I

    iget v3, p1, LTD;->d:I

    if-ne v1, v3, :cond_4

    .line 5
    :cond_2
    invoke-virtual {p0}, LTD;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LTD;->e:LPE;

    iget-object v3, p1, LTD;->e:LPE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    :cond_3
    invoke-virtual {p0}, LTD;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, LTD;->f:Z

    iget-boolean p1, p1, LTD;->f:Z

    if-ne v1, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public f()[B
    .locals 3

    .line 1
    new-instance v0, LHH;

    invoke-direct {v0}, LHH;-><init>()V

    .line 2
    invoke-virtual {p0}, LTD;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, LTD;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, LHH;->c:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, LTD;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LTD;->e:LPE;

    .line 4
    iget-object v1, v1, LPE;->w:[B

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 5
    :goto_1
    iput-object v1, v0, LHH;->d:[B

    .line 6
    invoke-virtual {p0}, LTD;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LTD;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_2
    iput-object v2, v0, LHH;->e:Ljava/lang/Boolean;

    .line 7
    invoke-static {v0}, LZG;->a(LZG;)[B

    move-result-object v0

    return-object v0
.end method
