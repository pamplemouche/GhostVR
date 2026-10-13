.class public final LaE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:I

.field public final e:LPE;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;LPE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LaE;->d:I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, LaE;->d:I

    :goto_0
    const-string p1, "client_name"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;LPE;)V

    .line 6
    iput-object p2, p0, LaE;->e:LPE;

    int-to-long p1, v0

    .line 7
    iput-wide p1, p0, LaE;->c:J

    return-void
.end method

.method public static a(LNH;)LaE;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    new-instance v0, LaE;

    iget-object v1, p0, LNH;->c:Ljava/lang/Integer;

    iget-object p0, p0, LNH;->d:[B

    .line 14
    invoke-static {p0}, LPE;->a([B)LPE;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LaE;-><init>(Ljava/lang/Integer;LPE;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 9
    iget-wide v0, p0, LaE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 10
    invoke-virtual {p0}, LaE;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, LaE;->d:I

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, LaE;->e:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ApplicationClientIdP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LaE;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v0, p0, LaE;->d:I

    .line 5
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LaE;->e:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    const/16 v0, 0x3e

    .line 8
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LaE;->c:J

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
    instance-of v1, p1, LaE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LaE;

    .line 3
    iget-wide v3, p0, LaE;->c:J

    iget-wide v5, p1, LaE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, LaE;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LaE;->d:I

    iget v3, p1, LaE;->d:I

    if-ne v1, v3, :cond_3

    :cond_2
    iget-object v1, p0, LaE;->e:LPE;

    iget-object p1, p1, LaE;->e:LPE;

    .line 5
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
