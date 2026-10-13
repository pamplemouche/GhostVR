.class public final LBD;
.super LZE;
.source "PG"


# instance fields
.field public final c:LAD;

.field public final d:LPE;


# direct methods
.method public constructor <init>(LAD;LPE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "state"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LBD;->c:LAD;

    const-string p1, "digest"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, LBD;->d:LPE;

    return-void
.end method

.method public static a([B)LBD;
    .locals 2

    .line 9
    :try_start_0
    new-instance v0, LjH;

    invoke-direct {v0}, LjH;-><init>()V

    invoke-static {v0, p0}, LZG;->a(LZG;[B)LZG;

    .line 10
    new-instance p0, LBD;

    iget-object v1, v0, LjH;->c:LiH;

    invoke-static {v1}, LAD;->a(LiH;)LAD;

    move-result-object v1

    iget-object v0, v0, LjH;->d:[B

    .line 11
    invoke-static {v0}, LPE;->a([B)LPE;

    move-result-object v0

    invoke-direct {p0, v1, v0}, LBD;-><init>(LAD;LPE;)V
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
    iget-object v0, p0, LBD;->c:LAD;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, LBD;->d:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<AndroidTiclStateWithDigest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LBD;->c:LAD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " digest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, LBD;->d:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    const/16 v0, 0x3e

    .line 6
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()[B
    .locals 2

    .line 1
    new-instance v0, LjH;

    invoke-direct {v0}, LjH;-><init>()V

    .line 2
    iget-object v1, p0, LBD;->c:LAD;

    invoke-virtual {v1}, LAD;->c()LiH;

    move-result-object v1

    iput-object v1, v0, LjH;->c:LiH;

    .line 3
    iget-object v1, p0, LBD;->d:LPE;

    .line 4
    iget-object v1, v1, LPE;->w:[B

    .line 5
    iput-object v1, v0, LjH;->d:[B

    .line 6
    invoke-static {v0}, LZG;->a(LZG;)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LBD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LBD;

    .line 3
    iget-object v1, p0, LBD;->c:LAD;

    iget-object v3, p1, LBD;->c:LAD;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LBD;->d:LPE;

    iget-object p1, p1, LBD;->d:LPE;

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
