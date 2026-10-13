.class public final LHE;
.super LZE;
.source "PG"


# static fields
.field public static final h:LHE;


# instance fields
.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:LFE;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LHE;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, LHE;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;LFE;)V

    sput-object v0, LHE;->h:LHE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;LFE;)V
    .locals 3

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LHE;->d:I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, LHE;->d:I

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, LHE;->e:J

    goto :goto_1

    .line 5
    :cond_1
    iput-wide v1, p0, LHE;->e:J

    :goto_1
    if-eqz p3, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 6
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, LHE;->f:J

    goto :goto_2

    .line 7
    :cond_2
    iput-wide v1, p0, LHE;->f:J

    :goto_2
    if-eqz p4, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 8
    iput-object p4, p0, LHE;->g:LFE;

    goto :goto_3

    .line 9
    :cond_3
    sget-object p1, LFE;->j:LFE;

    iput-object p1, p0, LHE;->g:LFE;

    :goto_3
    int-to-long p1, v0

    .line 10
    iput-wide p1, p0, LHE;->c:J

    return-void
.end method

.method public static a(LDH;)LHE;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    new-instance v0, LHE;

    iget-object v1, p0, LDH;->c:Ljava/lang/Integer;

    iget-object v2, p0, LDH;->d:Ljava/lang/Long;

    iget-object v3, p0, LDH;->e:Ljava/lang/Long;

    iget-object p0, p0, LDH;->f:LBH;

    .line 28
    invoke-static {p0}, LFE;->a(LBH;)LFE;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, LHE;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;LFE;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 18
    iget-wide v0, p0, LHE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 19
    invoke-virtual {p0}, LHE;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v1, p0, LHE;->d:I

    add-int/2addr v0, v1

    .line 21
    :cond_0
    invoke-virtual {p0}, LHE;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-wide v1, p0, LHE;->e:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_1
    invoke-virtual {p0}, LHE;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-wide v1, p0, LHE;->f:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_2
    invoke-virtual {p0}, LHE;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v1, p0, LHE;->g:LFE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ProtocolHandlerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LHE;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " message_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v0, p0, LHE;->d:I

    .line 5
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {p0}, LHE;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " last_known_server_time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-wide v0, p0, LHE;->e:J

    .line 9
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {p0}, LHE;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " next_message_send_time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-wide v0, p0, LHE;->f:J

    .line 13
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    invoke-virtual {p0}, LHE;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " batcher_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p0, LHE;->g:LFE;

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
    iget-wide v0, p0, LHE;->c:J

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
    iget-wide v0, p0, LHE;->c:J

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
    iget-wide v0, p0, LHE;->c:J

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
    instance-of v1, p1, LHE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LHE;

    .line 3
    iget-wide v3, p0, LHE;->c:J

    iget-wide v5, p1, LHE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 4
    invoke-virtual {p0}, LHE;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LHE;->d:I

    iget v3, p1, LHE;->d:I

    if-ne v1, v3, :cond_5

    .line 5
    :cond_2
    invoke-virtual {p0}, LHE;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, LHE;->e:J

    iget-wide v5, p1, LHE;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 6
    :cond_3
    invoke-virtual {p0}, LHE;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, p0, LHE;->f:J

    iget-wide v5, p1, LHE;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 7
    :cond_4
    invoke-virtual {p0}, LHE;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, LHE;->g:LFE;

    iget-object p1, p1, LHE;->g:LFE;

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
    iget-wide v0, p0, LHE;->c:J

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
