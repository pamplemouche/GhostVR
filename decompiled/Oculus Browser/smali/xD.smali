.class public final LxD;
.super LZE;
.source "PG"


# instance fields
.field public final c:LDE;

.field public final d:LPE;


# direct methods
.method public constructor <init>(LDE;LPE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "version"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LxD;->c:LDE;

    const-string p1, "message"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, LxD;->d:LPE;

    return-void
.end method

.method public static a([B)LxD;
    .locals 2

    .line 9
    :try_start_0
    new-instance v0, LfH;

    invoke-direct {v0}, LfH;-><init>()V

    invoke-static {v0, p0}, LZG;->a(LZG;[B)LZG;

    .line 10
    new-instance p0, LxD;

    iget-object v1, v0, LfH;->c:LqI;

    invoke-static {v1}, LDE;->a(LqI;)LDE;

    move-result-object v1

    iget-object v0, v0, LfH;->d:[B

    .line 11
    invoke-static {v0}, LPE;->a([B)LPE;

    move-result-object v0

    invoke-direct {p0, v1, v0}, LxD;-><init>(LDE;LPE;)V
    :try_end_0
    .catch LYG; {:try_start_0 .. :try_end_0} :catch_1
    .catch LXE; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    new-instance v0, LYE;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    .line 13
    new-instance v0, LYE;

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 7
    iget-object v0, p0, LxD;->c:LDE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, LxD;->d:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<AndroidNetworkSendRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LxD;->c:LDE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, LxD;->d:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    const/16 v0, 0x3e

    .line 6
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LxD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LxD;

    .line 3
    iget-object v1, p0, LxD;->c:LDE;

    iget-object v3, p1, LxD;->c:LDE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LxD;->d:LPE;

    iget-object p1, p1, LxD;->d:LPE;

    .line 4
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
