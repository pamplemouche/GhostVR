.class public final LWD;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LXD;

.field public final e:LPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LWD;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, LWD;-><init>(LXD;LPE;)V

    return-void
.end method

.method public constructor <init>(LXD;LPE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-object p1, p0, LWD;->d:LXD;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, LXD;->f:LXD;

    iput-object p1, p0, LWD;->d:LXD;

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 4
    iput-object p2, p0, LWD;->e:LPE;

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, LPE;->y:LPE;

    iput-object p1, p0, LWD;->e:LPE;

    :goto_1
    int-to-long p1, v0

    .line 6
    iput-wide p1, p0, LWD;->c:J

    return-void
.end method

.method public static a([B)LWD;
    .locals 2

    .line 14
    :try_start_0
    new-instance v0, LKH;

    invoke-direct {v0}, LKH;-><init>()V

    invoke-static {v0, p0}, LZG;->a(LZG;[B)LZG;

    .line 15
    new-instance p0, LWD;

    iget-object v1, v0, LKH;->c:LLH;

    invoke-static {v1}, LXD;->a(LLH;)LXD;

    move-result-object v1

    iget-object v0, v0, LKH;->d:[B

    .line 16
    invoke-static {v0}, LPE;->a([B)LPE;

    move-result-object v0

    invoke-direct {p0, v1, v0}, LWD;-><init>(LXD;LPE;)V
    :try_end_0
    .catch LYG; {:try_start_0 .. :try_end_0} :catch_1
    .catch LXE; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 17
    new-instance v0, LYE;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    .line 18
    new-instance v0, LYE;

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 9
    iget-wide v0, p0, LWD;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 10
    invoke-virtual {p0}, LWD;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, LWD;->d:LXD;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_0
    invoke-virtual {p0}, LWD;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, LWD;->e:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<PersistentStateBlob:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LWD;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " ticl_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, LWD;->d:LXD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 5
    :cond_0
    invoke-virtual {p0}, LWD;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " authentication_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LWD;->e:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_1
    const/16 v0, 0x3e

    .line 8
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LWD;->c:J

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
    iget-wide v0, p0, LWD;->c:J

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
    instance-of v1, p1, LWD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LWD;

    .line 3
    iget-wide v3, p0, LWD;->c:J

    iget-wide v5, p1, LWD;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, LWD;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LWD;->d:LXD;

    iget-object v3, p1, LWD;->d:LXD;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0}, LWD;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LWD;->e:LPE;

    iget-object p1, p1, LWD;->e:LPE;

    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method
