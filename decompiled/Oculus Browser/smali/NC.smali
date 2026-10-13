.class public abstract LNC;
.super LSE;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LZB;

.field public final c:LdC;

.field public final d:I

.field public final e:I

.field public final f:LaF;

.field public final g:LZC;

.field public final h:LVE;

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LdC;LZB;LaF;LZC;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, LSE;-><init>()V

    .line 2
    iput-object p5, p0, LNC;->g:LZC;

    const/4 p5, 0x0

    if-eqz p1, :cond_3

    .line 3
    iput-object p1, p0, LNC;->a:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 4
    iput-object p3, p0, LNC;->b:LZB;

    if-eqz p2, :cond_1

    .line 5
    iput-object p2, p0, LNC;->c:LdC;

    if-eqz p4, :cond_0

    .line 6
    iput-object p4, p0, LNC;->f:LaF;

    .line 7
    iput p6, p0, LNC;->d:I

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, LNC;->i:Z

    .line 9
    iput p7, p0, LNC;->e:I

    .line 10
    new-instance p2, LMC;

    invoke-direct {p2, p0, p1}, LMC;-><init>(LNC;Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, LNC;->h:LVE;

    return-void

    .line 12
    :cond_0
    throw p5

    .line 13
    :cond_1
    throw p5

    .line 14
    :cond_2
    throw p5

    .line 15
    :cond_3
    throw p5
.end method

.method public constructor <init>(Ljava/lang/String;LdC;LZB;LaF;LZC;LIE;)V
    .locals 8

    .line 16
    iget v6, p6, LIE;->d:I

    .line 17
    iget v7, p6, LIE;->e:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 18
    invoke-direct/range {v0 .. v7}, LNC;-><init>(Ljava/lang/String;LdC;LZB;LaF;LZC;II)V

    .line 19
    iget-boolean p1, p6, LIE;->f:Z

    .line 20
    iput-boolean p1, p0, LNC;->i:Z

    return-void
.end method


# virtual methods
.method public a()LIE;
    .locals 5

    .line 32
    iget-object v0, p0, LNC;->g:LZC;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_0
    iget v1, v0, LQE;->c:I

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 35
    iget-boolean v0, v0, LQE;->d:Z

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 37
    new-instance v2, LVD;

    invoke-direct {v2, v1, v0}, LVD;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    move-object v0, v2

    .line 38
    :goto_0
    iget v1, p0, LNC;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, LNC;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, LNC;->i:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 39
    new-instance v4, LIE;

    invoke-direct {v4, v1, v2, v3, v0}, LIE;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;LVD;)V

    return-object v4
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<RecurringTask: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, LNC;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, ", initialDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v0, p0, LNC;->d:I

    .line 6
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, ", timeoutDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v0, p0, LNC;->e:I

    .line 9
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, ", isScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v0, p0, LNC;->i:Z

    .line 12
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 7

    .line 14
    iget-object v0, p0, LNC;->c:LdC;

    invoke-interface {v0}, LdC;->b()Z

    move-result v0

    invoke-static {v0}, LWE;->b(Z)V

    .line 15
    iget-boolean v0, p0, LNC;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 16
    iget-object p1, p0, LNC;->b:LZB;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    check-cast p1, LgC;

    const-string p2, "[%s] Not scheduling task that is already scheduled"

    invoke-virtual {p1, p2, v0}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, LNC;->g:LZC;

    if-eqz p1, :cond_3

    .line 18
    iget v3, p0, LNC;->e:I

    .line 19
    iget-boolean v4, p1, LQE;->d:Z

    if-eqz v4, :cond_1

    .line 20
    iget-object v4, p1, LQE;->e:Ljava/util/Random;

    iget v5, p1, LQE;->c:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 21
    iget v5, p1, LQE;->c:I

    iget v6, p1, LQE;->b:I

    if-gt v5, v6, :cond_2

    mul-int/lit8 v5, v5, 0x2

    .line 22
    iput v5, p1, LQE;->c:I

    if-le v5, v6, :cond_2

    .line 23
    iput v6, p1, LQE;->c:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 24
    :cond_2
    :goto_0
    iput-boolean v2, p1, LQE;->d:Z

    add-int/2addr v3, v4

    goto :goto_1

    .line 25
    :cond_3
    iget p1, p0, LNC;->e:I

    iget-object v3, p0, LNC;->f:LaF;

    iget v4, p0, LNC;->d:I

    invoke-virtual {v3, v4}, LaF;->a(I)I

    move-result v3

    add-int/2addr v3, p1

    goto :goto_1

    .line 26
    :cond_4
    iget-object p1, p0, LNC;->f:LaF;

    iget v3, p0, LNC;->d:I

    invoke-virtual {p1, v3}, LaF;->a(I)I

    move-result v3

    .line 27
    :goto_1
    iget-object p1, p0, LNC;->b:LZB;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    iget-object p2, p0, LNC;->a:Ljava/lang/String;

    aput-object p2, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    const/4 p2, 0x3

    iget-object v0, p0, LNC;->c:LdC;

    .line 28
    invoke-interface {v0}, LdC;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, p2

    .line 29
    check-cast p1, LgC;

    const-string p2, "[%s] Scheduling %s with a delay %s, Now = %s"

    invoke-virtual {p1, p2, v4}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, LNC;->c:LdC;

    iget-object p2, p0, LNC;->h:LVE;

    invoke-interface {p1, v3, p2}, LdC;->a(ILjava/lang/Runnable;)V

    .line 31
    iput-boolean v2, p0, LNC;->i:Z

    return-void
.end method

.method public abstract b()Z
.end method
