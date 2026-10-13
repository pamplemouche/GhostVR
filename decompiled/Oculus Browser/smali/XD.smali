.class public final LXD;
.super LZE;
.source "PG"


# static fields
.field public static final f:LXD;


# instance fields
.field public final c:J

.field public final d:LPE;

.field public final e:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LXD;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, LXD;-><init>(LPE;Ljava/lang/Long;)V

    sput-object v0, LXD;->f:LXD;

    return-void
.end method

.method public constructor <init>(LPE;Ljava/lang/Long;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-object p1, p0, LXD;->d:LPE;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, LPE;->y:LPE;

    iput-object p1, p0, LXD;->d:LPE;

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, LXD;->e:J

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, LXD;->e:J

    :goto_1
    int-to-long p1, v0

    .line 6
    iput-wide p1, p0, LXD;->c:J

    return-void
.end method

.method public static a(LLH;)LXD;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    new-instance v0, LXD;

    iget-object v1, p0, LLH;->c:[B

    invoke-static {v1}, LPE;->a([B)LPE;

    move-result-object v1

    iget-object p0, p0, LLH;->d:Ljava/lang/Long;

    invoke-direct {v0, v1, p0}, LXD;-><init>(LPE;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget-wide v0, p0, LXD;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 2
    invoke-virtual {p0}, LXD;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, LXD;->d:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-virtual {p0}, LXD;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-wide v1, p0, LXD;->e:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public a(LbF;)V
    .locals 3

    .line 6
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<PersistentTiclState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, LXD;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, LXD;->d:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 10
    :cond_0
    invoke-virtual {p0}, LXD;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " last_message_send_time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-wide v0, p0, LXD;->e:J

    .line 13
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x3e

    .line 14
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LXD;->c:J

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
    iget-wide v0, p0, LXD;->c:J

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

.method public e()LLH;
    .locals 3

    .line 1
    new-instance v0, LLH;

    invoke-direct {v0}, LLH;-><init>()V

    .line 2
    invoke-virtual {p0}, LXD;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, LXD;->d:LPE;

    .line 3
    iget-object v1, v1, LPE;->w:[B

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 4
    :goto_0
    iput-object v1, v0, LLH;->c:[B

    .line 5
    invoke-virtual {p0}, LXD;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, LXD;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_1
    iput-object v2, v0, LLH;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LXD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LXD;

    .line 3
    iget-wide v3, p0, LXD;->c:J

    iget-wide v5, p1, LXD;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, LXD;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LXD;->d:LPE;

    iget-object v3, p1, LXD;->d:LPE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0}, LXD;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, p0, LXD;->e:J

    iget-wide v5, p1, LXD;->e:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method
