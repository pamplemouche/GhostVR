.class public final LGD;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:J

.field public final e:LDE;

.field public final f:LED;

.field public final g:LFD;

.field public final h:LCD;

.field public final i:LDD;


# direct methods
.method public constructor <init>(Ljava/lang/Long;LDE;LED;LFD;LCD;LDD;)V
    .locals 3

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, LGD;->d:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, LGD;->d:J

    const/4 v0, 0x0

    :goto_0
    const-string p1, "version"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, LGD;->e:LDE;

    if-eqz p3, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 6
    iput-object p3, p0, LGD;->f:LED;

    goto :goto_1

    .line 7
    :cond_1
    sget-object p1, LED;->c:LED;

    iput-object p1, p0, LGD;->f:LED;

    :goto_1
    if-eqz p4, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 8
    iput-object p4, p0, LGD;->g:LFD;

    goto :goto_2

    .line 9
    :cond_2
    sget-object p1, LFD;->c:LFD;

    iput-object p1, p0, LGD;->g:LFD;

    .line 10
    :goto_2
    iput-object p5, p0, LGD;->h:LCD;

    .line 11
    iput-object p6, p0, LGD;->i:LDD;

    int-to-long p1, v0

    .line 12
    iput-wide p1, p0, LGD;->c:J

    .line 13
    invoke-virtual {p0}, LGD;->c()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string p1, "serial"

    goto :goto_3

    :cond_3
    move-object p1, p2

    .line 14
    :goto_3
    iget-object p3, p0, LGD;->h:LCD;

    const-string p4, "ack"

    if-eqz p3, :cond_5

    if-nez p1, :cond_4

    move-object p1, p4

    goto :goto_4

    .line 15
    :cond_4
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_5
    :goto_4
    iget-object p3, p0, LGD;->i:LDD;

    const-string p4, "registrations"

    if-eqz p3, :cond_7

    if-nez p1, :cond_6

    move-object p1, p4

    goto :goto_5

    .line 17
    :cond_6
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_7
    :goto_5
    invoke-virtual {p0}, LGD;->d()Z

    move-result p3

    const-string p4, "start"

    if-eqz p3, :cond_9

    if-nez p1, :cond_8

    move-object p1, p4

    goto :goto_6

    .line 19
    :cond_8
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_9
    :goto_6
    invoke-virtual {p0}, LGD;->e()Z

    move-result p3

    const-string p4, "stop"

    if-eqz p3, :cond_b

    if-nez p1, :cond_a

    move-object p1, p4

    goto :goto_7

    .line 21
    :cond_a
    invoke-static {p1, p4}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_7
    if-eqz p1, :cond_c

    return-void

    .line 22
    :cond_c
    invoke-static {}, LZE;->b()V

    throw p2
.end method

.method public static a(LoH;)LGD;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    new-instance v7, LGD;

    iget-object v1, p0, LoH;->c:Ljava/lang/Long;

    iget-object v0, p0, LoH;->d:LqI;

    .line 37
    invoke-static {v0}, LDE;->a(LqI;)LDE;

    move-result-object v2

    iget-object v0, p0, LoH;->e:LmH;

    .line 38
    invoke-static {v0}, LED;->a(LmH;)LED;

    move-result-object v3

    iget-object v0, p0, LoH;->f:LnH;

    .line 39
    invoke-static {v0}, LFD;->a(LnH;)LFD;

    move-result-object v4

    iget-object v0, p0, LoH;->g:LkH;

    .line 40
    invoke-static {v0}, LCD;->a(LkH;)LCD;

    move-result-object v5

    iget-object p0, p0, LoH;->h:LlH;

    .line 41
    invoke-static {p0}, LDD;->a(LlH;)LDD;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LGD;-><init>(Ljava/lang/Long;LDE;LED;LFD;LCD;LDD;)V

    return-object v7
.end method

.method public static a([B)LGD;
    .locals 1

    .line 33
    :try_start_0
    new-instance v0, LoH;

    invoke-direct {v0}, LoH;-><init>()V

    invoke-static {v0, p0}, LZG;->a(LZG;[B)LZG;

    check-cast v0, LoH;

    invoke-static {v0}, LGD;->a(LoH;)LGD;

    move-result-object p0
    :try_end_0
    .catch LYG; {:try_start_0 .. :try_end_0} :catch_1
    .catch LXE; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 34
    new-instance v0, LYE;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    .line 35
    new-instance v0, LYE;

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 21
    iget-wide v0, p0, LGD;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 22
    invoke-virtual {p0}, LGD;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-wide v1, p0, LGD;->d:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-object v1, p0, LGD;->e:LDE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    invoke-virtual {p0}, LGD;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 26
    iget-object v0, p0, LGD;->f:LED;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 27
    :cond_1
    invoke-virtual {p0}, LGD;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 28
    iget-object v0, p0, LGD;->g:LFD;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 29
    :cond_2
    iget-object v0, p0, LGD;->h:LCD;

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 30
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 31
    :cond_3
    iget-object v0, p0, LGD;->i:LDD;

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 32
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    return v1
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ClientDowncall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LGD;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-wide v0, p0, LGD;->d:J

    .line 5
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LGD;->e:LDE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 8
    invoke-virtual {p0}, LGD;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, LGD;->f:LED;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 11
    :cond_1
    invoke-virtual {p0}, LGD;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " stop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v0, p0, LGD;->g:LFD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 14
    :cond_2
    iget-object v0, p0, LGD;->h:LCD;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " ack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p0, LGD;->h:LCD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 17
    :cond_3
    iget-object v0, p0, LGD;->i:LDD;

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registrations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v0, p0, LGD;->i:LDD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_4
    const/16 v0, 0x3e

    .line 20
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LGD;->c:J

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
    iget-wide v0, p0, LGD;->c:J

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
    iget-wide v0, p0, LGD;->c:J

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
    instance-of v1, p1, LGD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LGD;

    .line 3
    iget-wide v3, p0, LGD;->c:J

    iget-wide v5, p1, LGD;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 4
    invoke-virtual {p0}, LGD;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, LGD;->d:J

    iget-wide v5, p1, LGD;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    :cond_2
    iget-object v1, p0, LGD;->e:LDE;

    iget-object v3, p1, LGD;->e:LDE;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {p0}, LGD;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LGD;->f:LED;

    iget-object v3, p1, LGD;->f:LED;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    :cond_3
    invoke-virtual {p0}, LGD;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LGD;->g:LFD;

    iget-object v3, p1, LGD;->g:LFD;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, LGD;->h:LCD;

    iget-object v3, p1, LGD;->h:LCD;

    .line 8
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LGD;->i:LDD;

    iget-object p1, p1, LGD;->i:LDD;

    .line 9
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
