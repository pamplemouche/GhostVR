.class public final LwD;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:LDE;

.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LwD;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, LwD;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LDE;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LDE;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-object p1, p0, LwD;->d:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iput-object v0, p0, LwD;->d:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 4
    iput-object p2, p0, LwD;->e:Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_1
    iput-object v0, p0, LwD;->e:Ljava/lang/String;

    :goto_1
    if-eqz p3, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 6
    iput-object p3, p0, LwD;->f:Ljava/lang/String;

    goto :goto_2

    .line 7
    :cond_2
    iput-object v0, p0, LwD;->f:Ljava/lang/String;

    .line 8
    :goto_2
    iput-object p4, p0, LwD;->g:LDE;

    if-eqz p5, :cond_3

    or-int/lit8 v1, v1, 0x8

    .line 9
    iput-object p5, p0, LwD;->h:Ljava/lang/String;

    goto :goto_3

    .line 10
    :cond_3
    iput-object v0, p0, LwD;->h:Ljava/lang/String;

    :goto_3
    int-to-long p1, v1

    .line 11
    iput-wide p1, p0, LwD;->c:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-wide v0, p0, LwD;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 2
    invoke-virtual {p0}, LwD;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, LwD;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-virtual {p0}, LwD;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, LwD;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, LwD;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, LwD;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget-object v1, p0, LwD;->g:LDE;

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, LwD;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, LwD;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 12
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<AndroidEndpointId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, LwD;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " c2dm_registration_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v0, p0, LwD;->d:Ljava/lang/String;

    .line 16
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_0
    invoke-virtual {p0}, LwD;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v0, p0, LwD;->e:Ljava/lang/String;

    .line 20
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_1
    invoke-virtual {p0}, LwD;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " sender_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v0, p0, LwD;->f:Ljava/lang/String;

    .line 24
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_2
    iget-object v0, p0, LwD;->g:LDE;

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " channel_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, p0, LwD;->g:LDE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 28
    :cond_3
    invoke-virtual {p0}, LwD;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v0, p0, LwD;->h:Ljava/lang/String;

    .line 31
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v0, 0x3e

    .line 32
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LwD;->c:J

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
    iget-wide v0, p0, LwD;->c:J

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

.method public e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LwD;->c:J

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LwD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LwD;

    .line 3
    iget-wide v3, p0, LwD;->c:J

    iget-wide v5, p1, LwD;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 4
    invoke-virtual {p0}, LwD;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LwD;->d:Ljava/lang/String;

    iget-object v3, p1, LwD;->d:Ljava/lang/String;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    :cond_2
    invoke-virtual {p0}, LwD;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LwD;->e:Ljava/lang/String;

    iget-object v3, p1, LwD;->e:Ljava/lang/String;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    :cond_3
    invoke-virtual {p0}, LwD;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LwD;->f:Ljava/lang/String;

    iget-object v3, p1, LwD;->f:Ljava/lang/String;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, LwD;->g:LDE;

    iget-object v3, p1, LwD;->g:LDE;

    .line 7
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p0}, LwD;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, LwD;->h:Ljava/lang/String;

    iget-object p1, p1, LwD;->h:Ljava/lang/String;

    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LwD;->c:J

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
