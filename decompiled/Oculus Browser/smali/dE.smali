.class public final LdE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LcE;

.field public final e:LjE;

.field public final f:LrE;

.field public final g:LxE;

.field public final h:LkE;

.field public final i:LhE;


# direct methods
.method public constructor <init>(LcE;LjE;LrE;LxE;LkE;LhE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "header"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LdE;->d:LcE;

    .line 4
    iput-object p2, p0, LdE;->e:LjE;

    .line 5
    iput-object p3, p0, LdE;->f:LrE;

    .line 6
    iput-object p4, p0, LdE;->g:LxE;

    .line 7
    iput-object p5, p0, LdE;->h:LkE;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p6, :cond_0

    .line 8
    iput-object p6, p0, LdE;->i:LhE;

    const/4 p5, 0x1

    goto :goto_0

    .line 9
    :cond_0
    sget-object p5, LhE;->i:LhE;

    iput-object p5, p0, LdE;->i:LhE;

    const/4 p5, 0x0

    :goto_0
    int-to-long p5, p5

    .line 10
    iput-wide p5, p0, LdE;->c:J

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 11
    :goto_1
    invoke-virtual {p1}, LcE;->c()Z

    move-result p1

    xor-int/2addr p1, p3

    const-string p2, "There should either be a client token or an initialization request"

    invoke-virtual {p0, p1, p2}, LZE;->a(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 20
    iget-wide v0, p0, LdE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-object v1, p0, LdE;->d:LcE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 22
    iget-object v0, p0, LdE;->e:LjE;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 23
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 24
    :cond_0
    iget-object v0, p0, LdE;->f:LrE;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 25
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26
    :cond_1
    iget-object v0, p0, LdE;->g:LxE;

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 27
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 28
    :cond_2
    iget-object v0, p0, LdE;->h:LkE;

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 29
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 30
    :cond_3
    invoke-virtual {p0}, LdE;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 31
    iget-object v0, p0, LdE;->i:LhE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ClientToServerMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LdE;->d:LcE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    iget-object v0, p0, LdE;->e:LjE;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " initialize_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LdE;->e:LjE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 7
    :cond_0
    iget-object v0, p0, LdE;->f:LrE;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, LdE;->f:LrE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 10
    :cond_1
    iget-object v0, p0, LdE;->g:LxE;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration_sync_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v0, p0, LdE;->g:LxE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 13
    :cond_2
    iget-object v0, p0, LdE;->h:LkE;

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " invalidation_ack_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v0, p0, LdE;->h:LkE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 16
    :cond_3
    invoke-virtual {p0}, LdE;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " info_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v0, p0, LdE;->i:LhE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_4
    const/16 v0, 0x3e

    .line 19
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LdE;->c:J

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
    instance-of v1, p1, LdE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LdE;

    .line 3
    iget-wide v3, p0, LdE;->c:J

    iget-wide v5, p1, LdE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, LdE;->d:LcE;

    iget-object v3, p1, LdE;->d:LcE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LdE;->e:LjE;

    iget-object v3, p1, LdE;->e:LjE;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LdE;->f:LrE;

    iget-object v3, p1, LdE;->f:LrE;

    .line 6
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LdE;->g:LxE;

    iget-object v3, p1, LdE;->g:LxE;

    .line 7
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LdE;->h:LkE;

    iget-object v3, p1, LdE;->h:LkE;

    .line 8
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, LdE;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LdE;->i:LhE;

    iget-object p1, p1, LdE;->i:LhE;

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
