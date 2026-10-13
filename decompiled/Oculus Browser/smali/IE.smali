.class public final LIE;
.super LZE;
.source "PG"


# static fields
.field public static final h:LIE;


# instance fields
.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:LVD;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LIE;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, LIE;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;LVD;)V

    sput-object v0, LIE;->h:LIE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;LVD;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LIE;->d:I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, LIE;->d:I

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LIE;->e:I

    goto :goto_1

    .line 5
    :cond_1
    iput v0, p0, LIE;->e:I

    :goto_1
    if-eqz p3, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 6
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, LIE;->f:Z

    goto :goto_2

    .line 7
    :cond_2
    iput-boolean v0, p0, LIE;->f:Z

    :goto_2
    if-eqz p4, :cond_3

    or-int/lit8 v1, v1, 0x8

    .line 8
    iput-object p4, p0, LIE;->g:LVD;

    goto :goto_3

    .line 9
    :cond_3
    sget-object p1, LVD;->f:LVD;

    iput-object p1, p0, LIE;->g:LVD;

    :goto_3
    int-to-long p1, v1

    .line 10
    iput-wide p1, p0, LIE;->c:J

    return-void
.end method

.method public static a(LEH;)LIE;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    new-instance v0, LIE;

    iget-object v1, p0, LEH;->c:Ljava/lang/Integer;

    iget-object v2, p0, LEH;->d:Ljava/lang/Integer;

    iget-object v3, p0, LEH;->e:Ljava/lang/Boolean;

    iget-object p0, p0, LEH;->f:LJH;

    .line 28
    invoke-static {p0}, LVD;->a(LJH;)LVD;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, LIE;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;LVD;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 18
    iget-wide v0, p0, LIE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 19
    invoke-virtual {p0}, LIE;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v1, p0, LIE;->d:I

    add-int/2addr v0, v1

    .line 21
    :cond_0
    invoke-virtual {p0}, LIE;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget v1, p0, LIE;->e:I

    add-int/2addr v0, v1

    .line 23
    :cond_1
    invoke-virtual {p0}, LIE;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-boolean v1, p0, LIE;->f:Z

    invoke-static {v1}, LZE;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_2
    invoke-virtual {p0}, LIE;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v1, p0, LIE;->g:LVD;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<RecurringTaskState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LIE;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " initial_delay_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v0, p0, LIE;->d:I

    .line 5
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {p0}, LIE;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " timeout_delay_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v0, p0, LIE;->e:I

    .line 9
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {p0}, LIE;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " scheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-boolean v0, p0, LIE;->f:Z

    .line 13
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    invoke-virtual {p0}, LIE;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " backoff_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p0, LIE;->g:LVD;

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
    iget-wide v0, p0, LIE;->c:J

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

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LIE;->c:J

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

.method public e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LIE;->c:J

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
    instance-of v1, p1, LIE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LIE;

    .line 3
    iget-wide v3, p0, LIE;->c:J

    iget-wide v5, p1, LIE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 4
    invoke-virtual {p0}, LIE;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LIE;->d:I

    iget v3, p1, LIE;->d:I

    if-ne v1, v3, :cond_5

    .line 5
    :cond_2
    invoke-virtual {p0}, LIE;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, LIE;->e:I

    iget v3, p1, LIE;->e:I

    if-ne v1, v3, :cond_5

    .line 6
    :cond_3
    invoke-virtual {p0}, LIE;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, LIE;->f:Z

    iget-boolean v3, p1, LIE;->f:Z

    if-ne v1, v3, :cond_5

    .line 7
    :cond_4
    invoke-virtual {p0}, LIE;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, LIE;->g:LVD;

    iget-object p1, p1, LIE;->g:LVD;

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
    iget-wide v0, p0, LIE;->c:J

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

.method public g()LEH;
    .locals 5

    .line 1
    new-instance v0, LEH;

    invoke-direct {v0}, LEH;-><init>()V

    .line 2
    invoke-virtual {p0}, LIE;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, LIE;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, LEH;->c:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, LIE;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, LIE;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iput-object v1, v0, LEH;->d:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p0}, LIE;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LIE;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    iput-object v1, v0, LEH;->e:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p0}, LIE;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, LIE;->g:LVD;

    if-eqz v1, :cond_5

    .line 6
    new-instance v3, LJH;

    invoke-direct {v3}, LJH;-><init>()V

    .line 7
    invoke-virtual {v1}, LVD;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v1, LVD;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v2

    :goto_3
    iput-object v4, v3, LJH;->c:Ljava/lang/Integer;

    .line 8
    invoke-virtual {v1}, LVD;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v1, v1, LVD;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_4
    iput-object v2, v3, LJH;->d:Ljava/lang/Boolean;

    move-object v2, v3

    goto :goto_4

    .line 9
    :cond_5
    throw v2

    .line 10
    :cond_6
    :goto_4
    iput-object v2, v0, LEH;->f:LJH;

    return-object v0
.end method
